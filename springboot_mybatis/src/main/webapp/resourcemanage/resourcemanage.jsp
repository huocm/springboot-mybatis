<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ page import="java.util.List"%>
<%@ page import="com.xuka.domain.T_function"%>
<%@ page import="java.util.Iterator"%>
<%@include file="../taglibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<c:set var="basePath" scope="page"
	value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />

<s:head theme="ajax" />

<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>��Դ����</title>
<link rel="stylesheet" href="<s:url value='/css/right.css'/>" type="text/css" media="all" />
<link rel="stylesheet" href="<s:url value='/css/dtree.css'/>" type="text/css" media="all" />
<script type="text/javascript" src="${basePath}js/dtree.js"></script>
<style>

.mytb01{ width:90%; border-top:1px solid #cccccc; border-left:1px solid #cccccc; background-color:#F9F9F9; color:gray;}
.mytb01 td { border-bottom:1px solid #cccccc; border-right:1px solid #cccccc;padding:2px; }
.mytb01 .lb td{color:#d57626; }
.a2 {
	font-size: 14px;
	font-weight: bold;
	color: #FF6600;
}
</style>
<script type="text/javascript">
	
	function addfunction(){
		var funcid = getCheckboxValue();
		if(funcid!=null){
			var url = "${basePath}resourcemanage/addresource.jsp?funcid=" + funcid
			self.location.href= url;
		}
		
		
		
	}
	function deletefunction(){
		if(deletecheck()!=false){
			
			
			treeform.action = "T_functionAction_remove.action";
			treeform.submit();
		
		}
		
	}
	
	//ɾ������
	function deletecheck(){
	
		var obj=document.getElementsByName("ids");   
       	
       	for(i=0;i<obj.length;i++)   
      	{   
          	if(obj[i].checked==true) 
        	{
        		
          		if(obj[i].value==0)
          		{
          			alert('���ڵ㲻��ɾ����');
          			return false;
          		}
          	
        	}  
       }   
	}
	
	//�õ���ѡ��ѡ�е�ֵ
	function getCheckboxValue(){
		var checkbox = checkfunctionIDS();
		if(checkbox!=false){
			return checkbox.value;
		}
		
		
	}
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
          alert("��ѡ��һ����¼���в�������Ӳ�����ѡ��һ�����ڵ㣩!");
          return false;   
       }   
       else if (count>1)   
       {   
          alert("��ѡ��һ����¼���в�������Ӳ�����ѡ��һ�����ڵ㣩��");   
          return  false;   
       } 
      
       return obj1;
                 
  	 }   
	//У���ѡ��ֻѡ��һ�����ύ��
	function updatefunction(){
		var obj = checkfunctionIDS();
		if(obj.value==0){
			alert('���ڵ㲻���޸�');
			return false;
		}
		if(obj!=false){
			treeform.action = "T_functionAction_findByPrimaryKey.action";
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
<body>

<s:form name="treeform" id="treeform">
	<table width="100%" border="0" align="center"  style="background-color: #F9F9F9">
		
		<tr align="left">
			
			
			<td>
			
				<div class="dtree">
					
					<script type="text/javascript">
					<!--
						d = new dTree('d');
						d.add("0",-1,'��Դ����',"javascript:changetree();");     
       				 	<%	
							List cataList = (List)request.getAttribute("t_functions");
       				 		T_function t_function = null;
	    					Iterator itr = cataList.iterator();
							while (itr.hasNext()) {
								t_function = (T_function) itr.next();
	    				%>	
						d.add("<%=t_function.getFuncid()%>","<%=t_function.getPid() %>","<input type=\"checkbox\" id=\"ids\" name=\"ids\" value=\"<%=t_function.getFuncid()%>\"><%=t_function.getName()%>","","","bodyFrame");
       					<%}%>
       					
						document.write(d);
						
					//-->
					</script>

					</div>
			
			
			</td>
		</tr>
		
		<tr>
			
			<td align="left" colspan="2">
			<table id="right-tb-tb"> 
				<tr>
					<td width="40%">&nbsp;</td>
				<td><input name="button" type="button" onClick="addfunction()" value="���" />

				<input name="button2" type="button" value="ɾ��" onclick="return deletefunction()" />
				

				<input name="button2" type="button" value="�޸�" onclick="return updatefunction()"></td>
				</tr>
			 </table>
			</td>
			
		</tr>
	</table>
</s:form>
</body>
</html>
