<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../Error.jsp"%>
<%@include file="../taglibs.jsp" %>
<%@include file="../sessionValidate.jsp" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="<s:url value='/css/right.css'/>" type="text/css" media="all" />
<style type="text/css">
.mytb01{ width:90%; border-top:1px solid #cccccc; border-left:1px solid #cccccc; background-color:#F9F9F9; color:gray;}
.mytb01 td { border-bottom:1px solid #cccccc; border-right:1px solid #cccccc;padding:2px; }
.mytb01 .lb td{color:#d57626; }
</style>

<script type="text/javascript">

	function gotoAdd(){
		
		Usermanager.target="_parent";
		Usermanager.="toaddUser.";
		Usermanager.submit();
		
	}
	
	function deletesubmit(obj){
		
		Usermanager. = "T_user_detailDelete.";
		Usermanager.submit();
	}
	
	function gotoUpdate(){
	
		if(checkroleIDS()!=false){
			Usermanager.target="_parent";
			Usermanager. = "T_user_detailUpdate.";
			Usermanager.submit();
		}
		else{
			return false;
		}
		
	}
	
	
	//�����ѡ��
	function checkroleIDS(){                                   
	   var obj,count,obj1;   
       obj=document.getElementsByName("ids");   
       count=0;   
       for(i=0;i<obj.length;i++)   
       {   
          if(obj[i].checked==true) 
          {
          	count++;
          	obj1=obj[i];
          }
       }   
       if(count<1)   
       {   
          alert("��ѡ��һ����¼���в���!");
          return false;   
       }   
       else if (count>1)   
       {   
          alert("��ѡ��һ����¼���в�����");   
          return  false;   
       } 
      	return obj1.value;
      
                 
  	 }   
	 function showRoleFunction(){
	 	var result =checkroleIDS();
	 	if(result!=false){
			self.location= "T_role_findFunctionbyRoleid.?roleid=" + result ;

		}
		else{
			return false;
		}
	 }
</script>

</head>
<style>
td{
	font-size:12px;
}
.a2 {
	font-size: 14px;
	font-weight: bold;
	color: #FF6600;
}
</style>


<%
String dealerid=(String)request.getParameter("t_player_log.dealerid");
String touser=(String)request.getParameter("t_player_log.touser");
String insertbegindate=(String)request.getParameter("t_dealer_log.insertbegindate");
String insertenddate=(String)request.getParameter("t_dealer_log.insertenddate");

%>
<body>
<s:form theme="simple" name="Usermanager">
	
<table id="right-tb"  class="mytb01" border="0" cellpadding="0" cellspacing="0">
	<tr style="font: bold;">
		<td width="5%">&nbsp;</td>
		<td>�û��ʺ�</td>
		<td>�û�����</td>
		<td>״̬</td>
		<td>����ʱ��</td>
		<td>����</td>
	</tr>
<s:iterator value="paginationSupport.items" status="stuts">
<tr>
	
	<td width="5%"><input type="checkbox" id="ids" name="ids" style="border: 0px;" value="${dealerno}"/></td>
	<td><s:property value="dealerid" /></td>
	<td><s:property value="username" /></td>
	<td><s:if test="${status==1}">
    <div>����</div></s:if>
		<s:else>
    <div>�Ѷ���</div>
</s:else>
</td>
	<td>
		<s:property value="createdate"/>
		
	</td>
	<td height="15">
		
		 <a href="${basePath}resourcemanage/T_user_detailGetPower.?dealerno=${dealerno}&username=${username}" target="_parent" id="${dealerid }">
		 	<img src='${basePath}/images/freetree/config.gif'  style="cursor: pointer" alt="����Ȩ��" title="����Ȩ��"  height="15" >
		 </a>&nbsp;
		 <a href="${basePath}resourcemanage/T_user_detailDelete.?dealerno=${dealerno}" target="_parent" >
		 	<img src='${basePath}/images/freetree/delete.gif'  style="cursor: pointer" alt="ɾ���û�" title="ɾ���û�"  height="15" >
		 </a>&nbsp;
		 <a href="${basePath}resourcemanage/T_user_detailUpdate.?dealerno=${dealerno}" target="_parent" >
		 	<img src='${basePath}/images/freetree/modify.gif'  style="cursor: pointer" alt="�޸��û�" title="�޸��û�"  height="15" >
		 </a>
	</td>
</tr>
</s:iterator>
<tr>
	<td colspan="6" align="center">�� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="/T_user_detailUserList.">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/T_user_detailUserList.">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/T_user_detailUserList.">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />

							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/T_user_detailUserList.">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
								<s:param name="t_user_detail.dealerstr" value="t_user_detail.dealerstr" />
								<s:param name="t_user_detail.username" value="t_user_detail.username" />

							 </s:url>'>βҳ</a>
							 ��<s:property value="paginationSupport.totalCount"  />��					      </td>
	</tr>
	</table>
		<table align="left" id="right-tb-tb">
		<tr>
			<td width="40%">&nbsp;</td>
			<td>
				<input type="button" value="���" onclick="gotoAdd()" />
				<input type="button" value="ɾ��" onclick="deletesubmit(-1)"/>
				<input type="button" value="�޸�" onclick="return gotoUpdate()"/>
				
			</td>
		</tr>
	
	</table>
	

	
</s:form>
</body>
</html>
