<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<%@ page import="com.xuka.domain.T_function"%>
<%@include file="../taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>��Դ����</title>
<link rel="stylesheet" href="<s:url value='/css/right.css'/>" type="text/css" media="all" />
<link rel="stylesheet" href="<s:url value='/css/dtree.css'/>" type="text/css" media="all" />
<script type="text/javascript" src="${basePath}js/dtree.js"></script>

<script type="text/javascript">
	
	
	
	
	
	
	
	//У���ѡ��
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
          alert("��ѡ��һ����¼���в��������Ӳ�����ѡ��һ�����ڵ㣩!");
          return false;   
       }   
      
      
       return obj1;
                 
  	 }   
	//У���ѡ��ֻѡ��һ�����ύ����
	function updatefunction(){
		var obj = checkfunctionIDS();
		
		if(obj.value==0){
			alert('���ڵ㲻���޸�');
			return false;
		}
		if(obj!=false){
			treeform. = "T_role_function_updateFunctionOfRole.";
			
			treeform.submit();
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
<body >
<s:form name="treeform" id="treeform">
	<s:hidden name="roleid" value="${roleid}"></s:hidden>
	<table width="100%" border="0" align="center" >
		
		<tr align="left">
			
			
			
			<td>
			
				<div class="dtree">
					
					<script type="text/javascript">
					<!--
						d = new dTree('d');
						d.add("0",-1,'��Դ����',"javascript:changetree();");     
       				 	<%	
							List cataList = (List)request.getAttribute("select_t_role_functions");
       				 		T_function t_function = null;
       				 		String checked="";
	    					Iterator itr = cataList.iterator();
							while (itr.hasNext()) {
								t_function = (T_function) itr.next();
								if(t_function.isChecked()){
									checked="CHECKED";
								}
								else{
									checked="";
								}
	    				%>	
						d.add("<%=t_function.getFuncid()%>","<%=t_function.getPid() %>","<input type=\"checkbox\" id=\"ids\" name=\"ids\" <%=checked%>  value=\"<%=t_function.getFuncid()%>\"><%=t_function.getName()%>","","","bodyFrame");
       					<%}%>
						document.write(d);
					//-->
					</script>

					</div>
			
			
			</td>
		</tr>
		
		
	</table>
	<table align="left" id="right-tb-tb" width="100%"> 
				<tr>
				<td width="40%">&nbsp;</td>
				<td><input name="button" type="button" onClick="updatefunction()" value="����"/>
				<input type="button" value="����"  onclick="javascript:history.go(-1);">
				</td>
				
				
				</tr>
			 </table>
</s:form>
</body>
</html>