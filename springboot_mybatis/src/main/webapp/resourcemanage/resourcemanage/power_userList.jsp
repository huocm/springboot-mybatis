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
		<td>用户帐号</td>
		<td>用户名称</td>
		<td>状态</td>
		<td>操作</td>
	</tr>
<s:iterator value="paginationSupport.items" status="stuts">
<tr>
	
	<td><s:property value="dealerid" /></td>
	<td><s:property value="username" /></td>
	<td><s:if test="${status==1}">
    <div>正常</div></s:if>
		<s:else>
    <div>已冻结</div>
</s:else>
</td>
	<td height="15">
		
		 <a href="${basePath}T_user_detailActionGetPower.action?dealerno=${dealerno}" target="_parent" id="${dealerid }">
		 	<img src='${basePath}/images/freetree/config.gif'  style="cursor: pointer" alt="配置权限" title="配置权限"  height="15" >
		 </a>
	</td>
</tr>
</s:iterator>
<tr>
	<td colspan="4" align="center">共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_user_detailActionPowerUserList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_user_detailActionPowerUserList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_user_detailActionPowerUserList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />

							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_user_detailActionPowerUserList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />

							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条					      </td>
	</tr>
</table>
	
</s:form>
</body>
</html>
