<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib prefix="c"        uri="http://java.sun.com/jstl/core"%>
<c:set var="basePath" scope="session" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/"/>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>认证码输入页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
<META HTTP-EQUIV="Expires" CONTENT="0"> 
</head>
<body>

<a href="itextExportPdf.jsp"> 测试iText 包导出PDF</a> 
<a href="itextExportRtf.jsp"> 测试iText 包导出Rtf</a>
<a href="itextExportHtml.jsp"> 测试iText 包导出Html</a>
</body>
</html>
