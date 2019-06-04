<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>

<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_products_sub信息列表页</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
</head>
<script>
//排序使用
var domok=document.all||document.getElementById
if (domok)
document.write('<SCRIPT SRC="<s:url value='/js/sorttable.js'/>" ><\/SCRIPT>')
</script>

<body class="mainBody" onLoad='if (domok) initTable("table0")' leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td height="3" bgcolor="2d6094"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom" background="<s:url value='/images/1_09.gif'/>"><span class="daohang">·提醒功能&gt;&gt; 提醒信息列表</span></td>
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;库存信息提醒列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                            <tr>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">主类名称</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">细类名称</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">库存</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">生产厂家</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">单位</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">规格</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">备注</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">操作</strong></th>          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="parentname" />&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="name" />&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<font color="red"> <s:property value="num" /></font>&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="company" />&nbsp;					                 					                   
					          </td>
			                  <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="type" />&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="standard" />&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo" />&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<a   href='<%= bathPath %>/jsp/t_buy/t_buyAdd.jsp?productid=<s:property value="id"/>&name=<s:property value="name"/>&pid=<s:property value="pid"/>&parentname=<s:property value="parentname"/>' > >>进货<< </a>&nbsp;					                 					                   
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_products_subActionTx.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_products_subActionTx.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_products_subActionTx.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_products_subActionTx.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条 									
					      </td>
                        </tr>
                      <tr>

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
