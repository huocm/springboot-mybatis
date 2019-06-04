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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_role信息列表页</title>
    <link rel="stylesheet" href="<%= basePath %>/css/style.css" type="text/css">
    <script language="JavaScript" src="<%= basePath %>/js/global.js"></script>
    <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
</head>
<script type="text/javascript">
	
	function editsubmit(){		
		var rolename = document.getElementById('rolename').value;		
		if(rolename==null || rolename ==''){
			alert('角色名称不能为空！');
			return false;
		}

		form1.action = "<%= basePath %>rm/t_roleEditSave.jsp";
		form1.submit();
	
	}
	
</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<%
String roidid = (String) request.getParameter("roidid");
%>
<form action="" method="post" name="form1">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<%= basePath %>images/1_09.gif"><img src="images/1_08.gif" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<%= basePath %>images/1_09.gif" ><span class="daohang">·权限管理&gt;&gt; <a href="<%= basePath %>rm/t_roleList.jsp">角色管理&gt;&gt; 修改角色</a></span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="5" cellpadding="0">
	       <tr align="left" valign="bottom">
	        <td height="28" bgcolor="#FFFFFF" colspan="4">                                	
	          <input type="button" class="btn" value="    保存    " name="B1" onClick="editsubmit()">
			  <input type="reset"  class="btn" value="    清除    " name="B2">
			  <input type="button" class="btn" value="    返回    " name="B1" onClick="javascript:history.back(-1)">
	        </td>
	       </tr>					              
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="229" valign="top" >
                    
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <!-- <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<%= basePath %>images/1_27.gif" ><img src="<%= basePath %>images/1_26.gif" width="21" height="24"></td>
                              <td align="left" background="<%= basePath %>images/1_27.gif" class="daohang" >角色信息增加页</td>
                            </tr>
                        </table></td>
                      </tr>-->                      
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">角色名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="rolename"  maxLength='11' value="<%= codeString(request.getParameter("rolename")) %>" />
							    <input type="hidden"  name="roleid"  value="<%= request.getParameter("roleid") %>" />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">是否可用:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                              <select name='isuse'>        
                           <%
                           if( request.getParameter("isuse")!=null&& request.getParameter("isuse").equals("1")  )
                               {
                        	       out.print("<option value='1' selected>可用</option><option value='0'>不可用</option>");
                               }else{
                            	   out.print("<option value='0' selected>不可用</option><option value='1' >可用</option>");
                               }
                           %> 
                           </select> 

							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>							
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">说明:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="memo"  maxLength='20' value="<%= codeString(request.getParameter("memo")) %>"/>
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                         </table>
                        
						</td>
                      </tr>					  
					</table>
					
                  </td>
                </tr>
              </table>
             
             </td>
           </tr>
        </table>
       
       </td>
      </tr>
    </table>
   
   </td>
  </tr>
</table>

</form>
</body>
</html>
	