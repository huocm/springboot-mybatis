<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>


<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_card信息增加页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
<style type="text/css">
<!--
.STYLE5 {	color: #000000;
	font-size: 12px;
}
-->
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
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">·业务管理&gt;&gt; 卡管理</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">卡信息察看页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">卡号</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_card.cardno" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">密码</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<!--<s:property value="t_card.security" />-->******
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">名称</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_card.memo2" />
					            &nbsp;
					          </td>
                            </tr>							
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">录入日期 </td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					                <s:date name="t_card.importdate" nice="false" format="yyyy-MM-dd hh:mm:ss" />
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">录入人</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_card.importcreator" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">最后修改日期 </td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					               ${t_card.bookdate }
					          </td>
                            </tr>
							
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">最后修改人</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_card.bookdealer" />
					            &nbsp;
					          </td>
                            </tr>
				
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">面值金额</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_card.amount" />
					            &nbsp;
					          </td>
                            </tr>
						
						
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">状态</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_card.status" />
					            &nbsp;
					          </td>
                            </tr>
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">	
								<input type="button" class="btn" value="    返回    " name="B1" onClick="javascript:history.back(-1)">
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

</body>
</html>
