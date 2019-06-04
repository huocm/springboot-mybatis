<%@ page contentType="text/html;charset=GBK" language="java"  errorPage="Error.jsp" %>

<%@ include file="taglibs.jsp" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>系统</title>
<link href="${basePath}css/style.css" rel="stylesheet" type="text/css">
</head>

<script>
//提示操作结果
var vmessage ='${message}';
if(vmessage!=""){
    alert(vmessage);
}
</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<form action="<c:url value="/signonController.do"/>" method="POST">

<c:if test="${!empty signonForwardAction}">
<input type="hidden" name="forwardAction" value="<c:url value="${signonForwardAction}"/>"/>
</c:if>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="193" height="94" background="${basePath}images/1_02.gif"> <font color="#FFFFFFF"  size="20">&nbsp;&nbsp;Framework </font></td>
    <td align="right" background="${basePath}images/1_02.gif">
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="94" align="right" valign="bottom" ><table width="740" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="94" valign="bottom" background="${basePath}images/1_02.gif">
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

<table align="center" border="0">
<tr>
<td colspan="2">Please enter your username and password.
<br />&nbsp;</td>
</tr>
<tr>
<td>Username:</td>
<td><input type="text" name="username" value="j2ee" /></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="password" value="j2ee" /></td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="image" border="0" src="<c:url value="/images/button_submit.gif" />"></td>
</tr>
</table>

</form>
</body>
</html>