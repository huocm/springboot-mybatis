<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>


<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
    <title>T_products_sub��Ϣ����ҳ</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
    <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
    <script>
        window.onload = function (ev) {
            document.getElementById("viewHis").onclick = function (ev1) {
                var id = '<s:property value="t_products_sub.id" />';
                var xhr;
                 //����ajax - ��һ��
                if (window.XMLHttpRequest) {
                    xhr = new XMLHttpRequest();
                } else if(window.ActiveObject) {         //IE6������
                     xhr = new ActiveXObject('Microsoft.XMLHTTP');
                }
                /*xhr.setRequestHeader()*/

                xhr.onreadystatechange = function() {//����������ֵ�Ĵ��������˴�ʹ��������������ʵ��
                    if (xhr.readyState == 4 && xhr.status == 200) {//
                        var responseText = xhr.responseText;
                        document.getElementById('data').innerHTML = responseText;
                        document.getElementById('light').style.display='block';
                        document.getElementById('fade').style.display='block';

                    }
                };
                xhr.open("GET", "T_products_subActionFindHistoryCostByPid.action?id=" + id, true);
                xhr.send(null);


            }
        }
    </script>
    <style>
        .black_overlay{
            display: none;
            position: absolute;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            background-color: black;
            z-index:1001;
            -moz-opacity: 0.8;
            opacity:.80;
            filter: alpha(opacity=88);
        }
        .white_content {
            display: none;
            position: absolute;
            top: 25%;
            left: 25%;
            width: 55%;
            height: 55%;
            padding: 20px;
            border: 10px solid orange;
            background-color: white;
            z-index:1002;
            overflow: auto;
            
        }
    </style>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
    <tr>
        <td height="3"></td>
    </tr>
    <tr>
        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
                <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">��ҵ�����&gt;&gt; �����Ŀ����&gt;&gt;�����Ŀ�鿴</span></td>
            </tr>
            <tr>
                <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" ><table width="100%" border="0" cellspacing="5" cellpadding="0">
                    <tr>
                        <td><table width="100%" border="0" cellpadding="0" cellspacing="5">
                            <tr>
                                <td height="229" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                                                <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">�����Ŀ��Ϣ�쿴ҳ</td>
                                            </tr>
                                        </table></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="cbcbcb">
                                            <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">
                                                <tr>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�����Ŀ���:</td>
                                                    <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                                        <s:property value="t_products_sub.id" />
                                                        <font color="#FF0000">*</font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">������:</td>
                                                    <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                                        <s:property value="t_products_sub.company" />
                                                        <font color="#FF0000">*</font>
                                                    </td>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
                                                </tr>

                                                <tr>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��Ŀ����:</td>
                                                    <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                                        <s:property value="t_products_sub.name" /> <font color="#FF0000">*</font>

                                                    </td>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�����Ŀ:</td>
                                                    <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                                        <s:property value="t_products_sub.memo" /> <font color="#FF0000">*</font>
                                                    </td>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ٴ�����:</td>
                                                    <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                                        <s:property value="t_products_sub.memo2" />
                                                    </td>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��ʷ�ɱ���:</td>
                                                    <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                                        <s:property value="t_products_sub.cost" /> <font color="#FF0000">*</font>
                                                    </td>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�����ɱ���:</td>
                                                    <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                                        <s:property value="t_products_sub.cost1" /> <font color="#FF0000">*</font>
                                                    </td>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ɱ���:</td>
                                                    <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                                        <s:property value="t_products_sub.cost" /> <font color="#FF0000">*</font>
                                                    </td>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����ۣ�ҵ����ɼ۸�:</td>
                                                    <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                                        <s:property value="t_products_sub.price" /> <font color="#FF0000">*</font>
                                                    </td>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
                                                </tr>
                                               <%-- <tr>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��̼۸�:</td>
                                                    <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                                        <s:property value="t_products_sub.amount" /> <font color="#FF0000">*</font>
                                                    </td>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
                                                </tr>--%>
                                                <tr>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����ʱ��:</td>
                                                    <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                                        <s:property value="t_products_sub.createdate" />	<font color="#FF0000">*</font>
                                                    </td>
                                                    <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
                                                </tr>


                                                <tr align="center">
                                                    <td height="24" bgcolor="#F2F2F2" colspan="4">
                                                        <p><a href = "javascript:void(0)" ><input type="button" id="viewHis" value="  �鿴��ʷ    " ></a></p>
                                                        <input type="button" class="btn" value="    ����    " name="B1" onClick="javascript:history.back(-1)">
                                                    </td>
                                                </tr>
                                            </table>
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



<div id="light" class="white_content">
    <a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><input type="button" value="    ����    "></a>
    <div id="data">

    </div>
</div>

<div id="fade" class="black_overlay"></div>
</body>
</html>
