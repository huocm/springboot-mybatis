<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@page import="java.sql.Timestamp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="com.jxc.domain.*" %>

<% request.setCharacterEncoding("GBK");%>
<%! //�����ַ����ķ�����
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
    
%>
<%
//String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<% 
String[] temp = request.getParameter("customerid").split(";"); 
if(temp[1].contains("(")&&temp[1].contains(")")){
	temp[1] = temp[1].substring(0,temp[1].indexOf("("));
	
}
java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
Timestamp time = new Timestamp(System.currentTimeMillis());
double totalamount = 0.00;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title></title>
<style type="text/css">
<!--
.inputblank {
	border: none;
}
-->
</style>
</head>

<script  language="javascript">
//ʹ��˵����ֻҪ������Ϣҳ�������ҳ�漴�ɡ��磻
function   fprint()
{  try{
		   demo.style.display=(demo.style.display == "none")?"block":"none";
		   window.print();
		   demo.style.display = "block";
	  }catch(e){ alert("��ע����Ĵ�ӡ����\n\n.���ܴ�ӡ����û׼���ã�\n.���ܴ�ӡ�������˹��ϡ�");} 
}
</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>
<table  id="table0"  width="375"  border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td  height="40" width="40"  align="center" valign="middle"  class="daohang" >&nbsp;</td>
    <td colspan="3"   width="240" height="45" align="left" valign="middle"  class="daohang" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= codeString(temp[1]) %></td>
    <td  colspan="2" height="40" width="50"  align="left" valign="middle"  class="daohang" >&nbsp;&nbsp;<%= date.getYear() + 1900 %>&nbsp;&nbsp;&nbsp;&nbsp;<%= date.getMonth() + 1 %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= date.getDate() %></td>
 </tr>
 <tr>
  <td colspan="5" height="5">&nbsp;</td>
 </tr>
<%
    Map map = (HashMap)session.getAttribute("trade");
	if(map!=null){
	    Iterator it = map.values().iterator();
		T_sale vo = new T_sale();
		double tempdate = 0;
		String stemp ="";
		int countnum =0;
		while(it.hasNext()){
			countnum ++;
			vo  = (T_sale)it.next();
			totalamount = totalamount + vo.getSalenum()*vo.getSaleprice();
			%>
			<tr> 
                     <td  height="19" width="40"  align="center" valign="middle"  class="daohang" >&nbsp;</td>
		     <td height="19" width="135" align="left" valign="middle"><%= vo.getName()%>
		     <%if(vo.getNum()>0){ out.println(vo.getMemo()); }%>
			 <input type="text" name="createdate" size="8" maxlength="8" value="20080919" class="">
		     </td>
		     <td height="19" width="50" align="left" valign="middle"><%= vo.getType() %></td>
		     <td height="19" width="50" align="left" valign="middle"><%= vo.getSalenum() %></td>
		     <td height="19" width="80" align="left" valign="middle"><%= vo.getSaleprice() %></td>		     
		     <td height="19" width="80" align="left" valign="middle">
		      <%= df((float)(vo.getSalenum()*vo.getSaleprice()) )%>
		     </td>
		    </tr>  
			<%		
		}
		while(countnum<8){
			countnum++;
			%>
		  <tr> 
             <td  height="19" width="40"  align="center" valign="middle"  class="daohang" >&nbsp;</td>
		     <td height="19" width="135" align="left" valign="middle">&nbsp;</td>
		     <td height="19" width="50" align="left" valign="middle">&nbsp;</td>
		     <td height="19" width="50" align="left" valign="middle">&nbsp;</td>
		     <td height="19" width="80" align="left" valign="middle">&nbsp;</td>		     
		     <td height="19" width="80" align="left" valign="middle">&nbsp;</td>
		    </tr>  
		<%}
	}
%>
 <tr>
  <td colspan="6" height="22" align="right" valign="middle"  class="daohang"><%= df((float)totalamount )%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
 </tr>
</table>

<div id=demo style="display:block" align="center">
<input  type="button"  name="dy"  value="��ӡ���ⵥ"  onclick="fprint()"  > &nbsp;&nbsp;
<!-- <input  type="button"  name="gb"  value="�ر�"  onclick="window.close()"  > -->
</div>

</body>
</html>

<%@ page import="java.util.*"%>
<%@ page import="com.jxc.domain.*"%>
<%@ page import="com.jxc.service.*"%>
<%@ page import="com.jxc.dao.impl.*"%>
<%@ page import="com.common.db.DaoConfig" %>
<%@ page import="com.ibatis.sqlmap.client.SqlMapClient" %>
<%
double saleamount = 0.00;
double costs = 0.00;
double profits = 0.00;
boolean flag = false;
int flag1 = 0, flag2 = 0, flag3 = 0, flag4 = 0;
int retflag = 0;

try{
//String temp = request.getParameter("customerid");
//temp = codeString(temp);


//out.println( temp );

T_products_sub t_products_sub = new T_products_sub();
T_buy t_buy = new T_buy();
T_sale t_sale = new T_sale();
T_trade t_trade = new T_trade();

long tradeno = System.currentTimeMillis();

if(temp!=null&&!temp.equals("")){
	   //String[] array = temp.split(";");    
	   //out.println( array[0] );
	   //out.println( array[1] );  
	   
	    Map map2 = (HashMap)session.getAttribute("trade");
		if(map!=null){
		    Iterator it = map2.values().iterator();
			T_sale vo =null;
			TradeDaoImpl dao = new TradeDaoImpl();
			SqlMapClient conn = DaoConfig.getInstance();
			
			//����ʼ
			conn.startTransaction();
			
			while(it.hasNext()){
				System.out.println("------------------- ���� start while------------------------");
				vo  = (T_sale)it.next();
				//����ɱ�������Ӧ�տ�
				saleamount = saleamount + vo.getSalenum() * vo.getSaleprice();
				costs = costs + vo.getSalenum() * vo.getPrice();
				//out.println( saleamount );
				//����������С�������������ܳ��⣬����ʧ�ܡ�
				if(vo.getNum()<vo.getSalenum()){
				     flag = false;
					 break;
				}		
				//1.update  t_products_sub��  �������
				t_products_sub.setNum(vo.getSalenum());
				t_products_sub.setId((int)vo.getProductid());
				//flag1 = dao.updateT_products_sub(t_products_sub);
				flag1 = dao.updateT_products_sub(conn, t_products_sub);
				System.out.println("-------------���� flag1="+flag1);
				//2.update t_buy ���¼  �������α�
				t_buy.setId((int)vo.getId());
				t_buy.setNum(vo.getSalenum());
				t_buy.setProductid((int)vo.getProductid());
				//dao.updateT_buy(t_buy);
				flag2 = dao.updateT_buy(conn, t_buy);
				System.out.println("-------------���� flag2="+flag2);
									
				//3.����  t_sale ��  memo2 �ֶ��� tradeno��Ϣ
                vo.setTradeno(String.valueOf(tradeno));
				vo.setPici(String.valueOf(vo.getId()));	
				//vo.setCustomerid(Integer.parseInt(array[0]));	
				vo.setCustomerid(Integer.parseInt(temp[0]));	
				//dao.addT_sale(vo);
				flag3 = dao.addT_sale(conn, vo);
				System.out.println("-------------���� flag3="+flag3);
				
				if(flag1 ==1 && flag2==1 && flag3 != 0 ){
					flag =true;
				}else{
				 	flag = false;
				    break;
				}
				System.out.println("------------------- ���� end while------------------------");
			} //end while
			if(flag==true){
				//4.�����±� t_trade (����)����¼ÿ�γ����������Ļ�����Ϣ  tradeno��t_sale��� tradeno �ֶι���
				t_trade.setTradeno(String.valueOf(tradeno));
				//t_trade.setCustomerid(Integer.parseInt(array[0]));
				t_trade.setCustomerid(Integer.parseInt(temp[0]));
				t_trade.setUser(vo.getUser());	
				t_trade.setCosts(costs);
				t_trade.setSaleamount(saleamount);
				t_trade.setProfits(saleamount-costs);							
				//dao.addT_trade(t_trade);
				flag4 = dao.addT_trade(conn, t_trade);
				System.out.println("-------------���� flag4="+flag4);
				
				if(flag4 != 0){
					//���ȫ���ɹ������ύ����
					conn.commitTransaction();					
					//���ǰ�������ȷ����ɾ���ڴ��иö�������Ϊ�Ѿ����µ����ݿ�
					session.removeAttribute("trade");
					retflag =1;
				}
			} 
			
			//�������
			conn.endTransaction();

		} // end if map!=null
 
   } //end if

}catch(Exception e){
	System.out.println(" ----------t_saleConfirm.jsp mess = "+e);
}
//response.sendRedirect(bathPath+"jsp/t_sale/t_saleMessage.jsp?mess="+retflag);

%>
<script type="text/javascript">
if( <%=retflag%>==1){ 
	alert("��ϲ������ɹ���");
}else{
	alert("�Բ��𣬿�治�㣬����ʧ�ܣ�");
}
</script>