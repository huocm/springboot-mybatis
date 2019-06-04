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
<title>体检门店信息列表页</title>
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
<body class="mainBody"  onLoad='jo()'  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<!-- 
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·业务管理&gt;&gt; 体检机构管理&gt;&gt; 门店信息</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >体检门店信息查询</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_companyActionSubList" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">
							  &nbsp;&nbsp;
							  体检门店名称<s:textfield  name="name" maxlength='20'  label="cardno"/>	&nbsp;&nbsp;						  
							  地区<s:textfield  name="area" maxlength='20'  label="memo"/> &nbsp;&nbsp;
							  类型<s:textfield  name="companytype" maxlength='20'  label="memo2"/> &nbsp;&nbsp;
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
-->
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;体检门店信息列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">编号</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检门店名称</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">城市</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">类型</strong></th>                   
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">电话</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">地址</strong></th>                                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">说明</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">创建时间</strong></th>                       
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;操作&nbsp;</strong></th>					          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="a<s:property value='companyid'/>" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
							  					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companyid" />&nbsp;					          				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="name" />				                 					                   
					          </td>

					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="area" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companytype" />				                 					                   
					          </td>					          					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="tel" />			                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="address" />			                 					                   
					          </td>
					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo3" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="createtime" nice="false" format="yyyy-MM-dd hh:mm:ss" />				                 					                   
					          </td>

					          <td height="25" align="center" valign="middle">&nbsp;
					          	<!-- 
					          	<a href='<s:url action="T_companyActionAddSub.action"><s:param name="id" value="companyid" /></s:url>'><img src='<%= basePath %>images/add.png' border="0" alt="添加门店" title="添加门店"  height="15" >添加门店</a>&nbsp;
					          	<a href='<s:url action="T_companyActionEdit.action"><s:param name="id" value="companyid" /></s:url>'><img src='<%= basePath %>images/modify.png' border="0" alt="编辑" title="编辑"  height="15" >编辑</a>&nbsp;
                              	 -->
                              	<!-- -->
                              	
					          	<a href='<s:url action="T_companyActionEditTjmd.action"><s:param name="id" value="companyid" /></s:url>'><img src='<%= basePath %>images/modify.png' border="0" alt="编辑" title="编辑"  height="15" >编辑</a>&nbsp;
                              	<a href='<s:url action="T_companyActionRemove.action"><s:param name="id" value="companyid" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="删除" title="删除"  height="15" >删除</a>&nbsp;
					          	
					          	 
					          	<!-- 
					          	<a href='<s:url action="T_companyActionSubList.action"><s:param name="id" value="companyid" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="查看门店" title="查看门店"  height="15" >查看门店</a>
					          -->
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      
                      <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			              <input type="button" name="gb" value="    返回   " class="btn" onClick="javascript:window.history.go(-1)" style="cursor:hand">&nbsp;
			              
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
