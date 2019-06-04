<%@ page contentType="text/html;charset=GBK" language="java"  errorPage="" %>

<%@ include file="/taglibs.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<STYLE type=text/css>
<!--
BODY {
SCROLLBAR-FACE-COLOR:#B9E1E9;
SCROLLBAR-HIGHLIGHT-COLOR:#FFFFFF;
SCROLLBAR-SHADOW-COLOR:#FFFFFF;
SCROLLBAR-3DLIGHT-COLOR:#D4D0C8;
SCROLLBAR-ARROW-COLOR:#808080;
SCROLLBAR-DARKSHADOW-COLOR:#D4D0C8;
}
-->
</STYLE>
<script language="javascript">
function shuaxin() {
	alert("-------shuaxin-----");
	//window.setTimeout( "yanshi()", 5000);
}

function yanshi() {
	//alert("--------yanshi------");
<%
response.sendRedirect(basePath+"T_danbanrenwuAction.action?pageSize=100");
%>
}

</script>

<body  onload="shuaxin()">
<div    align="center">
<marquee  direction="left"   bgcolor="#F0F9FB"  behavior="alternate" >
你好！欢迎使用本系统!  

</marquee>
<div>

</body>
</html>
