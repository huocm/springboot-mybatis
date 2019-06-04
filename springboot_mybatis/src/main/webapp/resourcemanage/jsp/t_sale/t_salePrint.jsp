<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@page import="java.sql.Timestamp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="com.jxc.domain.*" %>

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
<% 
String[] temp = request.getParameter("customerid").split(";"); 
java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
Timestamp time = new Timestamp(System.currentTimeMillis());
double totalamount = 0.00;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>配送销售单</title>
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

<table  id="table0"  width="400"  border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td colspan="2"   width="250" height="45" align="left" valign="middle"  class="daohang" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= codeString(temp[1]) %></td>
    <td  height="45" width="50"  align="center" valign="middle"  class="daohang" width="34"><%= date.getYear() + 1900 %></td>
    <td  height="45" width="50"  align="center" valign="middle"  class="daohang" ><%= date.getMonth() + 1 %></td>
    <td  height="45" width="50"  align="left" valign="middle"  class="daohang" ><%= date.getDate() %>&nbsp;&nbsp;</td>
 </tr>
 <tr>
  <td colspan="5" height="5">&nbsp;</td>
 </tr>
<%
    Map map = (HashMap)session.getAttribute("trade");
	if(map!=null){
	    Iterator it = map.values().iterator();
		T_sale vo = new T_sale();
		while(it.hasNext()){
			vo  = (T_sale)it.next();
			totalamount = totalamount + vo.getSalenum()*vo.getSaleprice();
			%>
			<tr> 
		     <td height="22" width="140" align="center" valign="middle">&nbsp;<%= vo.getName()%><%= vo.getMemo()%></td>
		     <td height="22" width="50" align="left" valign="middle">&nbsp;<%= vo.getType() %></td>
		     <td height="22" width="50" align="left" valign="middle">&nbsp;<%= vo.getSalenum() %></td>
		     <td height="22" width="80" align="left" valign="middle">&nbsp;<%= vo.getSaleprice() %></td>		     
		     <td height="22" width="80" align="left" valign="middle">&nbsp;<%= vo.getSalenum()*vo.getSaleprice() %></td>
		    </tr>  
			<%		
		}
	}
%>
 <tr>
  <td colspan="5" height="22" align="right" valign="middle"  class="daohang">合计金额：<%= totalamount %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
 </tr>
</table>

<div id=demo style="display:block" align="center">
<input  type="button"  name="dy"  value="打印出库单"  onclick="fprint()"  > &nbsp;&nbsp;
<input  type="button"  name="gb"  value="关闭"  onclick="window.close()"  >
</div>

</body>
</html>
