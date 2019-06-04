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
<% request.setCharacterEncoding("GBK");%>
<%! //处理字符串的方法：
  public String codeString(String s)
    { String str=s;
       try{byte b[]=str.getBytes("iso-8859-1");
           str=new String(b);
           return str;
         }
      catch(Exception e)
         { 
		  return str;
         }
    }
%>
<%
try{ 
	
String funcid = (String) request.getParameter("funcid");
String[] row = funcid.split(";");
out.println("---row[0]="+row[0]);

T_function vo = new T_function();
vo.setFuncid(Integer.parseInt(row[0]));

Rm dao = new Rm();
out.println(" ----ret= "+dao.deleteT_function(vo));

}catch(Exception e){
	out.println(e);
}

response.sendRedirect(basePath+"rm/t_functionList.jsp");
%>

                      

