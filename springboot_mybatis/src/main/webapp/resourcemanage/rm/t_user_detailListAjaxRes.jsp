<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="com.common.db.PaginationSupport" %>
<%@ page import="com.common.rm.dao.*" %>
<%@ page import="com.common.rm.domain.*" %>
<%

try{ 
                            
       Rm dao = new Rm();
       int pageSize = 10;
       int startIndex = 0;
       //if(request.getParameter("pageSize")!=null&&!request.getParameter("pageSize").equals("")){
       //	pageSize  = Integer.parseInt(request.getParameter("pageSize"));
       //}
       //if(request.getParameter("startIndex")!=null&&!request.getParameter("startIndex").equals("")){
       //	startIndex  = Integer.parseInt(request.getParameter("startIndex"));
       //}
       	StringBuilder sb = new StringBuilder();
	    sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<results>");
			
	   T_user_detail  obj = new T_user_detail();
	   T_user_detail vo = null;
	   
	   obj.setBranchid((String)request.getSession().getAttribute("branchid"));
       PaginationSupport pg = dao.t_user_detailList(obj);
       
       List list = pg.getItems();
       if(list!=null){
	        Iterator it = list.iterator();        
	        while(it.hasNext()){
	        	vo = (T_user_detail)it.next();
		    	sb.append("<result id='"+ vo.getUsername() + "'>" + vo.getUsername()+"</result>");
		    }
       }               
        sb.append("</results>");
		System.out.println(sb.toString());
		request.setCharacterEncoding("GBK");
		response.setContentType("text/xml; charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");
	    System.out.println("------t_user_detailListAjaxRes="+sb.toString());
	    response.getWriter().write(sb.toString()); 
	    
 }catch(Exception e){
	out.println(e);
}
         
%>                

