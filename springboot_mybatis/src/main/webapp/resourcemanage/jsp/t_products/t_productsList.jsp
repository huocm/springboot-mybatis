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
<title>信息列表页</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
    <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
    <script language="JavaScript" src="<s:url value='/js/myAjax.js"'/>"</script>

</head>

<script>
//提示操作结果
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}
</script>
<body class="mainBody"  onLoad='jo()'  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>


<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·业务管理&gt;&gt; 卡成本管理(套餐成本维护)</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >套餐查询</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_productsActionList" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">
							  &nbsp;&nbsp;
							  套餐名称<s:textfield  name="name" maxlength='20'  label="cardno"/>&nbsp;&nbsp;							  
							  体检门店名称<s:textfield  name="company" maxlength='20'  label="memo"/> &nbsp;&nbsp;
							
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;套餐产品信息列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
                                <!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">选择</strong></th> -->      
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">套餐产品名称</strong></th>                                   
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">套餐产品创建时间</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检机构</strong></th>             	         
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">成本价</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">性别</strong></th>
					            <!-- -->
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
					            	<s:date name="createdate" nice="false" format="yyyy-MM-dd hh:mm:ss" />&nbsp;				                 					                   
					          </td>					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companypname" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="amount" />&nbsp;				                 					                   
					          </td>					          
					          <td height="25" align="center" valign="middle">&nbsp;				            	
					            	<s:if test='${tctype}=="1"'>男</s:if>
					            	<s:elseif test='${tctype}=="2"'>女(未婚)</s:elseif>
					            	<s:elseif test='${tctype}=="3"'>女(已婚)</s:elseif>
					            	&nbsp;			                 					                   
					          </td>
					         <!-- -->
					         <td height="25" align="center" valign="middle">&nbsp;
					          <!-- --> 
					            <a href='<s:url action="T_productsActionEdit.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/modify.png' border="0" alt="修改成本价" title="修改成本价"  height="15" >修改成本价</a>&nbsp; 
					          
					          	<a href='<s:url action="T_productsActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="查看" title="查看"  height="15" >查看</a>					          	
                              	<a href='<s:url action="T_productsActionRemove.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="删除" title="删除"  height="15" >删除</a>&nbsp;

					          </td>
					          
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_productsActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="name" value="t_products.name" />
							 	<s:param name="company" value="t_products.company" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_productsActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="name" value="t_products.name" />
							 	<s:param name="company" value="t_products.company" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_productsActionList.action">
							 	<s:param name="pageSize" value="10" />
							    <s:param name="name" value="t_products.name" />
							 	<s:param name="company" value="t_products.company" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_productsActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="name" value="t_products.name" />
							 	<s:param name="company" value="t_products.company" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条 									
					      </td>
                        </tr>
                      <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			              
			              <input type="button" name="add" value="    新增套餐(卡成本)    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_products/t_selectKTC.jsp"/>'" style="cursor:hand">&nbsp;
			              &nbsp;&nbsp; 
			              <!--
			              <input type="button" name="add" value="    新增套餐产品    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_products/t_productsAdd.jsp"/>'" style="cursor:hand">&nbsp;&nbsp;&nbsp; 
			              <input type="button" name="add" value="    新增体检机构    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_company/t_companyAdd.jsp"/>'" style="cursor:hand">&nbsp;
			              <input type="button" name="add" value="    新增体检科目    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_products_sub/t_products_subAdd.jsp"/>'" style="cursor:hand">&nbsp;
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
