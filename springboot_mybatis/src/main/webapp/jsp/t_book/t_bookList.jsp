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
<title>T_book信息列表页</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
    <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>   
</head>

<script>
//提示操作结果
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}
</script>
<body class="mainBody"  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>


<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·业务管理&gt;&gt; 预约管理</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >预约信息查询</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_bookActionList" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">							  
							  &nbsp;&nbsp;	预约人<s:textfield  name="membername" maxlength='20'  id="membername"/>							  							  
							  &nbsp;&nbsp;	套餐名称<s:textfield  name="productname" maxlength='20'  label="productname"/>
							  &nbsp;&nbsp;	体检机构名称<s:textfield  name="companyname" maxlength='20'  label="companyname"/>
							  
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

<table width="100%"  onLoad='jo()' border="0" cellspacing="0" cellpadding="0" bgcolor="">
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;预约信息列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">预约编号</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">预约人</strong></th>          
					            <!-- --> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">企业名称</strong></th>                               
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">身份证号</strong></th>                               
					             
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">电话</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">状态</strong></th>                   
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">约定体检时间</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">套餐名称</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">预约处理人</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检机构</strong></th>                 
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检门店</strong></th>					          
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">预约类型</strong></th>					          
					           
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;操作&nbsp;</strong></th>					          

                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" />		                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="membername" />				                 					                   
					          </td>					          
					         <!--  -->
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customername" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo2" />				                 					                   
					          </td>					           
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:if test="${status=='1'}">待处理</s:if>
					            	<s:elseif test="${status=='2'}">预约成功</s:elseif> 
					            	<s:elseif test="${status=='4'}">体检结果保存成功</s:elseif> 
					            	<s:else>预约失败</s:else>		                 					                   
					          </td>								                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	${answertime}<s:date name="answertime" nice="false" format="yyyy-MM-dd" />			                 					                   
					          </td>					  
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="productname" />			                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="userid" />				                 					                   
					          </td>

					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companypname" />					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companyname" />					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
				                   <s:if test="${booktype=='1'}">成员预约</s:if>
									<s:elseif test="${booktype=='2'}">卡预约</s:elseif> 	 	
									<s:elseif test="${booktype=='3'}">团购预约</s:elseif>	                 					                   
					          </td>						          
					          <td height="25" align="center" valign="middle">&nbsp;
					          	<a href='<s:url action="T_bookActionEdit2.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/qr.png' border="0" alt="确认" title="确认"  height="15" >确认</a>&nbsp;
					          	<a href='<s:url action="T_bookActionEdit.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/modify.png' border="0" alt="修改" title="修改"  height="15" >修改</a>&nbsp;
					          	<a href='<s:url action="T_bookActionEdit4.action"><s:param name="id" value="id" /></s:url>' target="_blank"><img src='<%= basePath %>images/message.png' border="0" alt="发送短信" title="发送短信"  height="15" >发送短信</a>&nbsp;
                              	<!--
                              	<a href='<s:url action="T_bookActionRemove.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="删除" title="删除"  height="15" >删除</a>&nbsp; 
					          	<a href='<s:url action="T_bookActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="查看" title="查看"  height="15" >查看</a>
					            -->
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_bookActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="membername" value="t_book.membername" />
							 	<s:param name="productname" value="t_book.productname" />
							 	<s:param name="companyname" value="t_book.companyname" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_bookActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="membername" value="t_book.membername" />
							 	<s:param name="productname" value="t_book.productname" />
							 	<s:param name="companyname" value="t_book.companyname" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_bookActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="membername" value="t_book.membername" />
							 	<s:param name="productname" value="t_book.productname" />
							 	<s:param name="companyname" value="t_book.companyname" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_bookActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="membername" value="t_book.membername" />
							 	<s:param name="productname" value="t_book.productname" />
							 	<s:param name="companyname" value="t_book.companyname" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条 									
					      </td>
                        </tr>
                      <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			              
			               <input type="button" name="add" value="    新增团购预约    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_book/t_bookAdd.jsp"/>'" style="cursor:hand">&nbsp;
			               <!--
			               <input type="submit" name="del" value="    删除    " class="btn"> 
			              -->
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


</body>
</html>
