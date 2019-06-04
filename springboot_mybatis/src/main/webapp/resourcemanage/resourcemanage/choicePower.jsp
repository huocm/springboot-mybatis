<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@include file="../taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>

<script type="text/javascript">

	function change(flag){
		
		var role = document.getElementById('role');
		var func  = document.getElementById('function');
		
		if(flag==1){
			
			
			func.style.display='block';
			loadfuncframe();
			role.style.display='none';
		
		}
		
		if(flag==2){
			role.style.display='block';
			loadrolefreame();
			func.style.display='none';
			
		}
		
	}
	function loadfuncframe(){
		var funcframe = document.getElementById('function');
		funcframe.src="T_roleAction_findFunctionbyDealerNo.action?dealerNo=${dealerno}";
		
	}
	
	function loadrolefreame(){
		var funcframe = document.getElementById('role');
		funcframe.src="T_user_roleActionGetAllrole.action?dealerNo=${dealerno}";
	}
</script>
<link rel="stylesheet" href="${basePath}css/right.css" type="text/css" media="all" />
</head> 
<body  marginheight="0" marginwidth="0"> 


<table width="100%"  align="center" height="100%" id="right-tb"   marginheight="0" marginwidth="0">
  <tr>
  	<td>
  	<font style="font: bold">用户管理-->配置权限</font> &nbsp;&nbsp; 用户名: ${username } &nbsp;&nbsp;账号: ${dealerno}
  	</td>
  </tr>
  <tr>
    <td>
    	<input type="button" value="配置角色" onClick="change(2)" />
    
   
    	<input type="button" value="配置资源" onClick="change(1)" />
    	&nbsp;&nbsp;&nbsp;&nbsp;点击"+"查看角色资源
    </td>
    
  </tr>
  <tr>
    <td>
		<table  width="100%" height="100%" marginheight="0" marginwidth="0" >
			<tr>
				<td>
					<iframe id="role"  style="display: none;"  onload="this.height=this.contentWindow.document.body.scrollHeight+100" marginwidth="0" framespacing="0" marginheight="0" frameborder="0" width="100%" scrolling="yes"></iframe>
					<iframe id="function" style="display: none;" onload="this.height=this.contentWindow.document.body.scrollHeight+20" marginwidth="0" framespacing="0" marginheight="0" frameborder="0" width="100%" scrolling="yes"></iframe>
				</td>
			</tr>
		</table>
	
	</td>
  </tr>
</table>


</body>
</html>