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

String dealerno = request.getParameter("dealerno");

//out.println("-----dealerno="+dealerno);

T_user_detail vo = new T_user_detail();
vo.setDealerno(Integer.parseInt(dealerno));

Rm dao = new Rm();
dao.removeT_user_detail(vo);
//out.println(" ----ret= "+dao.updateT_user_detail(vo));

}catch(Exception e){
	out.println(e);
	e.printStackTrace();
}

response.sendRedirect(basePath+"rm/t_user_detailList.jsp");
%>

                      

