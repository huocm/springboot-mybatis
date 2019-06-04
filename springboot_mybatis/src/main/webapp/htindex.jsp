<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>金程健康</title>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
</head>
<style by tesion.>
body{text-align:center}
#### #tesion{width:1020px; margin: 0 auto /* or margin: auto */}
</style>
<frameset id="tesion" rows="94,*" frameborder="NO" border="0" framespacing="0">
  <frame src="httop.jsp" name="topFrame" scrolling="NO" noresize >
  <frameset rows="*" cols="210,*" framespacing="0" frameborder="NO" border="0">
    <frame src="htleft.jsp" name="leftFrame" scrolling="YES" noresize>
    <frame src="htmain.jsp" name="mainFrame" id="main">
  </frameset>
</frameset>
<noframes>
<body>

</body>
</noframes>
</html>
