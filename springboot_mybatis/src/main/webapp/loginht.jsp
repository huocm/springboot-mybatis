<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content ="��̽����ͻ�����"/>  
<meta name="keywords" content ="��̽����ͻ�����"/>
<title>��̽����ͻ�����-�û���¼</title>
<link rel="stylesheet" href="<%=basePath %>css/sub_css/viplogin.css" type="text/css">
<link rel="stylesheet" href="<%=basePath %>css/sub_css/loginstyle.css" type="text/css">
<link rel="stylesheet" href="<%=basePath %>css/sub_css/mylogin.css" type="text/css">

<style type="text/css">
.nav_menu ul { list-style:none;}
.nav_menu ul li {
float:left; 
position:relative;
width:80px;
margin-right:20px;
}
.nav_menu ul li ul {
display: none;
list-style:none;
margin-left:15px;
}
.nav_menu>ul>li:hover>a {
color:#ff0000; 
}
.nav_menu>ul>li:hover>ul {
list-style:none;
display:block; 
position:absolute; 
width:80px;
border:#44ac85 solid 1px;
border-top:none;
height:auto;
background:url(images/sub_images/hovbja.png) repeat;
padding-bottom:5px;
}
.nav_menu>ul>li:hover>ul>li>a {
display:block;
color:#32a16e;
height:18px;
line-height:20x;
font-size:12px;
width:80px;
text-align:center;
padding-top:0px;
padding-bottom:5px;
}
.nav_menu ul li:hover ul li a:hover {color:#ff0000;}
}
</style>
</head>
<script src="<%=basePath %>js/jquery-1.6.min.js" type="text/javascript"></script>
<script src="<%=basePath %>js/loginselect.js" type="text/javascript" ></script>
<script type="text/javascript">
//user��¼
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

    var yzm = $("#yzm").val();
    //alert(yzm);
    if (yzm == '') {
        alert("��֤�벻��Ϊ��!");
        $("#yzm").focus();
        return false;
    }
    
    form1.action="<%=basePath%>userLogin.action?flag=user";
    form1.submit();
} //end check
       
//ȡ����֤��
function changeValidateCode(obj) {  
    var currentTime= new Date().getTime();  
    obj.src = "<%=basePath %>RandImage.action?d=" + Math.random(); // currentTime;  
}  

//��ʾ�������
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}
</script>
<body>
<div id="divLayer" >
</div>

<jsp:include page="loginInclude.jsp" />

<!---------ͷ��banner ����  �ҵĽ��-------->
<div class="banner_login">
	<div class="banner_ser"></div>
</div>
<!---------����-------->
<!---------��������-------->
			    
<form name="form1" method="post"> 
			    
<div class="login">
	<div class="login_con">
		<form action="<%=basePath%>"   method="post">
		     <div style="color:#ffffff; font-size: 16px; border-left-width: 580px; padding-left: 540px; padding-top: 15px;font-weight:2px;"><strong>��̨��¼</strong></div>
	 		
	 		<input type="hidden"   name="test"  value="5">
	    	<div class="content">
		       <input name="username"   id ="username"  type="text" class="usr" maxlength="20" />
		       <input name="password"   id = "password"  type="password" class="psw" autocomplete="off"  maxlength="20"  />
						       
		        <input name="tourl"     id = "tourl"  type="hidden"        class="psw" maxlength="200" />
		        <input name="jump"  type="hidden"     value="1"   class="psw" maxlength="20" />
		       	<div>
		           	<table>
					 	<tr>
						    <td><input name="yzm"   id="yzm"   type="text" class="code" maxlength="4" /> </td>
							<td><div class = "authcode"  style="padding-top: 10px">
							<img src="RandImage.action" onclick="changeValidateCode(this)"  style="cursor:hand;" />  
							</div></td>
	       				</tr>
	    			</table>
	       		</div>
	        	<div class="rem">
	       			<input name="chkRememberPwd"  id="chkRememberPwd"  type="checkbox" value="1" checked /><label for = "chkRememberPwd">��ס��</label>
	        	</div>
	       		<div class="smt_btn"><img name="" value=""   onclick="return checkUser()"  src="<%=basePath %>images/sub_images/btn_01.png" style="-moz-opacity:1; filter:alpha(opacity=100);cursor:hand;" 
	                        onmouseover="this.style.MozOpacity=0.5;this.filters.alpha.opacity=50"
	                        onmouseout="this.style.MozOpacity=1;this.filters.alpha.opacity=100" /><a href="#">&nbsp&nbsp�������룿</a></div>
	        </div>
	    </form>

    </div>
    <div class="reg">��û���˺ţ�<br />����ע�Ტ��д��Ϣ����������̽�������
    	<div class="reg_btn"><a href="#"><img src="<%=basePath %>images/sub_images/regbtn.jpg" /></a></div>
    </div>
</div>
<hr/>

</form>

<div  align="center" style="clear:both;line-height:25px;">
<%@include file="footer.jsp" %>	
</div>

 
</body>
</html>
