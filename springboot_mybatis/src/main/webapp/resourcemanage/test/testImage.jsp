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
<form method=post action="checkImage.jsp">
<table>
<tr>
<td align=left>系统产生的认证码：</td>
<td><img border=0 src="${basePath}/Image"></td>
</tr>
<tr>
<td align=left>输入上面的认证码：</td>
<td><input type=text name=rand maxlength=4 value=""><%= (String)request.getSession().getAttribute("rand") %></td>
</tr>
<tr>
<td colspan=2 align=center><input type=submit value="提交检测"></td>
</tr>

</body>
</html>
