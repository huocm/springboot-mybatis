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
<title>�ͻ���Ϣ����ҳ</title>
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
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">��ҵ�����&gt;&gt; </span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >��ҵ��Ϣ��ѯ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_customerActionFindLike" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="24" align="left" valign="middle" bgcolor="#F2F2F2">
							  &nbsp;&nbsp;�ͻ�����:<s:textfield  name="name" maxlength='45'  label="name"/>
							  &nbsp;&nbsp;�绰:<s:textfield  name="tel" maxlength='45'  label="tel"/>
							  <input type="submit" class="btn" value="    ��ѯ    " name="B1">
								<input type="reset"  class="btn" value="    ���    " name="B2">
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;��ҵ��Ϣ�б�ҳ&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
                                <!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">ѡ��</strong></th>					      
					             -->
                               <%-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ͻ����</strong></th>--%>
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ͻ�����</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�绰</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����</strong></th> 
					                     
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��ַ</strong></th>                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��¼�˺�</strong></th>                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ͻ�����</strong></th>                    
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;����&nbsp;</strong></th>					          
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
					          	<a href='<s:url action="T_customerActionEdit.action"><s:param name="id" value="id" /></s:url>' >&nbsp;<img src='<%= basePath %>images/modify.png' border="0" alt="�޸�" title="�޸�"  height="15" >�༭</a>&nbsp;
                              	<a href='<s:url action="T_customerActionRemove.action" ><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="ɾ��" title="ɾ��"  height="15" >ɾ��</a>&nbsp;                             	 
					          	<!-- 
					          	<a href='<s:url action="T_customerActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'>�鿴</a>
					            
					            <a href='<%=basePath %>/jsp/t_customer/t_memberImport.jsp?customerid=<s:property value="id" />'  ><img src='<%= basePath %>images/modify.png' border="0" alt="�����Ա�ļ�" title="�����Ա�ļ�"  height="15" >�����Ա�ļ�</a>&nbsp;
					            -->
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <!--  -->
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="/T_customerActionFindLike.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 	<s:param name="name" value="%{t_customer.name}" />
							 	<s:param name="tel" value="%{t_customer.tel}" />
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/T_customerActionFindLike.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 	<s:param name="name" value="%{t_customer.name}" />
							 	<s:param name="tel" value="%{t_customer.tel}" />							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/T_customerActionFindLike.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 	<s:param name="name" value="%{t_customer.name}" />
							 	<s:param name="tel" value="%{t_customer.tel}" />							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/T_customerActionFindLike.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 	<s:param name="name" value="%{t_customer.name}" />
							 	<s:param name="tel" value="%{t_customer.tel}" />							 </s:url>'>βҳ</a>
							 ��<s:property value="paginationSupport.totalCount"  />�� 									
					      </td>
                        </tr>
                        
                      <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			              <input type="button" name="add" value="    ����    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_customer/t_customerAdd.jsp"/>'" style="cursor:hand">&nbsp;			              
			              <!-- 
			              <input type="button" name="add" value="    ����    " class="btn" onClick="javascript:window.parent.location.href='<s:url value="/jsp/t_customer/t_customerAdd.jsp"/>'" style="cursor:hand">&nbsp;
			               -->
			              <!-- <input type="submit" name="del" value="    ɾ��    " class="btn">
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