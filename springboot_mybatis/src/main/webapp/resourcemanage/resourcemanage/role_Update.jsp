<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="../taglibs.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>��ɫ�޸�</title>
<link rel="stylesheet" href="<s:url value='/css/right.css'/>" type="text/css" media="all" />
</head>
<script type="text/javascript">
	
	function updatesubmit(){
		
			
		if(updatecheck()==false){
			alert('��ɫ���Ʋ���Ϊ�գ�');
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
				<td>�޸Ľ�ɫ��Ϣ</td>
			</tr>
		</table>
		
		
		</td>
	</tr>
	
	<s:hidden name="t_role.roleid" value="${t_role.roleid}"></s:hidden>
	
	<tr>
		<td>
			<s:textfield name="t_role.rolename" label="��ɫ����" value="${t_role.rolename}" id="name" required="true"></s:textfield>
		</td>
	</tr>
	<tr>
		<td>
			<s:textfield name="t_role.roleval" label="��ɫֵ" value="${t_role.roleval}"></s:textfield>
		</td>
	</tr>
	<tr>
		<td>
			<s:textfield name="t_role.author" label="������" value="${t_role.author}"></s:textfield>
		</td>
	</tr>
	<tr>
		<td>
			<s:textfield name="t_role.memo" label="��ɫ����" value="${t_role.memo}"></s:textfield>
		</td>
	</tr>
	<tr>
		<td>
			<s:select list="#{'1':'����','0':'������'}"   name="t_role.isuse" value="${t_role.isuse}" label="�Ƿ����"></s:select>
		</td>
	</tr>
	
</table>
<table id="right-tb-tb" >
<tr align="center">
		<td width="40%">&nbsp;</td>
		<td >
			<input type="button" onclick="return updatesubmit();" value="�޸�">
			<input type="button" value="����"  onclick="javascript:history.go(-1);">
		</td>

	</tr>
</table>
</s:form>

</body>
</html>
