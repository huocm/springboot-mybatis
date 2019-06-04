<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage=""%>
<%@ page import="java.util.*" %> 
<%@ page import = "com.common.servlet.CounterListener" %>
<% session = request.getSession(false); %>
<html>
<head>
    <meta http-equiv="refresh" content="5"> 
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<meta http-equiv="Content-Language" content="zh-CN" />
<link rel="stylesheet" href="../css/right.css" type="text/css" media="all" />
</head>
<body>

<table id="right-tb" class="tb01" border="0" cellpadding="0" cellspacing="0">
	<tr>
	  <td class="right-dt1" colspan="4"><div class="ricon">访问人数统计</div></td>
	</tr>	
	<tr>
		<td class="right-dt4">
		当前访问人数：<%= CounterListener.getCounter() %>  （人）
		</td>
	</tr>
	<tr>
		<td class="right-dtf"></td>
	</tr>
</table>

</body>
</html>
