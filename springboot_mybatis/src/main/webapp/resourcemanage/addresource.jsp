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
			alert('��Դ���Ʋ���Ϊ�գ�');
			return false;
		}
		else{

			addfunctionform. = "T_function_save.";
			addfunctionform.submit();
		}
		
	}
	function addcheck(){
	
		var name = document.getElementById('name').value;
		
		if(name==null || name ==''){
			return false;
		}
		
	}
	

</script>
<%
String funcid = (String) request.getParameter("funcid");
%>
<body>


<s:form   name="addfunctionform" id="addfunctionform" method="post">
<table width="30%" border="2" align="center" >
	<tr align="center">
		
		<td align="center" colspan="2">
		<table align="center">
			<tr>
				<td>�����Դ</td>
			</tr>
		</table>
		
		
		</td>
	</tr>
	<tr>
		<td><s:textfield name="t_function.name" id="name" label="��Դ����"  /></td>
	</tr>
	<tr>
		<td><s:textfield name="t_function.memo" id="memo" label="��ע" /></td>
	</tr>
	<tr>
			<td>
				<s:select list="#{'1':'����','0':'������'}"   name="t_function.isuse" value="${t_function.isuse}" label="�Ƿ����"></s:select>
			</td>
		</tr>
	<s:hidden name="t_function.pid" value="<%=funcid%>" />

	<tr>
		<table id="right-tb-tb">	
			<tr>
				<td width="50%">&nbsp;</td>
				<td colspan="2"><input type="button" onclick="return addsubmit();" value="���">
				<input type="button" value="����"  onclick="javascript:history.go(-1);">
				</td>
			</tr>
		</table>
	</tr>
</table>

</s:form>

</body>
</html>
