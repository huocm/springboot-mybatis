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
<style type="text/css">

*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font:12px/180% Arial, Helvetica, sans-serif,"����";}
a{color:#333;text-decoration:none;}
a:hover{color:#3366cc;text-decoration:underline;}

/* demo */
.demo{width:400px;margin:40px auto;position:relative;}
.demo h2{font-size:20px;height:44px;color:#3366cc;margin-top:20px;}
.demo dl dt{font-size:24px;color:#ff6600;margin-top:30px;font-weight:800;}
.demo dl dt,.demo dl dd{line-height:22px;}

/* tabbtn */
.tabbtn{height:30px;background:url(<%=basePath%>/images/tabbg.gif) repeat-x;border-left:solid 1px #ddd;border-right:solid 1px #ddd;}
.tabbtn li{float:left;position:relative;margin:0 0 0 -1px;}
.tabbtn li a{display:block;float:left;height:30px;line-height:30px;overflow:hidden;width:108px;text-align:center;font-size:12px;cursor:pointer;}
.tabbtn li.current{border-left:solid 1px #d5d5d5;border-right:solid 1px #d5d5d5;border-top:solid 1px #c5c5c5;}
.tabbtn li.current a{border-top:solid 2px #ff6600;height:27px;line-height:27px;background:#fff;color:#3366cc;font-weight:800;}

/* tabcon */
.tabcon{border-width:0 1px 1px 1px;border-color:#ddd;border-style:solid;position:relative;/*��ҪԪ��*/height:180px;overflow:hidden;}
.tabcon .subbox{position:absolute;/*��ҪԪ��*/left:0;top:0;}
.tabcon .sublist{padding:5px 10px;height:170px;}

/* sublist */
.sublist{padding:10px;}
.sublist li{height:28px;line-height:28px;font-size:12px;}
.sublist li span{margin:0 5px 0 0;font-family:"����";font-size:18px;font-weight:400;color:#ddd;}

</style>
</head>

<script src="<%=basePath %>js/jquery-1.6.min.js" type="text/javascript"></script>
<script src="<%=basePath %>js/loginselect.js" type="text/javascript" ></script>
<script type="text/javascript">
$(document).ready(function ($) {
	//Ĭ��ѡ��л�
	$("#normaltab").tabso({
	cntSelect: "#normalcon",
	tabEvent: "mouseover",
	tabStyle: "normal"
	});
});


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
<s:form action="signonAction"> 


<table  align="center" border="0" width="50">
	<tr>
		<td>
			<div class="demo" >
				<!-- <h2>ѡ���¼ϵͳ</h2>  -->
				<ul class="tabbtn" id="normaltab">
					<li class="current"><a href="#">��Ա��¼</a></li>
					<li><a href="#">�����¼</a></li>
				</ul><!--tabbtn end-->
				<div class="tabcon" id="normalcon" align="center">
					<div class="sublist"  align="center">
						<ul>
							<li><span>&nbsp;</span>
								<table  align="center" border="0" >
									<tr>
										<td>��Ա�˺�</td>
										<td><input type="text" value="" maxlength="20"  size="10" name="account.username" id="username"/></td>
									</tr>
									<tr>
										<td>����</td>
										<td><input type="password" value="" maxlength="20"  size="10" name="account.password"  id="password"/></td>
									</tr>
									<tr>
										<td>��֤��</td>
										<td><input type="text"  maxlength="4" size="4" id="code" name="account.code" id="code"/> &nbsp;<img src="<%=basePath %>/Image" /></td>
									</tr>								
									<tr>
								    	<td colspan="2"  ><font color="red"><s:fielderror /><s:actionmessage />&nbsp;</font> </td> 
								    </tr>								
									<tr>
										<td>&nbsp;</td>
										<td>
										<input type="submit" class="btn" value=" ��¼ " name="B1">&nbsp;&nbsp;
										<input type="reset"  class="btn" value=" ���� " name="B2">
										</td>
									</tr>
								</table>
							</li>
						</ul>
					</div><!--tabcon end-->
					<div class="sublist"  align="center">
						<ul>
							<li><span>&nbsp;</span>							

								<table  align="center" border="0" >
									<tr>
										<td>�����˺�</td>
										<td><input type="text" value="" maxlength="20"  size="10" name="account.username" id="username"/></td>
									</tr>
									<tr>
										<td>����</td>
										<td><input type="password" value="" maxlength="20"  size="10" name="account.password"  id="password"/></td>
									</tr>
									<tr>
										<td>��֤��</td>
										<td><input type="text"  maxlength="4" size="4" id="code" name="account.code" id="code"/> &nbsp;<img src="<%=basePath %>/Image" /></td>
									</tr>								
									<tr>
								    	<td colspan="2"  ><font color="red"><s:fielderror /><s:actionmessage />&nbsp;</font> </td> 
								    </tr>								
									<tr>
										<td>&nbsp;</td>
										<td>
										<input type="submit" class="btn" value=" ��¼ " name="B1">&nbsp;&nbsp;
										<input type="reset"  class="btn" value=" ���� " name="B2">
										</td>
									</tr>

								</table>

							</li>
						</ul>
					</div><!--tabcon end-->
			</div>
		</td>
	</tr>
</table>

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
		<li>��ϵͳ���Ϻ������Ƽ����޹�˾������ά�� www.it-tree.com  ��˾�绰��64834650</li>
		<li>�Ϻ�������ʳƷ�������İ�Ȩ���в������Ա���վ���ݵĸ���������Ȩ��</li>
		<li>�Ϻ�������չ���޹�˾��Ȩ���в������Ա���վ���ݵĸ���������Ȩ��</li> 
		<li>�̺����Ͱ�Ȩ���в������Ա���վ���ݵĸ���������Ȩ��</li>
	</ul>
</div>
	</td>
  </tr>
</table>


</body>
</html>

