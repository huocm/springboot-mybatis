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
			alert('��ɫ���Ʋ���Ϊ�գ�');
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
				<td>��ӽ�ɫ</td>
			</tr>
		</table>
		
		
		</td>
	</tr>
	<tr>
		<td><s:textfield name="t_role.rolename" id="name" label="��ɫ����" /></td>
	</tr>
	<tr>
		<td><s:textfield name="t_role.roleval" id="author" label="��ɫֵ" /></td>
	</tr>
	<tr>
		<td><s:textfield name="t_role.author" id="author" label="������" /></td>
	</tr>	
	<tr>
		<td><s:textfield name="t_role.memo" id="memo" label="��ע" /></td>
	</tr>
	<s:hidden name="t_role.isuse" value="1"></s:hidden>
	
	
</table>
<table id="right-tb-tb" >
<tr align="center">
		<td width="40%">&nbsp;</td>
		<td colspan="2"><input type="button" onclick="return addsubmit();" value="���">
		<input type="button" value="����"  onclick="javascript:history.go(-1);">
	</tr>
</table>
</s:form>

</body>
</html>
