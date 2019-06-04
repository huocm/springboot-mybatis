<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="auto.db.DB, auto.vo.*, java.sql.*,auto.creat.*" %>

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
<form method="post" action="<%=basePath%>auto/createCode.jsp" name="form1">
<p align="center"><font size="6">查看数据库配置</font></p>
<%

try{

    ReadConfig rc = new ReadConfig();
    String filePath = request.getSession().getServletContext().getRealPath("/");          
    out.println("<br>");         
    out.println("配置文件路径："+ filePath + Constants.FILEPATH + Constants.FILENAME);
    out.println("<br>");
    Properties loadprop = rc.loadFileByIO(filePath + Constants.FILEPATH + Constants.FILENAME);
    out.println("配置文件内容：");
    out.println("<br>");
    out.println("jdbc.driverClassName="+loadprop.getProperty("jdbc.driverClassName"));
    out.println("<br>");
    out.println("jdbc.url="+loadprop.getProperty("jdbc.url"));
    out.println("<br>");
    out.println("jdbc.username="+loadprop.getProperty("jdbc.username"));
    out.println("<br>");
    out.println("jdbc.password="+loadprop.getProperty("jdbc.password"));
    out.println("<br>");
    out.println("dbType="+loadprop.getProperty("dbType"));
    out.println("<br>");
    out.println("schema="+loadprop.getProperty("schema"));
    out.println("<br>");
    out.println("tableNameStartWith="+loadprop.getProperty("tableNameStartWith"));
    out.println("<br>");
    out.println("tableNames="+loadprop.getProperty("tableNames"));
    out.println("<br>");
    
    loadprop.list(System.out);
    
}catch(Exception e){
   e.printStackTrace();
   out.println("你的数据库参数配置有错误，请重新配置！"+e);
}

%>


</form> 
</body>
</html>
