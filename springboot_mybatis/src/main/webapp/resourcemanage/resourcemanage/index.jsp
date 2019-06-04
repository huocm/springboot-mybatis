<%@ page language="java" contentType="text/html;charset=GBK"
	pageEncoding="GBK" errorPage="../Error.jsp"%>
<%@include file="../sessionValidate.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ page import="com.xuka.domain.*"%>
<%@ page import="com.xuka.service.*"%>
<%@ page import="com.xuka.service.impl.*"%>
<%@ page import="com.common.proxy.*"%>
<%@ page import="com.common.utils.*"%>
<%@ page import="java.util.*"%>
<c:set var="basePath" scope="page"
	value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />

<%
   
//T_messagesDAOImpl t=new T_messagesDAOImpl();

T_user_detail user = (T_user_detail)request.getSession().getAttribute("user");
//如果不是经销商


%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language" content="zh-CN" />
<!--<META HTTP-EQUIV="REFRESH" CONTENT="5"> -->
<script type="text/javascript" src="../js/png.js"></script>
<link rel="stylesheet" href="../css/right.css" type="text/css"
	media="all" />

<script language="JavaScript">
	function autoResize(){
		try{
			document.all["resourceFrame"].style.height=resourceFrame.document.body.scrollHeight
		}
		catch(e){}
	}

</script>



</head>

<body>
<table width="100%" height="100%" >
	<tr>
		<td>
		<table  id="right-tb"  width="100%" border="0">
			<tr>
				<td height="64">&nbsp;</td>
				
				<td height="64"><div class="ricon"><a href="T_user_detailActionUserSearch.action"
					target="resourceFrame">用户管理</a></div></td>
				<td height="64"><div class="ricon"><a href="T_roleAction_showlist.action"
					target="resourceFrame">角色管理</a></div></td>
				<td height="64"><div class="ricon"><a href="T_functionAction_showTree.action"
					target="resourceFrame">资源管理</a></div></td>
				<td height="64">&nbsp;</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>

		<td>
			<iframe  name="resourceFrame"
				width=100% height=100%
				style="height:expression(1); aho:expression(autoResize())"
				scrolling=no frameBorder=0 align="top">
			</iframe>
		</td>
	</tr>
</table>
</body>
</html>
