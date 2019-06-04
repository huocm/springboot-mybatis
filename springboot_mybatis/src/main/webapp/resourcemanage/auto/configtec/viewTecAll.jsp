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

  </head>
  
  <body> 
<form method="post" action="<%=basePath%>auto/createCode.jsp" name="form1">
<p align="center"><font size="6">查看全部配置</font></p>
<%

try{
            
   ReadConfig rc = new ReadConfig();
    String filePath = request.getSession().getServletContext().getRealPath("/");          
    out.println("<br>");  
    Properties loadprop = rc.loadFileByIO(filePath + Constants.FILEPATH + Constants.FILENAME);
    out.println("全部配置文件内容：");
    out.println("<br>");
    //out.println("viewDialiect="+loadprop.getProperty("viewDialiect"));
    //out.println("<br>");
    //out.println("daoDialiect="+loadprop.getProperty("daoDialiect"));
    out.println(loadprop);
    loadprop.list(System.out);
    
}catch(Exception e){
   e.printStackTrace();
   out.println("你的使用技术参数配置有错误，请重新配置！"+e);
}

%>


</form> 
</body>
</html>
