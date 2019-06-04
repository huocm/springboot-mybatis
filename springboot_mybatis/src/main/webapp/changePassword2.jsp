<%@ page language="java" contentType="text/html;charset=GBK"  pageEncoding="GBK" errorPage="Error.jsp"%>
<%//@include file="sessionCustomerValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.jxc.domain.T_card"%>
<%@ page import="com.jxc.domain.T_member"%>

<%
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";

String logintype="";
String oldpassword = "";
if(request.getSession().getAttribute("flag")!=null&&request.getSession().getAttribute("flag").toString().equals("card"))
{
	  //卡号登陆
	  T_card card = ((T_card)request.getSession().getAttribute("customer"));
	  oldpassword =card.getSecurity();
	  logintype = "card";
	  
}else if(request.getSession().getAttribute("flag")!=null&&request.getSession().getAttribute("flag").toString().equals("member")){
	  //member 成员登陆
    T_member member = ((T_member)request.getSession().getAttribute("customer"));
    oldpassword =member.getPassword();
	logintype = "member";
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title></title>
		     <link rel="stylesheet" href="css/sub_css/viplogin.css" type="text/css">
             <link rel="stylesheet" href="css/sub_css/regeditFormbox.css" type="text/css">
		     <script language="JavaScript" src="<%= basePath2 %>/js/myAjax.js" ></script>
		   
    </head>

<script type="text/javascript" language="javascript">                                                                                                                                                                                                                                                                                                                                                                                                                                                          
//成员预约提交
function memberCPCheck(){	

	var password = document.getElementById('password').value;		
	if(password==null || password ==''){
	    alert("原始密码不能为空！");
		return false;
	}
	if(password!='<%=oldpassword%>'  ){
	    alert("您输入的原始密码不正确，请重新输入！");
		return false;
	}
	
    var newpassword = document.getElementById('newpassword').value;		
    if(newpassword==null || newpassword ==''){
	    alert("新密码不能为空！");
		return false;
	}
		    
    var newpassword2 = document.getElementById('newpassword2').value;		
    if(newpassword2==null || newpassword2 ==''){
	    alert("确认新密码不能为空！");
		return false;
	}

	if(newpassword2!=newpassword  ){
	    alert("您两次输入的新密码不一致，请输入相同的新密码！");
		return false;
	}	
  
	form1.action = "<%= basePath2 %>T_memberChangePassword.action?logintype=<%=logintype%>";
	form1.submit();
	alert("密码修改成功！");
}
 
 
//提示操作结果
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}

</script>    

<body>

    	<%@include file="header.jsp" %>		
<form name="form1"   method="post">     		
<!-- -------头部banner 搜索  我的金程-------
<div class="banner2">
	<div class="banner_ser">金程健康<span>在线客户中心</span></div>
</div>
-->
<!---------主体内容-------->
<div id="formbox">
    <h3>修改密码</h3>
	<div class="curpos">
	    <span>当前位置：金程健康 &gt;&gt; 修改密码</span>
	</div>
	
	<form action="" name="form1" method="post">
	
	<div class="item">
	    <div class="label"><span class="red">*&nbsp;</span>原始密码：</div>
		<div class="inputBox"><input name="password" class="text" maxlength="20" autocomplete="off" tabindex="1" type="password"></div>
	</div>
	<div class="clear"></div>
	
	<div class="item">
	    <div class="label"><span class="red">*&nbsp;</span>新密码：</div>
		<div class="inputBox"><input name="newpassword" class="text"  maxlength="20" autocomplete="off" tabindex="2" type="password"></div>
	</div>
	<div class="clear"></div>
	
	<div class="item">
	    <div class="label"><span class="red">*&nbsp;</span>再次确认新密码：</div>
		<div class="inputBox"><input name="newpassword2" class="text"  maxlength="20" autocomplete="off" tabindex="3" type="password"></div>
	</div>
	<div class="clear"></div>
	
	<div class="item">
	    <div class="label">&nbsp;</div>
		<input class="green_button" value="确认修改" tabindex="4" type="button" onclick="memberCPCheck()">
	</div>
	<div class="clear"></div>
	
	</form>
	
</div>

</form>
		<div id="clear"></div>
  	    <%@include file="footer.jsp" %>			
	
    </div>
    </body>
</html>		