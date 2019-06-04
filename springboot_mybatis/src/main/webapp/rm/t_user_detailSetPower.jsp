<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../Error.jsp"%>
<%@include file="/sessionValidate.jsp" %>
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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_role_function信息列表页</title>
    <link rel="stylesheet" href="<%= basePath %>/css/style.css" type="text/css">
    <script language="JavaScript" src="<%= basePath %>/js/global.js"></script>
    <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
</head>

<script type="text/javascript">

	function change(flag){		
		var role = document.getElementById('role');
		var func  = document.getElementById('function');
		
		if(flag==1){
			func.style.display='block';
			loadfuncframe();
			role.style.display='none';		
		}
		
		if(flag==2){
			role.style.display='block';
			loadrolefreame();
			func.style.display='none';			
		}		
	}
	function loadfuncframe(){
		var funcframe = document.getElementById('function');
		funcframe.src="<%= basePath %>rm/t_user_functionSetPower.jsp?dealerno="+<%=request.getParameter("dealerno") %>;		
	}
	
	function loadrolefreame(){
		var funcframe = document.getElementById('role');
		funcframe.src="<%= basePath %>rm/t_user_roleSetPower.jsp?dealerno="+<%=request.getParameter("dealerno") %>;	
	}
</script>
<body class="mainBody"  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
 <% try{ %>
<form action="" name="form1" method="post">
<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td height="3" bgcolor="2d6094"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<%= basePath %>images/1_09.gif"><img src="<%= basePath %>images/1_08.gif" width="8" height="25"></td>
        <td width="839" valign="bottom" background="<%= basePath %>images/1_09.gif"><span class="daohang">·权限管理&gt;&gt; 用户管理&gt;&gt;配置权限</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td>
              <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="3">
                <tr>
                  <td height="229" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF">
		                    <table width="100%" border="0" cellspacing="5" cellpadding="0">
							  <tr>
		                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
		                            <tr>
		                              <td width="21" background="images/1_27.gif"><img src="<%= basePath %>images/1_26.gif" width="21" height="24"></td>
		                              <td background="<%= basePath %>images/1_27.gif" class="daohang">&nbsp;账号: <%= codeString(request.getParameter("username")) %> &nbsp;&nbsp;用户id: <%=request.getParameter("dealerno") %>&nbsp;</td>
		                              <td align="right" background="<%= basePath %>images/1_27.gif" class="daohang">&nbsp;
		                                 <input type="button" value="配置角色" onClick="change(2)" />
    	                                 <input type="button" value="配置资源" onClick="change(1)" />
    	                                 <input type="button" class="btn" value="    返回    " name="B1" onClick="javascript:window.location.href='<%= basePath %>rm/t_user_detailList.jsp'">
    	                              </td>
		                            </tr>
		                        </table></td>
		                      </tr>
		                      
							  <tr>
							    <td>
									<table  width="100%" height="100%" marginheight="0" marginwidth="0" >
										<tr>
											<td>
												<iframe id="role"  style="display: none;"  onload="this.height=this.contentWindow.document.body.scrollHeight+100" marginwidth="0" framespacing="0" marginheight="0" frameborder="0" width="100%" scrolling="yes"></iframe>
												<iframe id="function" style="display: none;" onload="this.height=this.contentWindow.document.body.scrollHeight+20" marginwidth="0" framespacing="0" marginheight="0" frameborder="0" width="100%" scrolling="yes"></iframe>
											</td>
										</tr>
									</table>						
								</td>
							  </tr>
                     
                    </table></td>
                </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</form> 	
<%                            
 }catch(Exception e){
	out.println(e);
}
%>
</body>
</html>                 		                      
		                      
		                      
		                      
               

