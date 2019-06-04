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

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_role信息列表页</title>
    <link rel="stylesheet" href="<%= basePath %>/css/style.css" type="text/css">
    <script language="JavaScript" src="<%= basePath %>/js/global.js"></script>
</head>
<script>
//排序使用
var domok=document.all||document.getElementById
if (domok)
document.write('<SCRIPT SRC="<%= basePath %>/js/sorttable.js" ><\/SCRIPT>')
</script>
<script type="text/javascript">

	//检验多选框
	function checkroleIDS(){                                   
	   var obj,count,obj1;   
       obj=document.getElementsByName("ids");   
       count=0;   
       for(i=0;i<obj.length;i++)   
       {   
          if(obj[i].checked==true) 
          {
          	count++;
          	obj1=obj[i];
          }
       }   
       if(count<1)   
       {   
          alert("请选择一条记录进行操作!");
          return false;   
       }   
       else if (count>1)   
       {   
          alert("请选择一条记录进行操作！");   
          return  false;   
       } 
      	return obj1.value;                 
  	 }  
  	  
	 function showRoleFunction(){
	 	var result =checkroleIDS();
	 	
	 	if(result!=false){
	 		//var roleid = document.getElementById('roleid');
	 		//roleid.value = result;	 		
	 		var url="<%= basePath %>rm/t_role_functionList.jsp?roleid="+result;	 
	 		//alert(url);		
			window.location= url ;
		}
		else{
			return false;
		}
	 }
	 
</script>
<body class="mainBody" onLoad='' leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
 <% try{ %>
<form action="" method="post" name="form1" >
<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td height="3" bgcolor="2d6094"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<%= basePath %>images/1_09.gif"><img src="<%= basePath %>images/1_08.gif" width="8" height="25"></td>
        <td width="839" valign="bottom" background="<%= basePath %>images/1_09.gif"><span class="daohang">·权限管理&gt;&gt; 角色管理</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="3">
                <tr>
                  <td height="229" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="images/1_27.gif"><img src="<%= basePath %>images/1_26.gif" width="21" height="24"></td>
                              <td background="<%= basePath %>images/1_27.gif" class="daohang">&nbsp;角色信息列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                            <tr>
                                <!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">选择</strong></th>          
					             -->
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">角色名称</strong></th>                    
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">是否可用</strong></th>                
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">说明</strong></th>          
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">操作</strong></th> 					           				          
                            </tr>
                            <%
                            Rm dao = new Rm();
                            int pageSize = 10;
                            int startIndex = 0;
                            //if(request.getParameter("pageSize")!=null&&!request.getParameter("pageSize").equals("")){
                            //	pageSize  = Integer.parseInt(request.getParameter("pageSize"));
                            //}
                            //if(request.getParameter("startIndex")!=null&&!request.getParameter("startIndex").equals("")){
                            //	startIndex  = Integer.parseInt(request.getParameter("startIndex"));
                            //}
                            PaginationSupport pg = dao.t_roleList(pageSize, startIndex);
                            List list = pg.getItems();
                            if(list!=null){
	                            Iterator it = list.iterator();
	                            T_role vo = null;
	                            while(it.hasNext()){
	                            	vo = (T_role)it.next();
                           
                            
                            %>
                            <tr id="a<%= vo.getRoleid() %>" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
							  <!-- <td height="25" align="center" valign="middle"><input type="checkbox" name="ids" value="<%= vo.getRoleid() %>;<%= vo.getRolename() %>" /></td>		   							
					           -->
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getRolename() %>&nbsp;</td>					                 					                   
					          <td height="25" align="center" valign="middle">&nbsp;<% if(vo.getIsuse()==1){out.print("可用");}else{out.print("不可用");} %>&nbsp;</td>
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getMemo() %>&nbsp;</td>
					          <td height="25" align="center" valign="middle">&nbsp;					
					             <a href="<%= basePath %>rm/t_roleEdit.jsp?roleid=<%= vo.getRoleid() %>&rolename=<%= vo.getRolename() %>&memo=<%= vo.getMemo() %>&isuse=<%= vo.getIsuse() %>">&nbsp;<img src='<%= basePath %>images/modify.png' border="0" alt="修改" title="修改"  height="15" >修改</a>&nbsp;		
								 <a href="<%= basePath %>rm/t_role_functionList.jsp?roleid=<%= vo.getRoleid() %>;<%= vo.getRolename() %>">
								 	<img src='<%= basePath %>images/freetree/config.gif' border="0" alt="配置角色资源" title="配置角色资源"  height="15" >配置角色资源
								 </a>&nbsp;					        
					          </td>
					        </tr>		
                           <%
                               } //end while;
                            } //end if;
                            %>
                          
					    </table></td>
                      </tr>
                     <!--  <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 共 <b><%= pg.getTotalPageNo() %></b>页,当前第<b> <%= pg.getCurrentPageNo() %></b>页
							 <a href='<%= basePath %>/rm/t_functionList.jsp?pageSize=10&startIndex=<%= pg.getFirstIndex() %>'>首页</a>
							 <a href='<%= basePath %>/rm/t_functionList.jsp?pageSize=10&startIndex=<%= pg.getPreviousIndex() %>''>上一页</a>							 
							 <a href='<%= basePath %>/rm/t_functionList.jsp?pageSize=10&startIndex=<%= pg.getNextIndex() %>''>下一页</a>
							 <a href='<%= basePath %>/rm/t_functionList.jsp?pageSize=10&startIndex=<%= pg.getLastIndex() %>''>尾页</a>
							 共<%= pg.getTotalCount() %>条 									
					      </td>
                        </tr> -->
                      <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			              <input type="button" name="add" value="    新增角色    "  class="btn" onClick="javascript:window.location.href='<%= basePath %>rm/t_roleAdd.jsp'" >&nbsp;			              
			              <!-- 
			              <input type="button" value="  配置角色资源  " class="btn"  onclick="return showRoleFunction()" />&nbsp;
			              <input type="submit" name="del" value="    删除    " class="btn">
			              --> 
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

