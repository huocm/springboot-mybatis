<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>客户信息增加页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
<style type="text/css">
<!--
.STYLE5 {	color: #000000;
	font-size: 12px;
}
-->
</style>
</head>
<body  onLoad='jo()' leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·业务管理&gt;&gt; </span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="50" valign="top" >

                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >企业信息查询</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_customerActionFindLike" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="24" align="left" valign="middle" bgcolor="#F2F2F2">
							  &nbsp;&nbsp;客户名称:<s:textfield  name="name" maxlength='45'  label="name"/>
							  &nbsp;&nbsp;电话:<s:textfield  name="tel" maxlength='45'  label="tel"/>
							  <input type="submit" class="btn" value="    查询    " name="B1">
								<input type="reset"  class="btn" value="    清除    " name="B2">
							  </td>                             
                            </tr>	
                              </s:form>																		   
                         </table>                        
						</td>
                      </tr>					  
					</table>					
                  </td>
                </tr>
              </table>             
             </td>
           </tr>
        </table>
       </td>
      </tr>
    </table>
   </td>
  </tr>
</table>


<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="3">
                <tr>
                  <td height="29" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
                          
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
                                <!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">选择</strong></th>					      
					             -->
                               <%-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客户编号</strong></th>--%>
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客户名称</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">电话</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">传真</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">邮箱</strong></th> 
					                     
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">地址</strong></th>                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">登录账号</strong></th>                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客户类型</strong></th>                    
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;操作&nbsp;</strong></th>					          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
							  <!-- <td height="25" align="center" valign="middle"><input type="checkbox" name="ids" value="<s:property value='id' />" /></td>		   												          
					          -->
                               <%-- <td height="25" align="center" valign="middle">&nbsp;
                                    <s:property value="number1" />&nbsp;
                                </td>--%>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="name" />&nbsp;					          		          					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="tel" />&nbsp;					          
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="personid" />&nbsp;					          
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="cardno" />&nbsp;					          
					          </td>					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="address" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					                 <s:property value="accountno" />
					            						                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					          	<a href='<s:url action="T_customerActionEdit.action"><s:param name="id" value="id" /></s:url>' >&nbsp;<img src='<%= basePath %>images/modify.png' border="0" alt="修改" title="修改"  height="15" >编辑</a>&nbsp;
                              	<a href='<s:url action="T_customerActionRemove.action" ><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="删除" title="删除"  height="15" >删除</a>&nbsp;                             	 
					          	<!-- 
					          	<a href='<s:url action="T_customerActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'>查看</a>
					            
					            <a href='<%=basePath %>/jsp/t_customer/t_memberImport.jsp?customerid=<s:property value="id" />'  ><img src='<%= basePath %>images/modify.png' border="0" alt="导入成员文件" title="导入成员文件"  height="15" >导入成员文件</a>&nbsp;
					            -->
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
			              <input type="button" name="add" value="    新增    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_customer/t_customerAdd.jsp"/>'" style="cursor:hand">&nbsp;			              
			              <!-- 
			              <input type="button" name="add" value="    新增    " class="btn" onClick="javascript:window.parent.location.href='<s:url value="/jsp/t_customer/t_customerAdd.jsp"/>'" style="cursor:hand">&nbsp;
			               -->
			              <!-- <input type="submit" name="del" value="    删除    " class="btn">
			               -->
                         </td>
                      </tr>
                    </table>
                    
                    
                    </td>
                </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
<!-- 
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="table">
<tr>
	<td width="82%" bgcolor="#ad9875">
			<iframe src="T_customerActionFindLike.action" align="top" width="100%" scrolling="no" frameborder="0" height="600" name="under"></iframe>
	</td>
</tr>
</table>
 -->

</body>
</html>