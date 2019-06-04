<%@ page contentType="text/html;charset=GBK" language="java"  errorPage="Error.jsp" %>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��̹���ϵͳ</title>
<link href="<s:url value="/css/style.css"/>" rel="stylesheet" type="text/css">
<style type="text/css">

*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font:12px/180% Arial, Helvetica, sans-serif,"����";}
a{color:#333;text-decoration:none;}
a:hover{color:#3366cc;text-decoration:underline;}

/* demo */
.demo{width:400px;margin:40px auto;position:relative;}
.demo h2{font-size:16px;height:44px;color:#3366cc;margin-top:20px;}
.demo dl dt{font-size:14px;color:#ff6600;margin-top:30px;font-weight:800;}
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
.sublist li span{margin:0 5px 0 0;font-family:"����";font-size:12px;font-weight:400;color:#ddd;}

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

  function checkUser() {
            var username = $("#username").val();
            if (username == '') {
                alert("�����˺Ų���Ϊ��!");
                $("#username").focus();
                return false;
            }
            var password = $("#password").val();
            if (password == '') {
                alert("���벻��Ϊ��!");
                $("#password").focus();
                return false;
            }

            form1.action="<%=basePath%>userLogin.action?flag=user";
            form1.submit();
  } //end check;
    
 function checkCustomer(){
            var customername = $("#customername").val();
            if (customername == '') {
                alert("��ҵ�˺Ų���Ϊ��!");
                $("#customername").focus();
                return false;
            }
            var customerpassword = $("#customerpassword").val();
            if (customerpassword == '') {
                alert("���벻��Ϊ��!");
                $("#customerpassword").focus();
                return false;
            }

            form1.action="<%=basePath%>customerLogin.action?flag=customer";
            form1.submit();
  } //end checkCustomer;
    
 function checkMember(){
            var membername = $("#membername").val();
            if (membername == '') {
                alert("��Ա�˺Ų���Ϊ��!");
                $("#membername").focus();
                return false;
            }
            var memberpassword = $("#memberpassword").val();
            if (memberpassword == '') {
                alert("���벻��Ϊ��!");
                $("#memberpassword").focus();
                return false;
            }

            form1.action="<%=basePath%>memberLogin.action?flag=member&type=zh"; //�˺�
            form1.submit();
  } //end checkCustomer;     
    
 //��Ա���֤��ʽ��¼   
 function checkMemberSfz(){
            var membernameSfz = $("#membernameSfz").val();
            //alert(membernameSfz)
            if (membernameSfz == '') {
                alert("���֤�Ų���Ϊ��!");
                $("#membernameSfz").focus();
                return false;
            }
            var memberpasswordSfz = $("#memberpasswordSfz").val();
            if (memberpasswordSfz == '') {
                alert("���벻��Ϊ��!");
                $("#memberpasswordSfz").focus();
                return false;
            }

            form1.action="<%=basePath%>memberLogin.action?flag=member&type=sfz";
            form1.submit();
  } //end checkCustomer;    

//��Ա�ֻ���ʽ
 function checkMemberPhone(){
            var membernamePhone = $("#membernamePhone").val();
            if (membernamePhone == '') {
                alert("�ֻ��Ų���Ϊ��!");
                $("#membernamePhone").focus();
                return false;
            }
            var memberpasswordPhone = $("#memberpasswordPhone").val();
            if (memberpasswordPhone == '') {
                alert("���벻��Ϊ��!");
                $("#memberpasswordPhone").focus();
                return false;
            }

            form1.action="<%=basePath%>memberLogin.action?flag=member&type=phone";
            form1.submit();
  } //end checkCustomer;    

//��Ա��ʵ�￨�ŷ�ʽ��¼
 function checkMemberCard(){
            var membernameCard = $("#membernameCard").val();
            if (membernameCard == '') {
                alert("���Ų���Ϊ��!");
                $("#membernameCard").focus();
                return false;
            }
            var memberpasswordCard = $("#memberpasswordCard").val();
            if (memberpasswordCard == '') {
                alert("���벻��Ϊ��!");
                $("#memberpasswordCard").focus();
                return false;
            }

            form1.action="<%=basePath%>memberCardLogin.action?flag=member&type=card";
            form1.submit();
  } //end checkCustomer;    
       
</script>
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
					 <A href="<%=basePath %>index.jsp"  target="_parent" class="link1">��ҳ</A> &nbsp;&nbsp;&nbsp;&nbsp;
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


<table  align="center" border="0" width="50">
	<tr>
		<td>
			<div class="demo" >
				<!-- <h2>ѡ���¼ϵͳ</h2>  -->
				<ul class="tabbtn" id="normaltab">
					<li class="current"><a href="#">1���ͻ���¼</a></li>
				    <li><a href="#">2�����֤��¼</a></li>
					<li><a href="#">3���ֻ������¼</a></li>			
				</ul><!--tabbtn end-->
			    
			    <form name="form1" method="post"> 
				<div class="tabcon" id="normalcon" align="center">
					<div class="sublist"  align="center">
						<ul>
							<li><span>&nbsp;</span>
								<table  align="center" border="0" >
									<tr>
										<td>��Ա�˺�</td>
										<td><input type="text" value="" maxlength="20"  size="10" name="membername" id="membername"/></td>
									</tr>
									<tr>
										<td>����</td>
										<td><input type="password" value="" maxlength="20"  size="10" name="memberpassword"  id="memberpassword"/></td>
									</tr>
																
									<tr>
								    	<td colspan="2"  >&nbsp;<!-- <font color="red"><s:fielderror /><s:actionmessage />&nbsp;</font> --></td> 
								    </tr>								
									<tr>										
										<td colspan="3" align="center">
										<input type="button" class="btn" value=" ��¼ "  onclick="checkMember()" >&nbsp;&nbsp;
										<input type="reset"  class="btn" value=" ���� " >
										</td>
									</tr>
								</table>
							</li>
						</ul>
					</div><!--sublist end-->
					<div class="sublist"  align="center">
						<ul>
							<li><span>&nbsp;</span>
								<table  align="center" border="0" >
									<tr>
										<td>���֤��</td>
										<td><input type="text" value="" maxlength="20"  size="10" name="membernameSfz" id="membernameSfz"/></td>
									</tr>
									<tr>
										<td>����</td>
										<td><input type="password" value="" maxlength="18"  size="18" name="memberpasswordSfz"  id="memberpasswordSfz"/></td>
									</tr>
																
									<tr>
								    	<td colspan="2"  >&nbsp;<!-- <font color="red"><s:fielderror /><s:actionmessage />&nbsp;</font> --></td> 
								    </tr>								
									<tr>										
										<td colspan="3" align="center">
										<input type="button" class="btn" value=" ��¼ "  onclick="checkMemberSfz()" >&nbsp;&nbsp;
										<input type="reset"  class="btn" value=" ���� " >
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
										<td>�ֻ�����</td>
										<td><input type="text" value="" maxlength="20"  size="10" name="membernamePhone" id="membernamePhone"/></td>
									</tr>
									<tr>
										<td>����</td>
										<td><input type="password" value="" maxlength="11"  size="11" name="memberpasswordPhone"  id="memberpasswordPhone"/></td>
									</tr>
																
									<tr>
								    	<td colspan="2"  >&nbsp;<!-- <font color="red"><s:fielderror /><s:actionmessage />&nbsp;</font> --></td> 
								    </tr>								
									<tr>										
										<td colspan="3" align="center">
										<input type="button" class="btn" value=" ��¼ "  onclick="checkMemberPhone()" >&nbsp;&nbsp;
										<input type="reset"  class="btn" value=" ���� " >
										</td>
									</tr>
								</table>
							</li>
						</ul>
					</div><!--tabcon end-->
					
					
					</form>
					
			</div>
		</td>
	</tr>
</table>


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

