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
String name = request.getParameter("name");
String isuse = request.getParameter("isuse");
String memo = request.getParameter("memo");
String funcid = request.getParameter("funcid");
String pid = request.getParameter("pid");

out.println("---name="+name+"----isuse="+isuse+"----memo="+memo+"-----funcid="+funcid);

T_function vo = new T_function();
vo.setName(name);
vo.setMemo(memo);
vo.setPid(Integer.parseInt(pid));
vo.setFuncid(Integer.parseInt(funcid));
vo.setIsuse(Integer.parseInt(isuse));

Rm dao = new Rm();
out.println(" ----ret================ "+dao.updateT_function(vo));

}catch(Exception e){
	out.println(e);
}

response.sendRedirect(basePath+"rm/t_functionList.jsp");
%>

                      

