<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="auto.db.DB, auto.vo.*, java.sql.*,auto.creat.*" %>

<%
String contextPath = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+contextPath+"/";
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

<p align="center"><font size="6">执行生成代码</font></p>
<%

try{

    String filePath = request.getSession().getServletContext().getRealPath("/"); 
    out.println("----------fileName="+filePath + Constants.FILEPATH + Constants.FILENAME);        
	InvokeCreat ic = new InvokeCreat();
	ic.createByWeb(filePath + Constants.FILEPATH + Constants.FILENAME, filePath );
    out.println("<br>----------------执行生成代码完毕-------------");
    
}catch(Exception e){
   e.printStackTrace();
   out.println("执行生成代码有错误，请检查配置和环境是否正确！"+e);
}

%>


<br>
<p>

</p>

</body>
</html>
