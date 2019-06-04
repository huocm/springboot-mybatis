<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />

<%@ page import="java.util.*" %>
<%@ page import="com.jxc.domain.*" %>

<%

try{
	System.out.println("------start id="+request.getParameter("id"));
    List list = null;
    T_buy vo = null;
    if(session.getAttribute("buys")!=null){
    	System.out.println("----------11111111---------");
    	list = (List)session.getAttribute("buys");
    	if(!request.getParameter("id").trim().equals("0")){
    		Iterator it = list.iterator();
    		while(it.hasNext()){
    		    vo = (T_buy)it.next();
    		    System.out.println((Integer)vo.getProductid()+"-----------id="+request.getParameter("id"));
    		    if((Integer)vo.getProductid() == Integer.parseInt(request.getParameter("id").trim())){
    		    	
            		list.remove(vo);
            		session.removeAttribute("buys");
            		session.setAttribute("buys",list);
    		    }
    		        
    		}
        	System.out.println("----------22222222---------");
 	    }else{
	        session.removeAttribute("buys");
	        System.out.println("----------333333---------");
	    }
    }
    
}catch(Exception e){
	System.out.println(e);
	e.printStackTrace();
}
%>
<script>
	//window.history.go(-1);
	window.location.href="t_buyAdd.jsp";
</script>	