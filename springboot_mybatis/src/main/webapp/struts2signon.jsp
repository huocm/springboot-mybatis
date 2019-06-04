<%@ page contentType="text/html;charset=GBK" language="java"  errorPage="Error.jsp" %>

<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>系统</title>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet" type="text/css">

</head>

<script>
//提示操作结果
//var vmessage ='<s:property value="message"/>';
//if(vmessage!=""){
//    alert(vmessage);
//}
</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="193" height="94" background="<s:url value="/images/1_02.gif"/>" > <font color="#FFFFFFF"  size="20">&nbsp;&nbsp;Framework </font></td>
    <td align="right" background="<s:url value="/images/1_02.gif"/>" >
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="94" align="right" valign="bottom" ><table width="740" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="94" valign="bottom" background="<s:url value="/images/1_02.gif"/>" >
			 <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="26" align="right" valign="bottom">
				 <span class="daohang1" >  
					 <A href="" target="mainFrame" class="link1">帮 助&nbsp;</A> 
				</span>
				 </td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
<br>
<br>
<br>
<br>
<br>
<s:form action="signonAction"> 
<table align="center" border="0">
	<tr>
		<td colspan="2"><h3>请输入登录帐号和密码</h3></td>
	</tr>
	<tr>
    	<td colspan="2"  ><font color="red"><s:fielderror /><s:actionmessage /></font> </td> 
    </tr>
	<tr>
		<td></td>
		<td><s:textfield label="登录帐号" name="account.username"/></td>
	</tr>
	<tr>
		<td></td>
		<td><s:password label="密码"  name="account.password" /></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td><!-- <input type="image" border="0" src="<s:url value="/images/button_submit.gif" />"> -->
		<input type="submit" class="btn" value=" 登录 " name="B1">&nbsp;&nbsp;
		<input type="reset"  class="btn" value=" 清除 " name="B2">
		</td>
	</tr>
</table>
</s:form>

</body>
</html>