<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../Error.jsp"%>
<%@include file="../taglibs.jsp" %>
<%@include file="../sessionValidate.jsp" %>
<c:set var="basePath" scope="page"
	value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="<s:url value='/css/right.css'/>" type="text/css" media="all" />
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
</head>
<style>
td{
	font-size:12px;
}
.mytb01{ width:90%; border-top:1px solid #cccccc; border-left:1px solid #cccccc; background-color:#F9F9F9; color:gray;}
.mytb01 td { border-bottom:1px solid #cccccc; border-right:1px solid #cccccc;padding:2px; }
.mytb01 .lb td{color:#d57626; }
.a2 {
	font-size: 14px;
	font-weight: bold;
	color: #FF6600;
}
</style>
<%
String dealerid=(String)request.getParameter("t_player_log.dealerid");
String touser=(String)request.getParameter("t_player_log.touser");
String insertbegindate=(String)request.getParameter("t_dealer_log.insertbegindate");
String insertenddate=(String)request.getParameter("t_dealer_log.insertenddate");

%>


<body><s:form action="T_user_detailActionList.action" theme="simple">
	
<table id="right-tb" class="mytb01" border="0" cellpadding="0" cellspacing="0">
	<tr style="font: bold;">
		<td>�û��ʺ�</td>
		<td>�û�����</td>
		<td>״̬</td>
		<td>����</td>
	</tr>
<s:iterator value="paginationSupport.items" status="stuts">
<tr>
	
	<td><s:property value="dealerid" /></td>
	<td><s:property value="username" /></td>
	<td><s:if test="${status==1}">
    <div>����</div></s:if>
		<s:else>
    <div>�Ѷ���</div>
</s:else>
</td>
	<td height="15">
		
		 <a href="${basePath}T_user_detailActionGetPower.action?dealerno=${dealerno}" target="_parent" id="${dealerid }">
		 	<img src='${basePath}/images/freetree/config.gif'  style="cursor: pointer" alt="����Ȩ��" title="����Ȩ��"  height="15" >
		 </a>
	</td>
</tr>
</s:iterator>
<tr>
	<td colspan="4" align="center">�� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="/T_user_detailActionPowerUserList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/T_user_detailActionPowerUserList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/T_user_detailActionPowerUserList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />

							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/T_user_detailActionPowerUserList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />

							 </s:url>'>βҳ</a>
							 ��<s:property value="paginationSupport.totalCount"  />��					      </td>
	</tr>
</table>
	
</s:form>
</body>
</html>