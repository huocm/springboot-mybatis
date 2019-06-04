<%@ page language="java" contentType="text/html;charset=GBK"
	pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp"%>
<%@include file="../../sessionValidate.jsp"%>
<%@ page import="java.util.*"%>
<%@ page import="com.jxc.domain.*"%>
<%@ page import="com.jxc.service.*"%>
<%@ page import="com.jxc.dao.impl.*"%>

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
<body>

<%
try{
String tradeno = request.getParameter("tradeno");
String smoney = request.getParameter("money");

double money = 0.00;
T_trade t_trade = new T_trade();
t_trade.setTradeno(tradeno);
t_trade.setMoney(Double.parseDouble(smoney));

TradeDaoImpl dao = new TradeDaoImpl();
dao.updateT_trade(t_trade);

out.println("-------smoney=" + smoney +"------tradeno="+tradeno);



}catch(Exception e){
	System.out.println(" ----------t_moneySave.jsp mess = "+e);
}
response.sendRedirect(bathPath+"T_moneyActionFind.action");

%>

</body>
</html>