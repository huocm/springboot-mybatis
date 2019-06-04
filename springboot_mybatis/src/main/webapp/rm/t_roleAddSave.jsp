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
String rolename = request.getParameter("name");
String isuse = request.getParameter("isuse");
String memo = request.getParameter("memo");
String pid = request.getParameter("pid");

out.println("---rolename="+rolename+"----isuse="+isuse+"----memo="+memo+"-----pid="+pid);

T_role vo = new T_role();
vo.setRolename(rolename);
vo.setMemo(memo);
vo.setIsuse(Integer.parseInt(isuse));

Rm dao = new Rm();
out.println(" ----ret= "+dao.insertT_role(vo));

}catch(Exception e){
	out.println(e);
}

response.sendRedirect(basePath+"rm/t_roleList.jsp");
%>

                      

