<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_customer信息列表页</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
</head>

<script>
//提示操作结果
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}
</script>
<body class="mainBody"  onLoad='jo()'  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>

<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;企业信息列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                         
                         <s:form action="T_customerActionRemoveBatch.action" theme="simple">
                         
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
                                <!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">选择</strong></th>					      
					             -->
								<%--<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客户编号</strong></th>--%>
					             <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客户名称</strong></th>               
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">电话</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">地址</strong></th>                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">登录账号</strong></th>                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">备注</strong></th>                    
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;操作&nbsp;</strong></th>					          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
							  <!-- <td height="25" align="center" valign="middle"><input type="checkbox" name="ids" value="<s:property value='id' />" /></td>		   												          
					          -->
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="name" />&nbsp;					          		          					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="tel" />&nbsp;					          
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="address" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					                <s:property value="accountno" />&nbsp;
					                <!--<s:if test ="%{iskfp!=0}"> <s:property value="iskfp" /> </s:if>
					            	<s:else>不开发票</s:else>&nbsp;	-->				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					          	
					          	<a href='<s:url action="T_customerActionEdit.action"><s:param name="id" value="id" /></s:url>' >编辑</a>&nbsp;
                              	<!-- <a href='<s:url action="T_customerActionRemove.action" ><s:param name="id" value="id" /></s:url>'>删除</a>&nbsp;
                              	 -->
					          	<a href='<s:url action="T_customerActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'>查看</a>
					         
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <!--  -->
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_customerActionFindLike.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 	<s:param name="name" value="%{t_customer.name}" />
							 	<s:param name="tel" value="%{t_customer.tel}" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_customerActionFindLike.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 	<s:param name="name" value="%{t_customer.name}" />
							 	<s:param name="tel" value="%{t_customer.tel}" />							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_customerActionFindLike.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 	<s:param name="name" value="%{t_customer.name}" />
							 	<s:param name="tel" value="%{t_customer.tel}" />							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_customerActionFindLike.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 	<s:param name="name" value="%{t_customer.name}" />
							 	<s:param name="tel" value="%{t_customer.tel}" />							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条 									
					      </td>
                        </tr>
                        
                      <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			              <input type="button" name="add" value="    新增    " class="btn" onClick="javascript:window.parent.location.href='<s:url value="/jsp/t_customer/t_customerAdd.jsp"/>'" style="cursor:hand">&nbsp;
			              <!-- <input type="submit" name="del" value="    删除    " class="btn">
			               -->
                         </td>
                      </tr>
                    </table>
                    </s:form>
                    
                    </td>
                </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
