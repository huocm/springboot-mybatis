<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage=""%>
<%@ page import="com.common.cache.*" %>
<%@ page import="com.common.proxy.*" %>
<%@ page import="com.xuka.service.*" %>

<c:set var="basePath" scope="page"
	value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />
<s:head theme="ajax" />
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<meta http-equiv="Content-Language" content="zh-CN" />
<link rel="stylesheet" href="../css/right.css" type="text/css" media="all" />
</head>
<body>

<table id="right-tb" class="tb01" border="0" cellpadding="0" cellspacing="0">
	<tr>
	  <td class="right-dt1" colspan="4"><div class="ricon">���ܹ���--�������</div></td>
	</tr>	
	<tr>
		<td class="right-dt4">
		<% Cache.resetCache(); %>  �ʻ����������ϣ�
		</td>
	</tr>
	<tr>
		<td class="right-dt4">
		<% CityCache.resetAll(); %>  �����̻��������ϣ�&nbsp; ���л��������ϣ�
		</td>
	</tr>
    <tr>
		<td class="right-dt4">
		<% EjbProxy.resetCache(); %>  EJB3�ͻ��˻��������ϣ�&nbsp;
		</td>
	</tr>
	<tr>
		<td class="right-dt4">
		<% 
		//ResetAllService service = (ResetAllService)Ejb2Proxy.lookup("ResetAllServiceBean#com.xuka.service.ResetAllService");
		//service.resetEjb2Proxy(null);
		//Ejb2Proxy.resetCache();
		%>  EJB2�ͻ��˻��������ϣ�&nbsp;
		</td>
	</tr>
	<tr>
		<td class="right-dtf"></td>
	</tr>
</table>
</s:form>
</body>
</html>
