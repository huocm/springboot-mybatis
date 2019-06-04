<%@ page contentType="text/html;charset=GBK" language="java"  errorPage="Error.jsp" %>
<%@ include file="taglibs.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ϵͳ</title>
<link href="${basePath}css/style.css" rel="stylesheet" type="text/css">
</head>

<script>
//alert('${signonForwardAction}');
window.parent.location.href="signon.jsp?signonForwardAction='${signonForwardAction}'";
</script>
