<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage=""%>
<%@ page import="java.util.*" %> 
<%@ page import = "com.common.servlet.BindSessionListener" %>

<html>
<head>
    <!-- <meta http-equiv="refresh" content="5">  --> 
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<meta http-equiv="Content-Language" content="zh-CN" />

</head>
<body>
test add attribute!<br>
session.setAttribute("user1", "test1 ");<br>
session.setAttribute("user2", "test2 ");<br>
session.setAttribute("user", "user");<br>
session.removeAttribute("user");<br>
session.setAttribute("user1", "user1 new");<br>

<%
//session.setAttribute("user", new BindSessionListener());
session.setAttribute("user1", "test1 ");
session.setAttribute("user2", "test2 ");
session.setAttribute("user", "user");
session.removeAttribute("user");
for(int i=0;i<6;i++){
	//session.setAttribute("user", "user reset"+i);	
}

session.setAttribute("user1", "user1 new");

//session.putValue("test", "test put value");
//request.getSession(true).putValue("test2", "test2 put value");

%>
</body>
</html>
