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
<title>T_card信息列表页</title>
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
<body class="mainBody" onLoad="jo()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·业务管理&gt;&gt; 订单管理</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >订单信息查询</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_orderActionList" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">
							  &nbsp;&nbsp;
							  客户名称<s:textfield  name="customername" maxlength='20'  label="cardno"/>	&nbsp;&nbsp;						  
							  发起人<s:textfield  name="creater" maxlength='20'  label="memo"/> &nbsp;&nbsp;
							  <!-- 审批人<s:textfield  name="creater" maxlength='20'  label="memo"/> &nbsp;&nbsp; -->
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
                  <td height="229" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;订单信息列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">订单编号</strong></th> 
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客户名称</strong></th>                               
					           	<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">订单状态</strong></th>    					                    					            					                                                                                                                       
					          	<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">订单发起人</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">发起时间</strong></th>  
					                    					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">审核流程进度</strong></th>          					           					                    					           	
					           	<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">订单金额(元)</strong></th>					           						           	      
					            <!--  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">打折后订单金额(元)</strong></th>                
					            -->
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;操作&nbsp;</strong></th>					          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" />					          			                 					                   
					          </td>					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customername" />			                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	${checkstatus }					                 					                   
					          </td>				          					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="creater" />                 					                   
					          </td>					        					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="createtime" />      					                   
					          </td>
					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="currentrole" />					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;					            	
					            		<fmt:formatNumber value="${saleprice}" pattern="0.00"/> 				                   
					          </td>					          	
					          <!--
					          <td height="25" align="center" valign="middle">&nbsp;					            	
					            		<fmt:formatNumber value="${saleprice}" pattern="0.00"/> 			                 					                   
					          </td>			
					          --> 			          				          
					          <td height="25" align="center" valign="middle">&nbsp;
					         <!-- 状态为 ‘已提交待审核’且当前记录‘checker==当前登录用户’ -->    
					        <!--  <s:if test="'${checker}' == '${sessionScope.userName}'"> 
					            <s:if test="'${checkstatus}' == '已提交待审核'">
					                <a href='<s:url action="T_orderActionSHTG.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/tonguo.png' border="0" alt="审核通过" title="审核通过"  height="15" >审核通过</a>&nbsp;					                     
					            	<a href='<s:url action="T_orderActionTH.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/tuihui.png' border="0" alt="退回" title="退回"  height="15" >退回</a>&nbsp;
					            </s:if>
					         </s:if> 
					       --> 
					         <!-- ‘creater创建人==当前登录用户’ -->
					         
					         <s:if test="'${creater}' == '${sessionScope.userName}'">
					            <!-- 状态为‘未提交’且‘creater创建人==当前登录用户’ 显示提交按钮 -->
					            <s:if test="${currentstatus} == 0">
					            	<s:if test="'${checkstatus}' == '未提交'">
						            	<a href='<s:url action="T_orderActionCommit.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/commit.png' border="0" alt="提交" title="提交"  height="15" >提交</a>&nbsp;					          	
						          	</s:if>
						          	    <a href='<s:url action="T_orderActionEdit.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/modify.png' border="0" alt="编辑" title="编辑"  height="15" >编辑</a>&nbsp;                              	 
						          	    <a href='<s:url action="T_orderActionEditTjxm.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/modify.png' border="0" alt="调整体检项目" title="调整体检项目"  height="15" >调整体检项目</a>&nbsp;                              	 
		                              	<a href='<s:url action="T_orderActionRemove.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="删除" title="删除"  height="15" >删除</a>&nbsp;        					   					          		
					          	</s:if>	
					          	<!--
					          	<s:if test="'${checkstatus}' != '已审核通过'">	
					          	    <s:if test="'${checkstatus}' != '已提交待审核'">					          	
						          		<a href='<s:url action="T_orderActionEdit.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/modify.png' border="0" alt="编辑" title="编辑"  height="15" >编辑</a>&nbsp;                              	 
	                              		<a href='<s:url action="T_orderActionRemove.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="删除" title="删除"  height="15" >删除</a>&nbsp;        
					                </s:if>
					            </s:if>
					           -->
					         </s:if>	
					          	<a href='<s:url action="T_orderActionViewDD.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="查看" title="查看"  height="15" >查看</a>
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_orderActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="customername" value="t_order.customername" />
							 	<s:param name="creater" value="t_order.creater" />							 								 	
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_orderActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="customername" value="t_order.customername" />
							 	<s:param name="creater" value="t_order.creater" />	
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_orderActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="customername" value="t_order.customername" />
							 	<s:param name="creater" value="t_order.creater" />								 	
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_orderActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="customername" value="t_order.customername" />
							 	<s:param name="creater" value="t_order.creater" />								 	
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条 									
					      </td>
                        </tr>
                      <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			              <!-- <input type="button" name="add" value="    新增    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_order/t_orderAdd.jsp"/>'" style="cursor:hand">&nbsp;
			              
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
