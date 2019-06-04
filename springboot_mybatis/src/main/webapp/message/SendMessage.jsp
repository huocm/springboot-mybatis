<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%//@include file="../../sessionValidate.jsp" %>

<%@ page import="java.util.*" %>
<%@ page import="com.common.db.PaginationSupport" %>
<%@ page import="com.common.rm.domain.*" %>
<%@ page import="com.common.sendmessage.SendMessage" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_book信息增加页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<%
try{ 

String mobile2 = request.getParameter("mobile2");
String content2 = request.getParameter("content2");
//out.println("<br>");
//out.println("发送内容:");
//out.println("&nbsp;&nbsp;&nbsp;&nbsp;"+content2 );
//out.println("<br>");
//out.println("接收短信手机号:" );
//out.println("&nbsp;&nbsp;&nbsp;&nbsp;"+mobile2 );
SendMessage sm = new SendMessage();
String url = sm.makeUrl(mobile2, content2);
out.println("<br>");
String msret =sm.sendMessage( url );
if(msret!=null&&msret.length()>0){
	if(msret.contains("success")){
		out.println("短信发送成功！");
	}
}else{
	out.println(" 短信发送失败，失败信息="+sm.sendMessage( url ) +"；请根据返回值处理或者联系短信平台人员。");
}

out.println("<br>");
}catch(Exception e){
	out.println(e);
}

%>
	          
<input type="button" class="btn" value="    关闭    " name="B1" onClick="javascript:window.close()">

</body>
</html>