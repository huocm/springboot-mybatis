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
			alert('资源名称不能为空！');
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
			<td colspan="2" align="center">添加资源</td>
		</tr>
		<tr>
			 
			<td><s:textfield name="t_function.name"
				value="${t_function.name} " label="资源名称" id="name" /></td>
		</tr>
		<tr>

			<td><s:textfield name="t_function.memo"
				value="${t_function.memo}" label="备注" /></td>
		</tr>
		
		<tr>
			<td>
				<s:select list="#{'1':'可用','0':'不可用'}"   name="t_function.isuse" value="${t_function.isuse}" label="是否可用"></s:select>
			</td>
		</tr>
		<tr align="center">
			<table id="right-tb-tb">
				<tr>
					<td width="50%">&nbsp;</td>
					<td colspan="2"><input type="button" value="修改"
					onclick="return updatesubmit()">
					<input type="button" value="返回"  onclick="javascript:history.go(-1);">
					</td>
				</tr>
			</table>
		</tr>
	</table>

</s:form>

</body>
</html>
