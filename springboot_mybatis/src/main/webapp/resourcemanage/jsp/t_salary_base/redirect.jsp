<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>��ֹ�ظ��ύ��תҳ</title>
</head>
<script>
//��ʾ�������
var vmessage ='${message}';
if(vmessage!=""){
    alert(vmessage);
}
</script>
<body>
<c:redirect url="${basePath}t_salary_base.do?method=list&&message=${message}" />
</body>
</html>

