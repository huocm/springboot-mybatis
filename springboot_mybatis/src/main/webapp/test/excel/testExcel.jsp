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

<a href="poiExportExcel.jsp"> 测试poi 包导出excel</a> 
<a href="jxlExportExcel.jsp"> 测试jxl 包导出excel</a>
</body>
</html>
