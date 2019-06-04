<%@ page language="java" contentType="text/html;charset=GBK"
	pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@page import="java.sql.Timestamp"%>

<%@include file="../../taglibs.jsp"%>
<%@include file="../../sessionValidate.jsp"%>
<%@ page import="java.util.*"%>
<%@ page import="com.jxc.domain.*"%>
<%@ page import="com.jxc.service.*"%>
<%@ page import="com.jxc.dao.impl.*"%>
<%@ page import="com.common.db.DaoConfig" %>
<%@ page import="com.ibatis.sqlmap.client.SqlMapClient" %>
<%@page import="com.common.utils.BeanUtils"%>
<%@ page import="java.text.*" %>
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
    
    public String df(double d){
       String str= String.valueOf(d);
       try{
		        if( str.contains(".") ){
		            str = str.substring(0, str.indexOf(".")+3);
		        }  
		        return str;
         }
      catch(Exception e)
         { 
		  return str;
         }
     
    }
	public String getLastChar(String str){	
		return str!=""?str.substring( str.length()-1, str.length()):str;
	}
	
    public String format(Object d){
        String str= String.valueOf(d);
        try{
 		        while( str.contains(".") ){
 		        	System.out.println("----1111111---"+str);
  		        	if(  "0".equals( getLastChar(str)) ){
 		        		System.out.println("----22222---");
 		        		str = str.substring( 0, str.length()-1 );
 		        		if( ".".equals( getLastChar(str)) ){		
 		        			str = str.substring(0, str.length()-1);
 		        		}
 		        	}else{
 		        		break;
 		        	}
 		        		
 		        }
 		        
 		        return str;
          }
       catch(Exception e)
          { 
 		  return str;
          }
      
     } 
%>
<%
//String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<% 
//String[] temp = request.getParameter("customerid").split(";"); 
//if(temp[1].contains("(")&&temp[1].contains(")")){
//	temp[1] = temp[1].substring(0,temp[1].indexOf("("));
//	
//}

java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
Timestamp time = new Timestamp(System.currentTimeMillis());
double totalamount = 0.00;
TradeDaoImpl dao = new TradeDaoImpl();
String customername = (String )dao.findCustomerName( request.getParameter("customerid") );
NumberFormat numberFormat = NumberFormat.getNumberInstance(); 
DecimalFormat decimalFormat = new DecimalFormat("######0.00");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title></title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
</head>

<script  language="javascript">
//使用说明：只要在在信息页面包含本页面即可。如；
function   fprint()
{  try{
		   demo.style.display=(demo.style.display == "none")?"block":"none";
		   window.print();
		   demo.style.display = "block";
	  }catch(e){ alert("请注意你的打印机：\n\n.可能打印机还没准备好；\n.可能打印机出现了故障。");} 
}
</script>
<body  class="mainBody" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>

<table  id="table0"  width="366"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="5" width="99%" valign="middle">
       <table  border="0" width="100%" topmargin="-50">
         <tr>
            <td width="230" height="17" align="left" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;<%= customername %></td>
            <td width="130"  height="0"   align="left" valign="middle"><%= date.getYear() + 1900 %>&nbsp;&nbsp;&nbsp;&nbsp;<%= date.getMonth() + 1 %>&nbsp;&nbsp;&nbsp;&nbsp;<%= date.getDate() %>&nbsp;</td>
        </tr>
      </table>
   </td 
</tr>
 <tr>
  <td colspan="5" height="22">&nbsp;</td>
 </tr>
 
<%

    Map map2 = (HashMap)session.getAttribute("tuihuo");
	if(map2!=null){
	    Iterator it = map2.values().iterator();
		T_buy vo = new T_buy();
		double tempdate = 0;
		String stemp ="";
		int countnum =0;
		while(it.hasNext()){
			countnum ++;
			vo  = (T_buy)it.next();
			totalamount = totalamount + vo.getNum()*vo.getSaleprice();
			%>
			<tr> 
		     <td height="17" width="140" align="left" valign="middle">
		     <%= vo.getName()%><%= vo.getCreatedate().getYear()+1970 %>-<%= vo.getCreatedate().getMonth()+1 %>-<%= vo.getCreatedate().getDate() %>
		     <% if(vo.getName().length()>=8){
 	             //out.println("---"+countnum); 
	            countnum++;
			 } %>
		     </td>
		     <td height="17" width="50" align="left" valign="middle"><%= vo.getType() %></td>
		     <td height="17" width="50" align="left" valign="middle">-<%= format( vo.getNum()) %></td>
		     <td height="17" width="80" align="left" valign="middle"><%= decimalFormat.format( vo.getSaleprice() )%></td>		     
		     <td height="17" width="80" align="left" valign="middle">
		      -<%= decimalFormat.format(vo.getNum()*vo.getSaleprice() )%>
		     </td>
		    </tr>  
			<%		
		}
		while(countnum<8){
			countnum++;
			%>
		  <tr> 
		     <td height="17" width="140" align="left" valign="middle">&nbsp;</td>
		     <td height="17" width="50" align="left" valign="middle">&nbsp;</td>
		     <td height="17" width="50" align="left" valign="middle">&nbsp;</td>
		     <td height="17" width="80" align="left" valign="middle">&nbsp;</td>		     
		     <td height="17" width="80" align="left" valign="middle">&nbsp;</td>
		    </tr>  
		<%}
	}
%>

 <tr>
		     <td height="16" width="140" align="left" valign="middle">&nbsp;</td>
		     <td height="16" width="50" align="center" valign="middle">&nbsp;</td>
		     <td height="16" width="50" align="center" valign="middle">&nbsp;</td>
		     <td height="16" width="80" align="center" valign="middle">&nbsp;</td>		     
		     <td height="16" width="80" align="center" valign="middle">&nbsp;-<%= decimalFormat.format( totalamount )%>&nbsp;</td>
 </tr>
</table>

<div id=demo style="display:block" align="center">
<input  type="button"  name="dy"  value="打印退货单"  onclick="fprint()"  > &nbsp;&nbsp;
</div>

</body>
</html>

<%
double saleamount = 0.00;
double costs = 0.00;
double profits = 0.00;
boolean flag = false;
int flag1 = 0, flag2 = 0, flag3 = 0, flag4 = 0;
int retflag = 0;
SqlMapClient conn = null;
try{	
	//temp = codeString("-------"+temp);
	//out.println( "-------"+customerid+";"+ pid+";"+ productid+";"+ user+";"+ salenum+";"+ saleprice+";"+ memo+"--company="+company +";createdate="+createdate);
	
	T_products_sub t_products_sub = new T_products_sub();
	T_trade t_trade = new T_trade();
	
	conn = DaoConfig.getInstance();
	//事务开始
	conn.startTransaction();

	
    Map map = (HashMap)session.getAttribute("tuihuo");
	if(map!=null){
	    Iterator it = map.values().iterator();
		T_buy vo = new T_buy();
		double tempdate = 0;
		String stemp ="";

		while(it.hasNext()){
			vo  = (T_buy)it.next();
			//totalamount = totalamount + vo.getNum()*vo.getSaleprice();

			//1.首先更新库存t_products_sub表数量，价格不更新，
			
			System.out.println("------------------- 退货 start------------------------");
			t_products_sub.setId(vo.getProductid());
			t_products_sub.setNum(vo.getNum());
			t_products_sub.setPid(vo.getPid());
			//库存增加salenum个.但其进货价格并不改变，资产增加，应收帐减少
			t_products_sub.setPrice((float)vo.getPrice()); //此属性为计算平均价和下面计算money使用
			flag1 = dao.updateKucun(conn, t_products_sub );  //更新库存t_products_sub表,库存增加salenum个
			System.out.println("-------------退货 flag1="+flag1);
			
			//2.然后插入 t_trade表,就是为了对冲用户的应收款t_products_sub.getNum()*t_products_sub.getPrice() 元
		
			t_trade.setTradeno(vo.getMemo()); //tradeno和t_buy表关联
			t_trade.setCustomerid(vo.getCustomerid());
			t_trade.setUser((String)session.getAttribute("userName"));	
			t_trade.setCosts( 0 ); //成本0
			t_trade.setSaleamount(  - (t_products_sub.getNum() *  vo.getSaleprice() ) ); //此处为负值,标示由于退货生成的，应收款为负的
			//新的需求，不让毛利润自动减少
			//t_trade.setProfits(0);
			//恢复到老的方式，更新冲减利润，让毛利润自动减少
			t_trade.setProfits( - t_products_sub.getNum()* (vo.getSaleprice() - vo.getPrice() )  ); //利润为负值，减去退货引起的利润减少			
			
			t_trade.setMemo("tuihuo");
			t_trade.setMoney( 0 ); //已收到0
			flag2 = dao.addT_trade(conn, t_trade);
			System.out.println("-------------退货 flag2="+flag2);
			
			//3.插入t_buy表一条新的记录，像买入一样，不过状态为退货
		
			flag3 = dao.tuihuo(conn, vo );
			System.out.println("-------------退货 flag3="+flag3);
			
			//4.更新应收款
			t_trade.setMoney( - t_trade.getSaleamount()); //因为是退货，此处为负的，冲掉应收款
			t_trade.setMemo("退货");
			t_trade.setMemo2(t_trade.getTradeno());
			flag4 = dao.updateT_customerAdd(conn, t_trade);
			System.out.println("-------------退货 flag4="+flag4);
				    
			if(flag1 == 1 && flag2!=0 && flag3!=0 && flag4!=0){
				//如果全部成功，才提交事务
				conn.commitTransaction();					
				//如果前面退货正确，就删除内存中该退货记录，因为已经更新到数据库
				retflag =1;
				session.removeAttribute("tuihuo");
			}
			


			
		} // end while
	} //end if
	//事务结束

	System.out.println(" ----------retflag="+retflag );
	
	
}catch(Exception e){
	System.out.println(" ----------t_returnSave.jsp mess = "+e);
}finally{
	conn.endTransaction();
}
//response.sendRedirect(bathPath+"jsp/t_sale/t_saleReturnMessage.jsp?mess="+retflag);

%>
<script type="text/javascript">
if( <%=retflag%>==1){ 
	alert("恭喜，退货成功！");
}else{
	alert("对不起，退货失败！");
}
</script>
</body>
</html>