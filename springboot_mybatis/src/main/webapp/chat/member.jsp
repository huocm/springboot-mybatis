 <%@ page language="java" contentType="text/html; charset=UTF-8"                 
    pageEncoding="UTF-8"%>                                                       
 <%                                                                              
 if(application.getAttribute("member")==null)                                    
    application.setAttribute("member",new java.util.HashSet());                  
                                                                                 
 java.util.Set member=(java.util.Set)application.getAttribute("member");         
 member.add(request.getRemoteAddr());                                            
 %>                                                                              
                                                                               
<% for(Object o:member){%>                                                      
<%=o%><br/>                                                                     
<%}%>                                                                           
