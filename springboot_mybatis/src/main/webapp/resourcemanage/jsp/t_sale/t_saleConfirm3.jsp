<%@ page language="java" contentType="text/html;charset=GBK"
	pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp"%>
<%@include file="../../sessionValidate.jsp"%>
<%@ page import="java.util.*"%>
<%@ page import="com.jxc.domain.*"%>
<%@ page import="com.jxc.service.*"%>
<%@ page import="com.jxc.dao.impl.*"%>
<%@ page import="com.common.db.DaoConfig" %>
<%@ page import="com.ibatis.sqlmap.client.SqlMapClient" %>

<% request.setCharacterEncoding("GBK");%>
<%! //处理字符串的方法：
  public String codeString(String s)
    { String str=s;
       try{byte b[]=str.getBytes("iso-8859-1");
           str=new String(b);
           return str;
         }
      catch(Exception e)
         { 
		  return str;
         }
    }
%>
<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_sale信息列表页</title>
<link rel="stylesheet" href="<s:url value='/css/style.css'/>"
	type="text/css">
<script language="JavaScript" src="<s:url value='/js/myAjax.js'/>"></script>
</head>
<script>
//排序使用
var domok=document.all||document.getElementById
if (domok)
document.write('<SCRIPT SRC="<s:url value='/js/sorttable.js'/>" ><\/SCRIPT>')
</script>

<script type="text/javascript">


</script>
<body onload="slectCustomer()" class="mainBody"
	onLoad='if (domok) initTable("table0")' leftmargin="0" topmargin="0"
	marginwidth="0" marginheight="0" scroll=yes>

<%
double saleamount = 0.00;
double costs = 0.00;
double profits = 0.00;
boolean flag = false;
int flag1 = 0, flag2 = 0, flag3 = 0, flag4 = 0;
int retflag = 0;

try{
String temp = request.getParameter("customerid");
temp = codeString(temp);


out.println( temp );

T_products_sub t_products_sub = new T_products_sub();
T_buy t_buy = new T_buy();
T_sale t_sale = new T_sale();
T_trade t_trade = new T_trade();

long tradeno = System.currentTimeMillis();

if(temp!=null&&!temp.equals("")){
	   String[] array = temp.split(";");    
	   out.println( array[0] );
	   out.println( array[1] );  
	   
	    Map map = (HashMap)session.getAttribute("trade");
		if(map!=null){
		    Iterator it = map.values().iterator();
			T_sale vo =null;
			TradeDaoImpl dao = new TradeDaoImpl();
			SqlMapClient conn = DaoConfig.getInstance();
			
			//事务开始
			conn.startTransaction();
			
			while(it.hasNext()){
				System.out.println("------------------- 出库 start while------------------------");
				vo  = (T_sale)it.next();
				//计算成本，利润，应收款
				saleamount = saleamount + vo.getSalenum() * vo.getSaleprice();
				costs = costs + vo.getSalenum() * vo.getPrice();
				out.println( saleamount );
				//如果本批库存小于销售量，则不能出库，出库失败。
				if(vo.getNum()<vo.getSalenum()){
				     flag = false;
					 break;
				}		
				//update  t_products_sub表  货物库存表
				t_products_sub.setNum(vo.getSalenum());
				t_products_sub.setId((int)vo.getProductid());
				//flag1 = dao.updateT_products_sub(t_products_sub);
				flag1 = dao.updateT_products_sub(conn, t_products_sub);
				System.out.println("-------------出库 flag1="+flag1);
				//update t_buy 表记录  进货批次表
				t_buy.setId((int)vo.getId());
				t_buy.setNum(vo.getSalenum());
				t_buy.setProductid((int)vo.getProductid());
				//dao.updateT_buy(t_buy);
				flag2 = dao.updateT_buy(conn, t_buy);
				System.out.println("-------------出库 flag2="+flag2);
									
				//插入  t_sale 表  memo2 字段是 tradeno信息
                vo.setTradeno(String.valueOf(tradeno));
				vo.setPici(String.valueOf(vo.getId()));	
				vo.setCustomerid(Integer.parseInt(array[0]));			
				//dao.addT_sale(vo);
				flag3 = dao.addT_sale(conn, vo);
				System.out.println("-------------出库 flag3="+flag3);
				
				if(flag1 ==1 && flag2==1 && flag3 != 0 ){
					flag =true;
				}else{
				 	flag = false;
				    break;
				}
				System.out.println("------------------- 出库 end while------------------------");
			} //end while
			if(flag==true){
				//插入新表 t_trade (待建)，记录每次出库所包含的货物信息  tradeno和t_sale表的 tradeno 字段关联
				t_trade.setTradeno(String.valueOf(tradeno));
				t_trade.setCustomerid(Integer.parseInt(array[0]));
				t_trade.setUser(vo.getUser());	
				t_trade.setCosts(costs);
				t_trade.setSaleamount(saleamount);
				t_trade.setProfits(saleamount-costs);							
				//dao.addT_trade(t_trade);
				flag4 = dao.addT_trade(conn, t_trade);
				System.out.println("-------------出库 flag4="+flag4);
				
				if(flag4 != 0){
					//如果全部成功，才提交事务
					conn.commitTransaction();					
					//如果前面出库正确，就删除内存中该订单，因为已经更新到数据库
					session.removeAttribute("trade");
					retflag =1;
				}
			} 
			
			//事务结束
			conn.endTransaction();

		} // end if map!=null
 
   } //end if

}catch(Exception e){
	System.out.println(" ----------t_saleConfirm.jsp mess = "+e);
}
response.sendRedirect(bathPath+"jsp/t_sale/t_saleMessage.jsp?mess="+retflag);

%>

</body>
</html>