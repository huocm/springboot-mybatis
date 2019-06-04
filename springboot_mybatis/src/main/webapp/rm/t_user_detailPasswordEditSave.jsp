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
int flag = 0;
try{ 
String username = request.getParameter("username");
String password = request.getParameter("password");
String newpassword = request.getParameter("newpassword");
out.println("---username="+username+"----newpassword="+newpassword+"----password="+password);

T_user_detail vo = new T_user_detail();
vo.setUsername(username);
vo.setPassword(password);
vo.setNewpassword(newpassword);

Rm dao = new Rm();
flag = dao.updatePassword(vo);
out.println("--------flag="+flag);
}catch(Exception e){
	out.println(e);
	e.printStackTrace();
}

response.sendRedirect(basePath+"rm/t_user_detailPasswordMess.jsp?mess="+flag);
%>

                      

