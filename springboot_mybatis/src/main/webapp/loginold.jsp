<%@ page contentType="text/html;charset=GBK" language="java"  errorPage="Error.jsp" %>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���������ϵͳ</title>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet" type="text/css">

</head>
<script>
//��ʾ�������
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}
</script>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"  scroll=no>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="600" height="94" valign="bottom" background="<s:url value="/images/1_02.gif"/>" >
      <font color="#FFFFFFF"   size="16">&nbsp;&nbsp;����ϵͳ </font>
    </td>
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
					 <A href="<%=basePath %>jspgw/index.jsp" target="_parent" class="link1">��ҳ</A> &nbsp;&nbsp;&nbsp;&nbsp;
					 <A href="" target="mainFrame" class="link1">�� ��&nbsp;</A>&nbsp;&nbsp;&nbsp;&nbsp;
					 <A href="" target="mainFrame" class="link1">��ϵ����&nbsp;</A>
					 &nbsp;&nbsp;&nbsp;&nbsp;
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
<br>
<br>
<br>
<br>
<s:form action="signonAction"> 

<div id="denglugr" style="display:block">
<table  align="center" border="0" >
     <tr>
		<td colspan="2">
		<input type="button" class="btn" value=" �����û���¼ " name="gr">&nbsp;
		<input type="button" class="btn" value=" ��̨�����¼ " name="gs">		
		</td>
	</tr>
	<tr>
		<td></td>
		<td><s:textfield label="�˺�" value="admin" name="account.username" onclick="changecolor()"/></td>
	</tr>
	<tr>
		<td></td>
		<td><s:password label="����" value="admin" name="account.password" /></td>
	</tr>
	<tr>
		<td height="15">&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
    	<td colspan="2"  ><font color="red"><s:fielderror /><s:actionmessage /></font> </td> 
    </tr>

	<tr>
		<td>&nbsp;</td>
		<td><!-- <input type="image" border="0" src="<s:url value="/images/button_submit.gif" />"> -->
		<input type="submit" class="btn" value=" ��¼ " name="B1">&nbsp;&nbsp;
		<input type="reset"  class="btn" value=" ��� " name="B2">
		</td>
	</tr>
</table>
</div>



</s:form>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<table width="100%" border="0" align="center" cellpadding="0"  cellspacing="0">
<tr>
<td align="center">
<hr color="#cbcbcb">
<div id="foot" align="center">
	<ul>
	
		<li>�Ϻ���̰�Ȩ���в������Ա���վ���ݵĸ���������Ȩ��</li>
	</ul>
</div>
	</td>
  </tr>
</table>


</body>
</html>

