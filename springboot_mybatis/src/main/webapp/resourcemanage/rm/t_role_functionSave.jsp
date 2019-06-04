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
	//String ids = request.getParameter("ids");
	String[] ids  = request.getParameterValues("ids");
	out.println("---ids="+ids+"----roleid="+roleid);
	
	T_role_function vo = new T_role_function();
	vo.setRoleid(Integer.parseInt(roleid));
	
	Rm dao = new Rm();
	//首先删除原来角色的配置t_role_function
	dao.removeT_role_function(vo);

	if(ids!=null){		
		out.println("---ids.length="+ids.length+"----roleid="+roleid);		
		//然后插入新角色对应的function的值t_role_function
		for(int i =0;i<ids.length;i++){
			vo.setFuncid(Integer.parseInt(ids[i]));
			out.println(" ----ret= "+dao.insertT_role_function(vo));
		}
	}	
}catch(Exception e){
		out.println(e);
		System.out.println(e);
	}

response.sendRedirect(basePath+"rm/t_roleList.jsp");
%>

                      

