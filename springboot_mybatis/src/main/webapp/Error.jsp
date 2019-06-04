<%@ page isErrorPage="true" import="java.util.Enumeration,java.io.ByteArrayOutputStream,java.io.PrintStream" %>
<%@ include file="taglibs.jsp" %>
<html>
<head><title>Error During Processing</title></head>
<body>
<h2>An error has occured during the processing of your request.</h2>
<hr>
<h3><%= exception %></h3>
<pre>
<%
    ByteArrayOutputStream ostr = new ByteArrayOutputStream();
    exception.printStackTrace(new PrintStream(ostr));
    out.print(ostr);
%>
</pre>
<hr>
<h3>Requested URL</h3>
<pre>
<%= HttpUtils.getRequestURL(request) %>
</pre>

<h3>Request Parameters</h3>
<pre>
<%@ page import="java.util.Enumeration" %>
<%
/*********
//Enumeration enum = request.getParameterNames();
//Enumeration enum = request.getParameterNames();
//while(enum.hasMoreElements()){
//  String key = (String)enum.nextElement();
//  String[] paramValues = request.getParameterValues(key);
//  for(int i=0;i < paramValues.length;i++){
//      out.println(key + " : "  + paramValues[i]); 
//  }
}
//********************/
%>
</pre>

<h3>Request Attributes</h3>
<pre>
<%
//enum = request.getAttributeNames();
//while(enum.hasMoreElements()){
//  String key = (String)enum.nextElement();
//  String value = request.getAttribute(key).toString();
//  out.println(key + " : "  + value); 
//}
//
%>
</pre>

<h3>Request Information</h3>
<pre>
Request Method: <%= request.getMethod() %>
Request URI: <%= request.getRequestURI() %>
Request Protocol: <%= request.getProtocol() %>
Servlet Path: <%= request.getServletPath() %>
Path Info: <%= request.getPathInfo() %>
Path Translated: <%= request.getPathTranslated() %>
Query String: <%= request.getQueryString() %>
Content Length: <%= request.getContentLength() %>
Content Type: <%= request.getContentType() %>
Server Name: <%= request.getServerName() %>
Server Port: <%= request.getServerPort() %>
Remote User: <%= request.getRemoteUser() %>
Remote Address: <%= request.getRemoteAddr() %>
Remote Host: <%= request.getRemoteHost() %>
Authorization Scheme: <%= request.getAuthType() %>
</pre>

<h3>Request Headers</h3>
<pre>
<%
//enum = request.getHeaderNames();
//while (enum.hasMoreElements()) {
//  String name = (String)enum.nextElement();
//  out.println(name + ": " + request.getHeader(name));
//}
%>
</pre>

<hr>
</body>
</html>

