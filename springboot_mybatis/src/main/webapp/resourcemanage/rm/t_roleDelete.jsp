<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>

<%@include file="../../sessionValidate.jsp" %>

<%@ page import="java.util.*" %>
<%@ page import="com.common.db.PaginationSupport" %>
<%@ page import="com.common.rm.dao.*" %>
<%@ page import="com.common.rm.domain.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
try{ 

String roleid = request.getParameter("roleid");

//out.println("-----dealerno="+dealerno+");

T_role vo = new T_role();
vo.setRoleid(Integer.parseInt(roleid));

Rm dao = new Rm();
dao.deleteT_role(vo);
//out.println(" ----ret= "+dao.updateT_user_detail(vo));

}catch(Exception e){
	out.println(e);
	e.printStackTrace();
}

response.sendRedirect(basePath+"rm/t_roleList.jsp");
%>

                      

