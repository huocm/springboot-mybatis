<%@ page language="java" contentType="text/html;charset=GBK"
	pageEncoding="GBK" errorPage="../Error.jsp"%>
<%@include file="../taglibs.jsp"%>
<%@include file="../sessionValidate.jsp"%>

<%@ page import="com.common.utils.PaginationSupport" %>
<%@ page import="com.xuka.domain.T_role" %>
<%@ page import="java.util.*" %>
<c:set var="basePath" scope="page"
	value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />

<s:head theme="ajax" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<meta http-equiv="Content-Language" content="zh-CN" />
<link rel="stylesheet" href="${basePath}css/right.css" type="text/css" media="all" />
</head>
<style>

.mytb01{ width:90%; border-top:1px solid #cccccc; border-left:1px solid #cccccc; background-color:#F9F9F9; color:gray;}
.mytb01 td { border-bottom:1px solid #cccccc; border-right:1px solid #cccccc;padding:2px; }
.mytb01 .lb td{color:#d57626; }
.a2 {
	font-size: 14px;
	font-weight: bold;
	color: #FF6600;
}
</style>
<script type="text/javascript">

	function gotoAdd(){
		 
		self.location = "${basePath}/resourcemanage/role_Add.jsp";
		
	}
	
	function deletesubmit(){
	
		roleform.action = "T_roleAction_removeBatch.action";
		roleform.submit();
	
	}
	
	function gotoUpdate(){
	
		if(checkroleIDS()!=false){
			roleform.action = "T_roleAction_findByIds.action";
			roleform.submit();
		}
		else{
			return false;
		}
		
	}
	
	
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
	 		var roleid = document.getElementById('roleid');
	 		roleid.value = result;
	 		
	 		roleform.action="T_roleAction_findFunctionbyRoleid.action";
	 		roleform.submit();
			//window.location= "${basePath}T_roleAction_findFunctionbyRoleid.action?roleid=" + result ;

		}
		else{
			return false;
		}
	 }
	 
	 
</script>
<body>
	<s:form id="roleform" name="roleform" method="POST" theme ="simple"> 
	<s:hidden name="roleid" id="roleid"></s:hidden>
	<table id="right-tb" class="mytb01" border="0" cellpadding="0"
		cellspacing="0" align="center">
		<tr style="font: bold;" align="center">
			<td>&nbsp;</td>
			<td>主键</td>
			<td>角色名称</td>
			<td>角色值</td>
			<td>是否可用</td>
			<td>产生时间</td>
			<td>创建者</td>
			<td>备注</td>
			<td>操作</td>
		</tr>
		
		
		
		<s:iterator value="paginationSupport.items" status="stuts">
			<tr> 
				<td align="center"><input type="checkbox" value="<s:property value="roleid"/>" name="ids" id="ids" style="border: 0px;"}"> </td>
				<td><s:property value="roleid"/></td>
				<td><s:property value="rolename"/></td>
				<td><s:property value="roleval"/></td>
				<td><s:if test="${isuse==1}">
					<div>可用</div></s:if>
				<s:else>
    				<div>不可用</div>
				</s:else></td>
				<td><s:date name="createdate" nice="false" format="yyyy-MM-dd hh:mm:ss" /></td>
				
				<td><s:property value="author"/></td>
				<td><s:property value="memo"/></td>
				<td>
					 <a href="${basePath}T_roleAction_removeBatch.action?id=${roleid}"  >
					 	<img src='${basePath}/images/freetree/delete.gif'  style="cursor: pointer" alt="删除用户" title="删除用户"  height="15" >
					 </a>&nbsp;
					 <a href="${basePath}T_roleAction_findByIds.action?id=${roleid}"  >
					 	<img src='${basePath}/images/freetree/modify.gif'  style="cursor: pointer" alt="修改用户" title="修改用户"  height="15" >
					 </a>
				</td>
			</tr>
		</s:iterator>
		<tr>
			<td colspan="9" align="center">共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_roleAction_showlist.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
															
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_roleAction_showlist.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
															
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_roleAction_showlist.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
																	

							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_roleAction_showlist.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
																	

							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条	
		</td>
							 
	</tr>
	</table>
 
	<table align="left" id="right-tb-tb">
		<tr>
			<td width="30%">&nbsp;</td>
			<td>
				<input type="button" value="添加" onclick="gotoAdd()"/>
				<input type="button" value="删除" onclick="deletesubmit()"/>
				<input type="button" value="修改" onclick="return gotoUpdate()"/>
				<input type="button" value="配置角色资源" onclick="return showRoleFunction()" />
			</td>
		</tr>
	
	</table>
	
	</s:form>
</body>
</html>
