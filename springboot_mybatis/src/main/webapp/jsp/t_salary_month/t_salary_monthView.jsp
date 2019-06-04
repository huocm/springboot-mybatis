<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>


<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_salary_month信息增加页</title>
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
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">·T_salary_month&gt;&gt; t_salary_month</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">T_salary_month信息察看页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Id <font color="#FF0000">*</font></td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.id" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Customerid</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.customerid" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Classes</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.classes" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Basesalary</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.basesalary" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Rolesalary</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.rolesalary" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Bounty</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.bounty" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Award</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.award" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Minus</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.minus" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Insurance</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.insurance" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Tax</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.tax" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Addamount</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.addamount" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Addreason</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.addreason" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Subtract</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.subtract" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Subtractreason</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.subtractreason" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Memo</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.memo" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Memo2</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.memo2" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Ticheng</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.ticheng" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Zengyuanjiang</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.zengyuanjiang" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Manager</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.manager" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Admin</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.admin" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Ndj</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.ndj" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Nddbj</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.nddbj" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Username</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.username" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Payamount</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.payamount" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Payedamount</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.payedamount" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Years</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.years" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Months</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_salary_month.months" />
					            &nbsp;
					          </td>
                            </tr>
							<tr>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Createtime</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					                <s:date name="t_salary_month.createtime" nice="false" format="yyyy-MM-dd hh:mm:ss" />
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
