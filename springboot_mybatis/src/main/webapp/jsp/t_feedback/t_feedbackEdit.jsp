<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>


<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_feedback信息编辑页</title>
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

<s:form action="T_feedbackActionUpdate" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">·业务管理&gt;&gt; 反馈意见管理</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">反馈意见信息编辑页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">编号:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_feedback.id" readonly="true"  maxLength='11' label="id"/>
							    
							  </td>
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">标题:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_feedback.title"   readonly="true" maxlength='100'  label="title"/>
							    
							  </td>
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">内容:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_feedback.content"  readonly="true"  maxlength='200'  label="content"/>
							    
							  </td>
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">电话:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_feedback.tel"  readonly="true"  maxlength='20'  label="tel"/>
							    
							  </td>
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">姓名:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_feedback.name"   readonly="true" maxlength='50'  label="name"/>
							    
							  </td>
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">提交时间:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    <s:datetimepicker name="t_feedback.createtime"  label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"></s:datetimepicker> 
							    
							  </td>
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">处理人:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_feedback.handler"  maxlength='20'  label="handler"/>
							    <font color="#FF0000">*</font>
							  </td>
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">处理时间:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    <s:datetimepicker name="t_feedback.handletime" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"></s:datetimepicker> 
							    <font color="#FF0000">*</font>
							  </td>
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">状态:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_feedback.status"  maxlength='10'  label="status"/>
							    <font color="#FF0000">*</font>
							  </td>
                            </tr>

							<tr align="center">
                   		      <td height="24" bgcolor="#F2F2F2" colspan="4">	
								<input class="btn" type="submit" value="    修改    " name="B1">
								<input class="btn" type="reset" value="    重填    " name="B2">
								<input class="btn" type="button" value="    返回    " name="B1" onClick="history.go(-1)">		
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

</s:form>
</body>
</html>
	