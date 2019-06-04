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
String rolename = request.getParameter("rolename");
String memo = request.getParameter("memo");
String isuse = request.getParameter("isuse");

//out.println("---rolename="+rolename+"----roleid="+roleid+"----memo="+memo+"-----isuse="+isuse);

T_role vo = new T_role();
vo.setRoleid(Integer.parseInt(roleid));
vo.setRolename(rolename);
vo.setIsuse(Integer.parseInt(isuse));
vo.setMemo(memo);

Rm dao = new Rm();
dao.updateT_role(vo);
//out.println(" ----ret= "+dao.updateT_role(vo));

}catch(Exception e){
	out.println(e);
}

response.sendRedirect(basePath+"rm/t_roleList.jsp");
%>

                      

