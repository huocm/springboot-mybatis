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
	  //���ŵ�½
	  T_card card = ((T_card)request.getSession().getAttribute("customer"));
	  oldpassword =card.getSecurity();
	  logintype = "card";
	  
}else if(request.getSession().getAttribute("flag")!=null&&request.getSession().getAttribute("flag").toString().equals("member")){
	  //member ��Ա��½
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
//��ԱԤԼ�ύ
function memberCPCheck(){	

	var password = document.getElementById('password').value;		
	if(password==null || password ==''){
	    alert("ԭʼ���벻��Ϊ�գ�");
		return false;
	}
	if(password!='<%=oldpassword%>'  ){
	    alert("�������ԭʼ���벻��ȷ�����������룡");
		return false;
	}
	
    var newpassword = document.getElementById('newpassword').value;		
    if(newpassword==null || newpassword ==''){
	    alert("�����벻��Ϊ�գ�");
		return false;
	}
		    
    var newpassword2 = document.getElementById('newpassword2').value;		
    if(newpassword2==null || newpassword2 ==''){
	    alert("ȷ�������벻��Ϊ�գ�");
		return false;
	}

	if(newpassword2!=newpassword  ){
	    alert("����������������벻һ�£���������ͬ�������룡");
		return false;
	}	
  
	form1.action = "<%= basePath2 %>T_memberChangePassword.action?logintype=<%=logintype%>";
	form1.submit();
	alert("�����޸ĳɹ���");
}
 
 
//��ʾ�������
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}

</script>    

<body>

    	<%@include file="header.jsp" %>		
<form name="form1"   method="post">     		
<!-- -------ͷ��banner ����  �ҵĽ��-------
<div class="banner2">
	<div class="banner_ser">��̽���<span>���߿ͻ�����</span></div>
</div>
-->
<!---------��������-------->
<div id="formbox">
    <h3>�޸�����</h3>
	<div class="curpos">
	    <span>��ǰλ�ã���̽��� &gt;&gt; �޸�����</span>
	</div>
	
	<form action="" name="form1" method="post">
	
	<div class="item">
	    <div class="label"><span class="red">*&nbsp;</span>ԭʼ���룺</div>
		<div class="inputBox"><input name="password" class="text" maxlength="20" autocomplete="off" tabindex="1" type="password"></div>
	</div>
	<div class="clear"></div>
	
	<div class="item">
	    <div class="label"><span class="red">*&nbsp;</span>�����룺</div>
		<div class="inputBox"><input name="newpassword" class="text"  maxlength="20" autocomplete="off" tabindex="2" type="password"></div>
	</div>
	<div class="clear"></div>
	
	<div class="item">
	    <div class="label"><span class="red">*&nbsp;</span>�ٴ�ȷ�������룺</div>
		<div class="inputBox"><input name="newpassword2" class="text"  maxlength="20" autocomplete="off" tabindex="3" type="password"></div>
	</div>
	<div class="clear"></div>
	
	<div class="item">
	    <div class="label">&nbsp;</div>
		<input class="green_button" value="ȷ���޸�" tabindex="4" type="button" onclick="memberCPCheck()">
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