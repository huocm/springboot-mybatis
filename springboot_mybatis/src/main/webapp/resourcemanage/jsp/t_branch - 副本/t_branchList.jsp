<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_branch��Ϣ�б�ҳ</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>    
</head>

<script>
//��ʾ�������
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}
</script>
<body class="mainBody" onLoad='jo()' leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="T_branchActionRemoveBatch.action" theme="simple">

<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td height="3" bgcolor="2d6094"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom" background="<s:url value='/images/1_09.gif'/>"><span class="daohang">��ϵͳ����&gt;&gt; ���Ż�������</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="3">
                <tr>
                  <td height="229" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;������Ϣ�б�ҳ&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>

					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��������</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��������</strong></th>          
					            <!--  <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�����ֹ�˾</strong></th> -->         
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">˵��</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ϼ���������</strong></th>          
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;����&nbsp;</strong></th>					          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="deptid" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="deptname" />		                 					                   
					          </td>
					          <!--  <td height="25" align="center" valign="middle">&nbsp;
					            	<s:if test="${branchid}=='1111'" >�Ϻ��ֹ�˾</s:if><s:elseif test="${branchid}=='2222'">�Ͼ��ֹ�˾</s:elseif>
					            	<s:elseif test="${branchid}=='3333'">�人�ֹ�˾</s:elseif> 
					            	<s:elseif test="${branchid}=='4444'">���ݷֹ�˾</s:elseif>  
					            	<s:elseif test="${branchid}=='9999'">����ܹ�˾</s:elseif>
					            	<s:else>�����ֹ�˾</s:else>             					                   
					          </td>-->
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo" />             					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="pdeptid" />            					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					          <!-- 	
					          <a href='<s:url action="T_branchActionEdit.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/modify.png' border="0" alt="�༭" title="�༭"  height="15" >�༭</a>&nbsp;
                              	 -->
                              	<a href='<s:url action="T_branchActionRemove.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="ɾ��" title="ɾ��"  height="15" >ɾ��</a>&nbsp;
					          <!--
					          	<a href='<s:url action="T_branchActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="�鿴" title="�鿴"  height="15" >�鿴</a>
					           -->
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="/T_branchActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/T_branchActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/T_branchActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/T_branchActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>βҳ</a>
							 ��<s:property value="paginationSupport.totalCount"  />�� 									
					      </td>
                        </tr>
                      <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			              <input type="button" name="add" value="    ����    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_branch/t_branchAdd.jsp"/>'" style="cursor:hand">&nbsp;
			              
                         </td>
                      </tr>
                    </table></td>
                </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
	
</s:form>
</body>
</html>
