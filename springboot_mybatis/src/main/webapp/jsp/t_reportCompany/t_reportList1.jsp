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
    <title>T_report��Ϣ�б�ҳ</title>
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
                                                <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;�������Ϣ�б�ҳ&nbsp;</td>
                                            </tr>
                                        </table></td>
                                    </tr>
                                    <tr>
                                        <td valign="top" bgcolor="cbcbcb">
                                            <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                                                <tr>
                                                    <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���</strong></th>
                                                    <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��ҵ����</strong></th>
                                                    <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ͻ�����</strong></th>
                                                    <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���֤��</strong></th>

                                                    <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">������</strong></th>
                                                    <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��Ʒ�ײ�</strong></th>
                                                    <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;����&nbsp;</strong></th>
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

                                                              <a href='<%=basePath %>fileDownload?fileName=${imagename}' target="_blank"><img src='<%= basePath %>images/xiazai.png' border="0" alt="����" title="����"  height="15" >����</a>&nbsp;
                                                            <a href='<s:url action="T_reportActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="�鿴" title="�鿴"  height="15" >�鿴</a>

                                                        </td>
                                                    </tr>
                                                </s:iterator>
                                            </table></td>
                                    </tr>
                            <%--        <tr>
                                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
                                            �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
                                            <a href='<s:url value="/T_reportActionList1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="staffname" value="t_report.staffname" />
							 	<s:param name="customername" value="t_report.customername" />
							 	<s:param name="company" value="t_report.company" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>��ҳ</a>
                                            <a href='<s:url value="/T_reportActionList1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="staffname" value="t_report.staffname" />
							 	<s:param name="customername" value="t_report.customername" />
							 	<s:param name="company" value="t_report.company" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>��һҳ</a>
                                            <a href='<s:url value="/T_reportActionList1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="staffname" value="t_report.staffname" />
							 	<s:param name="customername" value="t_report.customername" />
							 	<s:param name="company" value="t_report.company" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>��һҳ</a>
                                            <a href='<s:url value="/T_reportActionList1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="staffname" value="t_report.staffname" />
							 	<s:param name="customername" value="t_report.customername" />
							 	<s:param name="company" value="t_report.company" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>βҳ</a>
                                            ��<s:property value="paginationSupport.totalCount"  />��
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
