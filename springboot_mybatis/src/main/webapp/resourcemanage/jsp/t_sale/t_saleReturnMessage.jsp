<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_sale��Ϣ�б�ҳ</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/myAjax.js'/>" ></script>
</head>
<script>
//����ʹ��
var domok=document.all||document.getElementById
if (domok)
document.write('<SCRIPT SRC="<s:url value='/js/sorttable.js'/>" ><\/SCRIPT>')
</script>

<body   class="mainBody"  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>
<br><br><br><br><br><br>

<%

String mess = request.getParameter("mess");
if(mess!=null&&mess.equals("1")){
%>  
<p align="center">��ϲ���˻��ɹ���</p>
<%
}else{ %>
 
<p align="center">�Բ����˻�ʧ�ܣ�</p>
<%}%>


</body>
</html>