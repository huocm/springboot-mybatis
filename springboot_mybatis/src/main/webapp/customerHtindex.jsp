
<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="/Error.jsp"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="css/sub_css/jincheng.css" rel="stylesheet" type="text/css"/>
    <link href="css/sub_css/index.css" rel="stylesheet" type="text/css"/>
  <%-- <script src="<%=basePath %>js/sub_js/jquery-1.8.2.min.js" type="text/javascript" ></script>--%>
    <script src="<%=basePath %>js/sorttable.js" type="text/javascript" ></script>
    <script src="<%=basePath %>js/global.js" type="text/javascript" ></script>
    <title>������ѯ</title>
    <script>document.createElement("myHero")</script>
    <style>
        myHero {
            display: block;
            background-color: #ddd;
            padding: 50px;
            font-size: 30px;
        }
    </style>
    <script type="text/javascript">

        function toSubmit() {
            var name = document.getElementById("accountno").value
            if(name == null){
                alert("������ȷ������")
                return false;
            }
            document.getElementById("account").submit();
        }
    </script>
</head>
<body class="mainBody"   leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<myHero>��̽�����ѯ</myHero>
<form id="account"  name="account" action="T_customerCAction" method="post" >
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
    <tr>
        <td height="3"></td>
    </tr>
    <tr>
        <td valign="top">

            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>

                    <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
                    <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"></td><span class="daohang">
                         <font color="white">�ͻ����ƣ�</font><input type="text" class="form-control" style="width:180px;"  id="accountno" name="accountno" placeholder="������ͻ�����:"  />
                              <button onclick="toSubmit()">��ѯ</button>

                   </span></td>
                </tr>
                <tr>
                    <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF">


        </td>
    </tr>
</table>

        </td>
    </tr>
</table>
</form>
<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="" >
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
                                                        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
                                                        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">�������Ϣ�б�ҳ</span></td>
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
                                                             <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">¼��ʱ��</strong></th>
                                                            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;����&nbsp;</strong></th>
                                                        </tr>
                                                        <s:if test="${paginationSupport == null}">

                                                        </s:if>

                                                        <s:else >
                                                        <s:iterator value="paginationSupport.items" status="stuts" >
                                                            <tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center" >
                                                                <td height="25" align="center" valign="middle">&nbsp;
                                                                    <s:property value="id" />&nbsp;
                                                                </td>
                                                                <td height="25" align="center" valign="middle">&nbsp;
                                                                    <s:property value="customername" />&nbsp;
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
                                                                    <s:date name="inserttime" nice="false" format="yyyy-MM-dd" />
                                                                </td>

                                                                <td height="25" align="center" valign="middle">&nbsp;

                                                                    <%--<a href='<%=basePath %>fileDownload?fileName=${imagename}' target="_blank"><img src='<%= basePath %>images/xiazai.png' border="0" alt="����" title="����"  height="15" >����</a>&nbsp;
                                                                    --%>
                                                                </td>
                                                            </tr>
                                                        </s:iterator>

                                                    </table></td>
                                            </tr>
                                            <tr>
                                                <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
                                                    �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
                                                    <a href='<s:url value="/T_reportActionList1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="accountno" value="t_report.accountno" />
							 	<s:param name="customername" value="t_report.customername" />
							 	<s:param name="company" value="t_report.company" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>��ҳ</a>
                                                    <a href='<s:url value="/T_reportActionList1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="accountno" value="t_report.accountno" />
							 	<s:param name="customername" value="t_report.customername" />
							 	<s:param name="company" value="t_report.company" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>��һҳ</a>
                                                    <a href='<s:url value="/T_reportActionList1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="accountno" value="t_report.accountno" />
							 	<s:param name="customername" value="t_report.customername" />
							 	<s:param name="company" value="t_report.company" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>��һҳ</a>
                                                    <a href='<s:url value="/T_reportActionList1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="staffname" value="t_report.staffname" />
							 	<s:param name="customername" value="t_report.customername"  id="customername"/>
							 	<s:param name="company" value="t_report.company" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>βҳ</a>
                                                    ��<s:property value="paginationSupport.totalCount"  />��
                                                </td>
                                            </tr>
                                            </s:else>

                                        </table></td>
                                    </tr>
                                </table></td>
                            </tr>
                        </table></td>
                    </tr>
                </table></td>
            </tr>
        </table>
        </td>
    </tr>
</table>

</body>
</html>
