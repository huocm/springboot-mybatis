<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<%@ page import="com.xuka.domain.T_role"%>
<%@ page import="com.xuka.domain.T_role_function"%>
<%@include file="../taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<c:set var="basePath" scope="page"
	value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />

<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>用户角色管理</title>
<link rel="stylesheet" href="${basePath}/css/right.css" type="text/css" media="all" />
<link rel="stylesheet" href="<s:url value='/css/dtree.css'/>" type="text/css" media="all" />
<script type="text/javascript" src="${basePath}js/dtree.js"></script>

<style>
td{
	font-size:12px;
}
.mytb td{td { border-bottom:1px solid ; border-right:1px solid ;padding:2px;border-top:1px solid }
.mytr{ font: bold;}
.a2 {
	font-size: 14px;
	font-weight: bold;
	color: #FF6600;
}
</style>
<script type="text/javascript">
	
	
	
	
	
	
	
	//校验多选框
	function   checkfunctionIDS(){                                   
	   var obj,count,obj1;   
       obj=document.getElementsByName("ids");   
       count=0;   
       for(i=0;i<obj.length;i++)   
       {   
          if(obj[i].checked==true) 
          {
          	count++;
          	obj1 =obj[i];
          }
       }   
       if(count<1)   
       {   
          alert("请选择一条记录进行操作（添加操作请选择一个父节点）!");
          return false;   
       }   
      
      
       return obj1;
                 
  	 }   
	//校验多选框只选中一个后提交表单
	function updaterole(){
		
			treeform.action = "T_user_roleActionUpdateRoleOfuser.action";
			
			treeform.submit();
		
	}
	
	function changeD1(num){

		var obj = document.getElementById('d'+num);
		var obj1 = document.getElementById('img'+num);
		if(obj.style.display=="none"){
			obj.style.display="block";
			obj1.src="${basePath}images/freetree/minustop.gif";
		}
		else if(obj.style.display=="block"){
			obj.style.display="none";
			obj1.src="${basePath}images/freetree/plustop.gif";
			
		}

	}
	var isopen=0;
	function changetree(){
		if(isopen==0){
			d.openAll();
			isopen=1;
		}
		else{
			d.closeAll();
			isopen=0;
		}
		
		
	}
</script>

</head> 
<body> 
<table align="left" width="100%" border="0" id="right-tb"  style="background-color: #F9F9F9">
	<tr>
		<td>  
<s:form name="treeform" id="treeform">
	<s:hidden name="dealerNo" value="${dealerNo}"></s:hidden>
	<table   width="100%" border="0" align="center" style="background-color: #F9F9F9">
		
		<tr align="center">
			<td>
			
				<div class="dtree">
					
					<script type="text/javascript">
					<!--
						d = new dTree('d');
						d.add("-2",'-1','角色配置',"javascript:changetree();");     
       				 	<%	
							List List = (List)request.getAttribute("t_roles");
       					 	T_role t_role = null;
       				 		String checked="";
	    					Iterator itr = List.iterator();
							while (itr.hasNext()) {
								t_role = (T_role) itr.next();
								if(t_role.isChecked()){
									checked="CHECKED";
								}
								else{
									checked="";
								}
								
								Iterator itr2 = t_role.getT_role_functions().iterator();
								
								while(itr2.hasNext()){
									
							
									T_role_function t_role_function = (T_role_function)itr2.next();
									System.out.println(t_role_function.getRoleid() );
								%>
								d.add("<%=t_role_function.getFuncid()%>","<%=t_role_function.getRoleid()%>","<%=t_role_function.getName()%> ","","","bodyFrame");
								
								<%	
								}
								
								
								
								
	    				%>	
						d.add("<%=t_role.getRoleid()%>","-2","<input type=\"checkbox\" id=\"ids\" name=\"ids\" <%=checked%>  value=\"<%=t_role.getRoleid() %>\"><%=t_role.getRolename()%>","","","bodyFrame");
       					<%}%>
						document.write(d);
					//-->
					</script>

					</div>
			
			
			
			
			</td>
			
		</tr>
		
		<tr>
			
			<td align="center" colspan="2">
			<table align="center" id="right-tb-tb"> 
				<tr>
					<td width="50%">&nbsp;</td>
				<td><input name="button" type="button" onClick="updaterole()" value="更新"/>
				<input type="button" value="返回"  onclick="javascript:history.go(-1);">
				</td>
				<td width="30%">&nbsp;</td>
				
				</tr>
			 </table>
			</td>
			
		</tr>
		
	</table>
</s:form>
</td>
</tr>
 </table>
</body>
</html>
