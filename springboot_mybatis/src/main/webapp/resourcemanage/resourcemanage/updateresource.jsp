<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ page import="com.xuka.domain.T_function"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="../taglibs.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
<link rel="stylesheet" href="<s:url value='/css/right.css'/>" type="text/css" media="all" />
</head>
<script type="text/javascript">
	
	function updatesubmit(){
		if(updatecheck()==false){
			alert('��Դ���Ʋ���Ϊ�գ�');
			return false;
		}
		else{
			updatefunction.action = "T_functionAction_update.action";
			updatefunction.submit();
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


<s:form name="updatefunction" id="updatefunction" method="POST">
	
	<s:hidden name="t_function.sysno" value="${t_function.sysno}" />
	<s:hidden name="t_function.funcid" value="${t_function.funcid}" />
	<s:hidden name="t_function.pid" value="${t_function.pid}" />
	<table width="30%" border="0" align="center" style="background-color: #F5F5F5">
		<tr align="center">
			<td width="30%">&nbsp;</td>
			<td colspan="2" align="center">�����Դ</td>
		</tr>
		<tr>
			 
			<td><s:textfield name="t_function.name"
				value="${t_function.name} " label="��Դ����" id="name" /></td>
		</tr>
		<tr>

			<td><s:textfield name="t_function.memo"
				value="${t_function.memo}" label="��ע" /></td>
		</tr>
		
		<tr>
			<td>
				<s:select list="#{'1':'����','0':'������'}"   name="t_function.isuse" value="${t_function.isuse}" label="�Ƿ����"></s:select>
			</td>
		</tr>
		<tr align="center">
			<table id="right-tb-tb">
				<tr>
					<td width="50%">&nbsp;</td>
					<td colspan="2"><input type="button" value="�޸�"
					onclick="return updatesubmit()">
					<input type="button" value="����"  onclick="javascript:history.go(-1);">
					</td>
				</tr>
			</table>
		</tr>
	</table>

</s:form>

</body>
</html>
