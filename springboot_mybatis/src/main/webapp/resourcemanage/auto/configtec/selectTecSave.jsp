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

<p align="center"><font size="6">����ʹ�ü�������</font></p>
<%
String viewDialiect="";
String daoDialiect="";
String ejb3="";
String  $SERVERFILEPATH = request.getSession().getServletContext().getRealPath("/"); 
 
try{

	viewDialiect = request.getParameter("viewDialiect");
	daoDialiect =  request.getParameter("daoDialiect");
	//ejb3 =  request.getParameter("ejb3");
	
    Properties prop= new Properties();
    prop.setProperty("viewDialiect",viewDialiect);
    prop.setProperty("daoDialiect",daoDialiect);
    //prop.setProperty("ejb3",ejb3);

    prop.setProperty("formPackage",request.getParameter("formPackage"));
    prop.setProperty("controllerPackage",request.getParameter("controllerPackage"));
    prop.setProperty("actionPackage",request.getParameter("actionPackage"));
    prop.setProperty("domainPackage",request.getParameter("domainPackage"));
    prop.setProperty("daoPackage",request.getParameter("daoPackage"));

    prop.setProperty("daoImplPackage",request.getParameter("daoImplPackage"));
    prop.setProperty("servicePackage",request.getParameter("servicePackage"));
    prop.setProperty("serviceImplPackage",request.getParameter("serviceImplPackage"));
    prop.setProperty("testsPackage",request.getParameter("testsPackage"));
    prop.setProperty("testsDaoPackage",request.getParameter("testsDaoPackage"));
    
    prop.setProperty("testsServicePackage",request.getParameter("testsServicePackage"));
    prop.setProperty("webDir", $SERVERFILEPATH + request.getParameter("webDir"));
    prop.setProperty("jspDir", $SERVERFILEPATH + request.getParameter("jspDir"));
    prop.setProperty("webXmlDir", $SERVERFILEPATH + request.getParameter("webXmlDir"));
    prop.setProperty("applicationContextXmlDir", $SERVERFILEPATH + request.getParameter("applicationContextXmlDir"));

    prop.setProperty("mvcServletXmlDir", $SERVERFILEPATH + request.getParameter("mvcServletXmlDir"));
    prop.setProperty("configDir", $SERVERFILEPATH + request.getParameter("configDir"));
    prop.setProperty("hibernateHbmXmlDir",request.getParameter("hibernateHbmXmlDir"));
    prop.setProperty("companyDir", $SERVERFILEPATH + request.getParameter("companyDir"));
    prop.setProperty("testsDir", $SERVERFILEPATH + request.getParameter("testsDir")); 
        
    prop.setProperty("testsServiceDir",  $SERVERFILEPATH + request.getParameter("testsServiceDir"));       
    prop.setProperty("testsDaoDir",  $SERVERFILEPATH + request.getParameter("testsDaoDir"));
    prop.setProperty("sqlMapsDir",request.getParameter("sqlMapsDir"));
    prop.setProperty("prefix",request.getParameter("prefix"));
    prop.setProperty("suffix",request.getParameter("suffix"));
                 
    ReadConfig rc = new ReadConfig();
         
    int flag = rc.store( $SERVERFILEPATH, Constants.FILENAME, prop, "tec properties");
    //int flag = rc.storeToXml($SERVERFILEPATH, fileName, prop, comment);  
    
    String mess = "ʧ�ܣ�";
    if(flag == 1){
    	mess="�ɹ���";
    }
    
    out.println("<br>");
	out.println("<br>"+"����ʹ�ü��������ļ��� "+  mess );
    out.println("<br>");
  
    Properties loadprop = rc.loadFileByIO($SERVERFILEPATH + Constants.FILEPATH + Constants.FILENAME);
    out.println("�����ļ����ݣ�");
    out.println("<br>");
    out.println("viewDialiect="+loadprop.getProperty("viewDialiect"));
    out.println("<br>");
    out.println("daoDialiect="+loadprop.getProperty("daoDialiect"));
    out.println("<br>");
    loadprop.list(System.out);
    
}catch(Exception e){
   e.printStackTrace();
   out.println("���ʹ�ü��������д������������ã�"+e+"<a href='javascript:window.history.go(-1)'>����</a>");
}

%>


<br>
<p>
<a href='javascript:window.history.go(-1)'>����</a>
</p>

</body>
</html>
