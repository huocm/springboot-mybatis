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
//String ids = request.getParameter("ids");
String[] ids  = request.getParameterValues("ids");
StringBuffer bf = new StringBuffer();
//out.println("---ids="+ids+"----dealerno="+dealerno);
	
try{ 

		T_user_role vo = new T_user_role();
		vo.setDealerno(Integer.parseInt(dealerno));
		
		Rm dao = new Rm();
		//����ɾ��ԭ���û���Ӧ��ɫ������t_user_role
		dao.removeT_user_role(vo);

		if(ids!=null){		
			out.println("---ids.length="+ids.length+"----dealerno="+dealerno);		
			//Ȼ������½�ɫ��Ӧ��function��ֵt_role_function
			for(int i =0;i<ids.length;i++){
				vo.setRoleid(Integer.parseInt(ids[i]));
				out.println(" ----ret= "+dao.insertT_user_role(vo));
				bf.append(ids[i]+";");
			}
		}	
	}catch(Exception e){
			out.println(e);
			System.out.println(e);
   }

response.sendRedirect(basePath+"rm/t_user_roleSetPower.jsp?ids="+bf+"&dealerno="+dealerno);
%>

                      

