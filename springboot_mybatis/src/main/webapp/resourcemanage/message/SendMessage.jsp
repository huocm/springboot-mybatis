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
<title>T_book��Ϣ����ҳ</title>
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
//out.println("��������:");
//out.println("&nbsp;&nbsp;&nbsp;&nbsp;"+content2 );
//out.println("<br>");
//out.println("���ն����ֻ���:" );
//out.println("&nbsp;&nbsp;&nbsp;&nbsp;"+mobile2 );
SendMessage sm = new SendMessage();
String url = sm.makeUrl(mobile2, content2);
out.println("<br>");
String msret =sm.sendMessage( url );
if(msret!=null&&msret.length()>0){
	if(msret.contains("success")){
		out.println("���ŷ��ͳɹ���");
	}
}else{
	out.println(" ���ŷ���ʧ�ܣ�ʧ����Ϣ="+sm.sendMessage( url ) +"������ݷ���ֵ���������ϵ����ƽ̨��Ա��");
}

out.println("<br>");
}catch(Exception e){
	out.println(e);
}

%>
	          
<input type="button" class="btn" value="    �ر�    " name="B1" onClick="javascript:window.close()">

</body>
</html>