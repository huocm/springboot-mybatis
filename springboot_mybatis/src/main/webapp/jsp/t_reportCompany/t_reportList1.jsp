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
    <title>T_report信息列表页</title>
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
<body class="mainBody"  onLoad='jo()'  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>



<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
    <tr>

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
                                                <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;体检结果信息列表页&nbsp;</td>
                                            </tr>
                                        </table></td>
                                    </tr>
                                    <tr>
                                        <td valign="top" bgcolor="cbcbcb">
                                            <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                                                <tr>
                                                    <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">编号</strong></th>
                                                    <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">企业名称</strong></th>
                                                    <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客户名称</strong></th>
                                                    <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">身份证号</strong></th>

                                                    <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检机构</strong></th>
                                                    <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">产品套餐</strong></th>
                                                    <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;操作&nbsp;</strong></th>
                                                </tr>
                                                <s:iterator value="paginationSupport.items" status="status">
                                                    <tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">

                                                        <td height="25" align="center" valign="middle">&nbsp;
                                                            <s:property value="id" />&nbsp;
                                                        </td>
                                                        <td height="25" align="center" valign="middle">&nbsp;
                                                            <s:property value="customername" />
                                                        </td>
                                                        <td height="25" align="center" valign="middle">&nbsp;
                                                            <s:property value="staffname" />
                                                        </td>
                                                        <td height="25" align="center" valign="middle">&nbsp;
                                                            <s:property value="memo2" />
                                                        </td>

                                                        <td height="25" align="center" valign="middle">&nbsp;
                                                            <s:property value="company" />
                                                        </td>
                                                        <td height="25" align="center" valign="middle">&nbsp;
                                                            <s:property value="productname" />
                                                        </td>
                                                        <td height="25" align="center" valign="middle">&nbsp;

                                                              <a href='<%=basePath %>fileDownload?fileName=${imagename}' target="_blank"><img src='<%= basePath %>images/xiazai.png' border="0" alt="下载" title="下载"  height="15" >下载</a>&nbsp;
                                                            <a href='<s:url action="T_reportActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="查看" title="查看"  height="15" >查看</a>

                                                        </td>
                                                    </tr>
                                                </s:iterator>
                                            </table></td>
                                    </tr>
                            <%--        <tr>
                                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
                                            共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
                                            <a href='<s:url value="/T_reportActionList1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="staffname" value="t_report.staffname" />
							 	<s:param name="customername" value="t_report.customername" />
							 	<s:param name="company" value="t_report.company" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>首页</a>
                                            <a href='<s:url value="/T_reportActionList1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="staffname" value="t_report.staffname" />
							 	<s:param name="customername" value="t_report.customername" />
							 	<s:param name="company" value="t_report.company" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>上一页</a>
                                            <a href='<s:url value="/T_reportActionList1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="staffname" value="t_report.staffname" />
							 	<s:param name="customername" value="t_report.customername" />
							 	<s:param name="company" value="t_report.company" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>下一页</a>
                                            <a href='<s:url value="/T_reportActionList1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="staffname" value="t_report.staffname" />
							 	<s:param name="customername" value="t_report.customername" />
							 	<s:param name="company" value="t_report.company" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>尾页</a>
                                            共<s:property value="paginationSupport.totalCount"  />条
                                        </td>
                                    </tr>--%>

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
