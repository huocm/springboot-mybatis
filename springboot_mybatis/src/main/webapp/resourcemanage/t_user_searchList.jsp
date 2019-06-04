<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../Error.jsp"%>
<%@include file="../taglibs.jsp" %>
<%@include file="../sessionValidate.jsp" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="<s:url value='/css/right.css'/>" type="text/css" media="all" />
<style type="text/css">
.mytb01{ width:90%; border-top:1px solid #cccccc; border-left:1px solid #cccccc; background-color:#F9F9F9; color:gray;}
.mytb01 td { border-bottom:1px solid #cccccc; border-right:1px solid #cccccc;padding:2px; }
.mytb01 .lb td{color:#d57626; }
</style>

<script type="text/javascript">

	function gotoAdd(){
		
		Usermanager.target="_parent";
		Usermanager.="toaddUser.";
		Usermanager.submit();
		
	}
	
	function deletesubmit(obj){
		
		Usermanager. = "T_user_detailDelete.";
		Usermanager.submit();
	}
	
	function gotoUpdate(){
	
		if(checkroleIDS()!=false){
			Usermanager.target="_parent";
			Usermanager. = "T_user_detailUpdate.";
			Usermanager.submit();
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
			self.location= "T_role_findFunctionbyRoleid.?roleid=" + result ;

		}
		else{
			return false;
		}
	 }
</script>

</head>
<style>
td{
	font-size:12px;
}
.a2 {
	font-size: 14px;
	font-weight: bold;
	color: #FF6600;
}
</style>


<%
String dealerid=(String)request.getParameter("t_player_log.dealerid");
String touser=(String)request.getParameter("t_player_log.touser");
String insertbegindate=(String)request.getParameter("t_dealer_log.insertbegindate");
String insertenddate=(String)request.getParameter("t_dealer_log.insertenddate");

%>
<body>
<s:form theme="simple" name="Usermanager">
	
<table id="right-tb"  class="mytb01" border="0" cellpadding="0" cellspacing="0">
	<tr style="font: bold;">
		<td width="5%">&nbsp;</td>
		<td>用户帐号</td>
		<td>用户名称</td>
		<td>状态</td>
		<td>创建时间</td>
		<td>操作</td>
	</tr>
<s:iterator value="paginationSupport.items" status="stuts">
<tr>
	
	<td width="5%"><input type="checkbox" id="ids" name="ids" style="border: 0px;" value="${dealerno}"/></td>
	<td><s:property value="dealerid" /></td>
	<td><s:property value="username" /></td>
	<td><s:if test="${status==1}">
    <div>正常</div></s:if>
		<s:else>
    <div>已冻结</div>
</s:else>
</td>
	<td>
		<s:property value="createdate"/>
		
	</td>
	<td height="15">
		
		 <a href="${basePath}resourcemanage/T_user_detailGetPower.?dealerno=${dealerno}&username=${username}" target="_parent" id="${dealerid }">
		 	<img src='${basePath}/images/freetree/config.gif'  style="cursor: pointer" alt="配置权限" title="配置权限"  height="15" >
		 </a>&nbsp;
		 <a href="${basePath}resourcemanage/T_user_detailDelete.?dealerno=${dealerno}" target="_parent" >
		 	<img src='${basePath}/images/freetree/delete.gif'  style="cursor: pointer" alt="删除用户" title="删除用户"  height="15" >
		 </a>&nbsp;
		 <a href="${basePath}resourcemanage/T_user_detailUpdate.?dealerno=${dealerno}" target="_parent" >
		 	<img src='${basePath}/images/freetree/modify.gif'  style="cursor: pointer" alt="修改用户" title="修改用户"  height="15" >
		 </a>
	</td>
</tr>
</s:iterator>
<tr>
	<td colspan="6" align="center">共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_user_detailUserList.">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_user_detailUserList.">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_user_detailUserList.">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />

							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_user_detailUserList.">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />

							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条					      </td>
	</tr>
	</table>
		<table align="left" id="right-tb-tb">
		<tr>
			<td width="40%">&nbsp;</td>
			<td>
				<input type="button" value="添加" onclick="gotoAdd()" />
				<input type="button" value="删除" onclick="deletesubmit(-1)"/>
				<input type="button" value="修改" onclick="return gotoUpdate()"/>
				
			</td>
		</tr>
	
	</table>
	

	
</s:form>
</body>
</html>
