
<%@ page language="java" contentType="text/html;charset=GBK" %> 

<html> 

<head> 

<title> Request.jsp</title>

</head> 

<body> 

<h2>javax.servlet.http.HttpServletRequest �ӿ����ṩ�ķ���</h2> 

getParameter("Name")��<%= request.getParameter("Name") %><br> 

getParameter("Number")��<%= request.getParameter("Number") %><br> 

getAttribute("Name")��<%= request.getAttribute("Name") %><br> 

getAttribute("Number")��<%= request.getAttribute("Number") %><br><br>

getAuthType( )��<%= request.getAuthType() %><br>

getProtocol( )��<%= request.getProtocol() %><br> 

getMethod( )��<%= request.getMethod() %><br> 

getScheme( )��<%= request.getScheme() %><br> 

getContentType( )��<%= request.getContentType() %><br> 

getContentLength( )��<%= request.getContentLength() %><br> 

getCharacterEncoding( )��<%= request.getCharacterEncoding() %><br>

getRequestedSessionId( )��<%= request.getRequestedSessionId() %><br>

getContextPath( )��<%= request.getContextPath() %><br>  

getServletPath( )��<%= request.getServletPath() %><br>  

getPathInfo( )��<%= request.getPathInfo() %><br> 

getRequestURI( )��<%= request.getRequestURI() %><br> 

getQueryString( )��<%= request.getQueryString() %><br><br>

getRemoteAddr( )��<%= request.getRemoteAddr() %><br> 

getRemoteHost( )��<%= request.getRemoteHost() %><br> 

getRemoteUser( )��<%= request.getRemoteUser() %><br> 

getRemotePort( )��<%= request.getRemotePort() %><br> 

getServerName( )��<%= request.getServerName() %><br> 

getServerPort( )��<%= request.getServerPort() %><br> 

</body> 

</html>
