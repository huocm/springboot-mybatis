<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎使用freedom代码自动生成系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body> 
<form method="post" action="<%=basePath%>auto/configdb/selectDbSave.jsp" name="form1">
<table width="100%" height="30" cellspacing="0" cellpadding="0" border="0" bgcolor="" align="center">
	<tr>
		<td colspan="2" align="center">&nbsp;<font color="bule" size="6">选择数据库</font></td>
	<tr>
		<td>&nbsp;<input type="radio" value="com.ibm.db2.jcc.DB2Driver" name="dbtype" checked>DB2</td>
		<td >&nbsp; driver:   com.ibm.db2.jcc.DB2Driver<br>
		&nbsp; url:<input type="text" name="db2url" value="jdbc:db2://127.0.0.1:50000/hncbank" size="60"><br>
		</td>
	</tr>
	<tr>
		<td width="10%">&nbsp;<input type="radio" value="oracle.jdbc.driver.OracleDriver" name="dbtype" >oracle</td>
		<td width="90%" >&nbsp; driver:  oracle.jdbc.driver.OracleDriver<br>
		&nbsp; url:<input type="text" name="oracleurl" value="jdbc:oracle:thin:@localhost:1521:orcl" size="60"><br>
		</td>
    </tr>
	<tr>
		<td>&nbsp;<input type="radio" value="com.microsoft.jdbc.sqlserver.SQLServerDriver" name="dbtype">sqlserver</td>
		<td >&nbsp; driver:   com.microsoft.jdbc.sqlserver.SQLServerDriver<br>
		&nbsp; url:<input type="text" name="sqlserverurl" value="jdbc:microsoft:sqlserver://localhost:1433;DatabaseName=kwoa" size="60"><br>
		</td>
	</tr>
	<tr>
		<td>&nbsp; user:<input name="user" type="text" value="" size="10"></td>
		<td>&nbsp; password:<input name="password" type="password" value="" size="10"></td>
	</tr>
	<tr>
		<td>&nbsp; tableNameStartWith:<input name="tableNameStartWith" type="text" value="t_" size="20"></td>
		<td>&nbsp; or tableNames:<textarea cols="50" rows="5" name="tableNames"></textarea>请使用;隔开表名字</td>
	</tr>
	<tr>
		<td colspan="2"  align="center"><input type="submit" value="保存" name="tj">&nbsp;   <input name="重置" type="reset" value="重置"></td></tr>

</table> 

</form> 
</body>
</html>
