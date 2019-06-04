<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />

<%@ page import="java.util.*" %>
<%@ page import="com.jxc.domain.*" %>
<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<%

try{

    session.removeAttribute("tuihuo");
    
}catch(Exception e){
	out.println(e);
	System.out.println(e);
	e.printStackTrace();
}
%>
<script>
	//window.history.go(-1);
	window.location.href="<%=bathPath%>jsp/t_sale/t_returnSortShow.jsp";
</script>	