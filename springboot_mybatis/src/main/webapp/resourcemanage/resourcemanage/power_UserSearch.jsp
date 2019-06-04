<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../Error.jsp"%>
<%@include file="../sessionValidate.jsp" %>
<%@include file="../taglibs.jsp" %>
<c:set var="basePath" scope="page"
	value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />


<s:head theme="ajax" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="<s:url value='/css/right.css'/>" type="text/css" media="all" />
</head>
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>

<style>
td{
	font-size:12px;
}

</style>
<body onload="userform.submit();">

<s:form action="T_user_detailActionPowerUserList.action" theme="simple" target="under" name="userform" id="userform">

		
<table width="100%"  class="right-tb" id="right-tb" border="0" align="center" cellpadding="0" cellspacing="0">
  
  <tr>
    <td width="100" align="right">经销商帐号:</td>
    <td width="100"><s:textfield  name="t_user_detail.dealerstr" maxLength="12" cssClass="input12"/></td>
    <td width="100" align="right">帐号名称:</td>
    <td width="100"><s:textfield  name="t_user_detail.username" maxLength="12" cssClass="input12"/></td>
    <td><input type="image" name="imageField"  src="<s:url value='/images/cx.gif'/>"></td>
  </tr>
</table></s:form>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="table">
<tr>
	<td width="82%" bgcolor="#ad9875">
			<iframe src="<s:url value='${basePath}resourcemanage/power_userList.jsp'/>" align="top" width="100%" scrolling="no" frameborder="0" height="280" name="under" onload="this.height=this.contentWindow.document.body.scrollHeight+100"></iframe>
	</td>
</tr>
</table>


</body>
</html>
