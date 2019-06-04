<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="auto.db.DB, auto.vo.*, java.sql.*,auto.creat.*, java.sql.*" %>

<%
String contextPath = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+contextPath+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��ӭʹ��freedom�����Զ�����ϵͳ</title>
    
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

<p align="center"><font size="6">�������ݿ�����</font></p>
<%
String dbType="";
String url="";
String user="";
String password="";
String dbflag="";
try{

	user = request.getParameter("user");
	password =  request.getParameter("password");

	if(request.getParameter("dbtype")!=null&&request.getParameter("dbtype").equals("oracle.jdbc.driver.OracleDriver")){
	    dbType=request.getParameter("dbtype"); //"oracle.jdbc.driver.OracleDriver";
		url =request.getParameter("oracleurl");
		dbflag = "oracle";
		//out.println(request.getParameter("oracleurl"));
		//out.println(request.getParameter("dbtype"));
		//out.println(request.getParameter("oracleuser"));
		//out.println(request.getParameter("oraclepassword"));

	}
	else  if(request.getParameter("dbtype")!=null&&request.getParameter("dbtype").equals("com.microsoft.jdbc.sqlserver.SQLServerDriver")){
	    dbType= request.getParameter("dbtype");  //"com.microsoft.jdbc.sqlserver.SQLServerDriver";
		url =request.getParameter("sqlserverurl");
		dbflag = "sqlserver";
		//out.println(request.getParameter("sqlserverurl"));
	}
	else  if(request.getParameter("dbtype")!=null&&request.getParameter("dbtype").equals("com.ibm.db2.jcc.DB2Driver")){
	    dbType= request.getParameter("dbtype");  //"com.ibm.db2.jcc.DB2Driver";
		url =request.getParameter("db2url");
		dbflag = "db2";
		//out.println(request.getParameter("db2url"));
	}
	
    Properties prop= new Properties();
    prop.setProperty("jdbc.url",url);
    prop.setProperty("jdbc.driverClassName",dbType);
    prop.setProperty("jdbc.username",user);
    prop.setProperty("jdbc.password",password);
    prop.setProperty("schema",user);
    prop.setProperty("dbType",dbflag);
    prop.setProperty("tableNameStartWith",request.getParameter("tableNameStartWith"));
    prop.setProperty("tableNames",request.getParameter("tableNames"));
               
    ReadConfig rc = new ReadConfig();
    String path=request.getSession().getServletContext().getRealPath("/");    

    int flag = rc.store(path, Constants.FILENAME, prop, "db properties");
    //int flag = rc.storeToXml(path, xmlFileName, prop, comment);  
    
    DB db = new DB();
    Connection conn = db.getConnnection(prop.getProperty("jdbc.driverClassName"), prop.getProperty("jdbc.url"), prop.getProperty("jdbc.username"), prop.getProperty("jdbc.password"));
       
    String mess = "ʧ�ܣ�";
    if(flag == 1&&conn!=null){
    	mess="�ɹ���";
    }
    
    out.println("<br>");
	out.println("<br>"+"�������ݿ������ļ��� "+  mess +"--------flag="+flag+"---------conn="+conn);
    out.println("<br>");

    String filePath = request.getSession().getServletContext().getRealPath("/");          
    out.println("<br>");
    out.println("�����ļ�·����"+ filePath + Constants.FILEPATH + Constants.FILENAME);
    out.println("<br>");
    Properties loadprop = rc.loadFileByIO(filePath + Constants.FILEPATH + Constants.FILENAME);
    out.println("�����ļ����ݣ�");
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
    
}catch(Exception e){
   e.printStackTrace();
   out.println("������ݿ���������д������������ã�"+e+"<a href='javascript:window.history.go(-1)'>����</a>");
}

%>


<br>
<p>
<a href='javascript:window.history.go(-1)'>����</a>
</p>

</body>
</html>
