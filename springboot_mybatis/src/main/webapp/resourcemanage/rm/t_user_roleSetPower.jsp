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


function add(){
    //checkfunctionIDS();
	//var roleid = document.getElementById("roleid").value;
	var url = '<%= basePath %>rm/t_user_roleSave.jsp';
	//self.location.href= url;
	//alert(url);
	form1.action= url;
	form1.submit();
}

//得到多选框选中的值
function getCheckboxValue(){
	var checkbox = checkfunctionIDS();
	if(checkbox!=false){
		return checkbox.value;
	}
}

//校验多选框
function   checkfunctionIDS(){                                   
   var obj,count,obj1;   
      obj=document.getElementsByName("ids");   
      count=0;   
      for(i=0;i<obj.length;i++)   
      {   
         if(obj[i].checked==true) 
         {
         	count++;
         	obj1 =obj[i];
         }
      }   
      if(count<1)   
      {   
         alert("请至少选择一条资源进行操作！");
         return false;   
      }   
      //else if (count>1)   
      //{   
      //   alert("请选择一条记录进行操作（添加操作请选择一个父节点）！");   
      //   return  false;   
      //}      
      return obj1;              
} 
</script>
<body class="mainBody" onLoad='if (domok) initTable("table0")' leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>
 <% try{ %>
<form action="" method="post" name="form1" >
<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">

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
                              <td background="<%= basePath %>images/1_27.gif" class="daohang">&nbsp;角色信息列表页&nbsp;
                              	<input type="hidden" name="dealerno" value="<%= request.getParameter("dealerno") %>" />
                              </td>                             
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                            <tr>
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">选择</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">角色名称</strong></th>                    
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">是否可用</strong></th>                
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">说明</strong></th>          
					           				          
                            </tr>
                            <%
                            //String ids = request.getParameter("ids");
                            System.out.print("------------------------>>>>>>>>>>>>>>>>>");
                            
                            Rm dao = new Rm();
                            //获取用户以前配置的较色，下面使用判断，有的话，直接输出 checked 选中
                            T_user_role t_user_role = new T_user_role();
                            t_user_role.setDealerno(Integer.parseInt( request.getParameter("dealerno")));
                            List listUserRole = dao.t_user_roleListFindByUser(t_user_role);
                        	
                        	                       	
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
                            <tr id="afuncid<%= vo.getRoleid() %>" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
							  <td height="25" align="center" valign="middle">
							  	<input type="checkbox" name="ids" value="<%= vo.getRoleid() %>" 
							  	<%
							  	  Iterator itUserRole = listUserRole.iterator();
							  	  while(itUserRole.hasNext()){
							  		t_user_role = (T_user_role)itUserRole.next();
							  		if(t_user_role.getRoleid() == vo.getRoleid()){
							  		    System.out.print("====t_user_role.getRoleid="+t_user_role.getRoleid()+"======vo.getRoleid()="+vo.getRoleid());
							  			out.print("checked");
							  			break;
							  		}
							  	  }
							  	
							  	%>
							  	
							  	/>

							  </td>		   							
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getRolename() %>&nbsp;</td>					                 					                   
					          <td height="25" align="center" valign="middle">&nbsp;<% if(vo.getIsuse()==1){out.print("可用");}else{out.print("不可用");} %>&nbsp;</td>
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getMemo() %>&nbsp;</td>
					          
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
			              <input type="button" value="  保存用户角色关系  " class="btn"  onclick="add()" />
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

