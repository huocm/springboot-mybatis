<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="auto.db.DB, auto.vo.*, java.sql.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<form method="post" action="<%=basePath%>auto/createCode.jsp" name="form1">
<p align="center"><font size="6">�ڶ�����������</font></p>
<%
String dbType="";
String url="";
String user="";
String password="";
String dbflag="";
try{

	if(request.getParameter("dbtype")!=null&&request.getParameter("dbtype").equals("oracle.jdbc.driver.OracleDriver")){
	    dbType=request.getParameter("dbtype"); //"oracle.jdbc.driver.OracleDriver";
		url =request.getParameter("oracleurl");
		user = request.getParameter("oracleuser");
		password =  request.getParameter("oraclepassword");
		dbflag = "oracle";
		out.println(request.getParameter("oracleurl"));
		out.println(request.getParameter("dbtype"));
		out.println(request.getParameter("oracleuser"));
		out.println(request.getParameter("oraclepassword"));

	}
	else  if(request.getParameter("dbtype")!=null&&request.getParameter("dbtype").equals("com.microsoft.jdbc.sqlserver.SQLServerDriver")){
	    dbType= request.getParameter("dbtype");  //"com.microsoft.jdbc.sqlserver.SQLServerDriver";
		url =request.getParameter("sqlserverurl");
		user = request.getParameter("sqlserveruser");
		password =  request.getParameter("sqlserverpassword");
		dbflag = "sqlserver";
		out.println(request.getParameter("sqlserverurl"));
	}
	else  if(request.getParameter("dbtype")!=null&&request.getParameter("dbtype").equals("com.ibm.db2.jcc.DB2Driver")){
	    dbType= request.getParameter("dbtype");  //"com.ibm.db2.jcc.DB2Driver";
		url =request.getParameter("db2url");
		user = request.getParameter("db2user");
		password =  request.getParameter("db2password");
		dbflag = "db2";
		out.println(request.getParameter("db2url"));
	}
	
	Connection  conn = DB.getConnnection(dbType, url,  user, password);
	List list = DB.getAllTables(conn, dbflag, user,"");
	Iterator it = list.iterator();
	StringBuffer sbTableNames = new StringBuffer();
	StringBuffer sbTableColumName = new StringBuffer();
	StringBuffer sbTableColumType = new StringBuffer();
	while(it.hasNext()){
	    String tableName= it.next().toString();
	    out.println("<br>����:  "+ tableName );
	    sbTableNames.append(tableName+";");
	    
	    
	    List listColum =  DB.getTableInfo( DB.getConnnection(dbType, url,  user, password), tableName, user, dbflag);
	    Iterator itColum = listColum.iterator();
	    TableVO vo = new TableVO();
	    
	    List columnNamesList = new ArrayList();
	    List columnTypesList = new ArrayList();
	    
	    while(itColum.hasNext()){
	          vo = (TableVO)itColum.next();
	          sbTableColumName.append(tableName+"_"+vo.getColumName()+";");
	          sbTableColumType.append(tableName+"_"+vo.getColumTypeName()+";");
	           columnNamesList.add(vo.getColumName());
	          columnTypesList.add(vo.getColumTypeName());
	          
	        %>
	         <!-- 
	                  &nbsp;&nbsp;&nbsp;&nbsp;
	         <input type="checkbox" value="<%= tableName %>;<%= vo.getColumName() %>;<%= vo.getColumTypeName() %>" name="columNames">         
	         
	         <input type="text" value="<%= tableName %>;ColumClassName;<%= vo.getColumClassName() %>" name="ColumClassName">         
	         <input type="text" value="<%= tableName %>;ColumType;<%= vo.getColumType() %>" name="ColumType"> 
	         <input type="text" value="<%= tableName %>;ColumTypeName;<%= vo.getColumTypeName() %>" name="ColumTypeName">                  
	         &nbsp;&nbsp;����:&nbsp;<%= vo.getColumName() %>
	         &nbsp;&nbsp;������String:&nbsp;<%= vo.getColumClassName() %>
	         &nbsp;&nbsp;������int:&nbsp;<%= vo.getColumType() %> 
	         &nbsp;&nbsp;����������:&nbsp;<%= vo.getColumTypeName() %>        
	         <br>
	         -->
	        <% 
	    }
	    %>
	      <input type="checkbox" value="<%= tableName %>" name="tableNames"><br>
	       <!-- 
	         <input type="text" value="<%= sbTableNames %>" name="sbTableNames">         
	         <input type="text" value="<%= sbTableColumName %>" name="sbTableColumName">         
	         <input type="text" value="<%= sbTableColumType %>" name="sbTableColumType">         
	         --> 
	    <%
	
	    
	}
	out.println("<br>"+"-------sbTableNames="+  sbTableNames.toString());
	out.println("<br>"+"-------sbTableColumName="+  sbTableColumName.toString());
	out.println("<br>"+"-------sbTableColumType="+  sbTableColumType.toString());

}catch(Exception e){
   e.printStackTrace();
   out.println("������ݿ���������д������������ã�"+e+"<a href='javascript:window.history.go(-1)'>����</a>");
}

%>


<br>
<p>
<input type="submit" name="tj" value="��һ��" >
</p>
</form> 
</body>
</html>
