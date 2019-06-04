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

String dealerno = request.getParameter("dealerno");
StringBuffer bf = new StringBuffer();

try{ 
	//String ids = request.getParameter("ids");
	String[] ids  = request.getParameterValues("ids");
	out.println("---ids="+ids.length+"----dealerno="+dealerno);

	T_user_function vo = new T_user_function();
	vo.setDealerno(Integer.parseInt(dealerno));
	Rm dao = new Rm();
	//首先删除原来用户对应角色的配置t_user_role
	dao.removeT_user_function(vo);

    //然后插入新角色对应的function的值t_role_function
	for(int i=0;i<ids.length;i++){		
		vo.setFuncid(Integer.parseInt(ids[i]));
		dao.insertT_user_function(vo);	
		bf.append(ids+";");
		out.println("---ids["+i+"]="+ids[i]);
	}

    out.println("ids="+bf.toString());  

}catch(Exception e){
			out.println(e);
			System.out.println(e);
}

response.sendRedirect(basePath+"rm/t_user_functionSetPower.jsp?ids="+bf+"&dealerno="+dealerno);
%>

                      

