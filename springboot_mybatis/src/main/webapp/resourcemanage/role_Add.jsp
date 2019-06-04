<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="../taglibs.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
<link rel="stylesheet" href="<s:url value='/css/right.css'/>" type="text/css" media="all" />
</head>
<script type="text/javascript">
	
	function addsubmit(){
		
			
		if(addcheck()==false){
			alert('角色名称不能为空！');
			return false;
		}
		else{

			addroleform.action = "T_roleAction_save.action";
			addroleform.submit();
		}
		
	}
	function addcheck(){
	
		var name = document.getElementById('name').value;
		
		if(name==null || name ==''){
			return false;
		}
		
	}
	

</script>

<body>


<s:form   name="addroleform" id="addroleform" method="post">
<table width="30%" border="0" align="center">
	<tr align="center">
		
		<td align="center" colspan="2">
		<table>
			<tr>
				<td>添加角色</td>
			</tr>
		</table>
		
		
		</td>
	</tr>
	<tr>
		<td><s:textfield name="t_role.rolename" id="name" label="角色名称" /></td>
	</tr>
	<tr>
		<td><s:textfield name="t_role.roleval" id="author" label="角色值" /></td>
	</tr>
	<tr>
		<td><s:textfield name="t_role.author" id="author" label="创建人" /></td>
	</tr>	
	<tr>
		<td><s:textfield name="t_role.memo" id="memo" label="备注" /></td>
	</tr>
	<s:hidden name="t_role.isuse" value="1"></s:hidden>
	
	
</table>
<table id="right-tb-tb" >
<tr align="center">
		<td width="40%">&nbsp;</td>
		<td colspan="2"><input type="button" onclick="return addsubmit();" value="添加">
		<input type="button" value="返回"  onclick="javascript:history.go(-1);">
	</tr>
</table>
</s:form>

</body>
</html>
