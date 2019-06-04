<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="../taglibs.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>角色修改</title>
<link rel="stylesheet" href="<s:url value='/css/right.css'/>" type="text/css" media="all" />
</head>
<script type="text/javascript">
	
	function updatesubmit(){
		
			
		if(updatecheck()==false){
			alert('角色名称不能为空！');
			return false;
		}
		else{

			updateRoleform.action = "T_roleAction_update.action";
			updateRoleform.submit();
		}
		
	}
	function updatecheck(){
	
		var name = document.getElementById('name').value;
		
		if(name==null || name ==''){
			return false;
		}
		
	}
	
</script>

<body>


<s:form   name="updateRoleform" id="updateRoleform" method="post">
<table width="30%" border="0" align="center" >
	<tr align="center">
		
		<td align="center" colspan="2">
		<table>
			<tr>
				<td>修改角色信息</td>
			</tr>
		</table>
		
		
		</td>
	</tr>
	
	<s:hidden name="t_role.roleid" value="${t_role.roleid}"></s:hidden>
	
	<tr>
		<td>
			<s:textfield name="t_role.rolename" label="角色名称" value="${t_role.rolename}" id="name" required="true"></s:textfield>
		</td>
	</tr>
	<tr>
		<td>
			<s:textfield name="t_role.roleval" label="角色值" value="${t_role.roleval}"></s:textfield>
		</td>
	</tr>
	<tr>
		<td>
			<s:textfield name="t_role.author" label="创建人" value="${t_role.author}"></s:textfield>
		</td>
	</tr>
	<tr>
		<td>
			<s:textfield name="t_role.memo" label="角色名称" value="${t_role.memo}"></s:textfield>
		</td>
	</tr>
	<tr>
		<td>
			<s:select list="#{'1':'可用','0':'不可用'}"   name="t_role.isuse" value="${t_role.isuse}" label="是否可用"></s:select>
		</td>
	</tr>
	
</table>
<table id="right-tb-tb" >
<tr align="center">
		<td width="40%">&nbsp;</td>
		<td >
			<input type="button" onclick="return updatesubmit();" value="修改">
			<input type="button" value="返回"  onclick="javascript:history.go(-1);">
		</td>

	</tr>
</table>
</s:form>

</body>
</html>
