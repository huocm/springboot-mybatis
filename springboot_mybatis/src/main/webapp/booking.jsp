<%@ page language="java" contentType="text/html;charset=GBK"
	pageEncoding="GBK" errorPage="Error.jsp"%>
<%//@include file="sessionCustomerValidate.jsp" %>
<%@include file="taglibs.jsp" %>
<%@ page import="com.jxc.domain.T_card"%>
<%@ page import="com.jxc.domain.T_member"%>

<%
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>金程健康_健康体检_全方位健康管理解决服务商</title>
<meta name="keywords" content="体检,金程健康体检,体检中心,健康体检,健康管理,金程健康" />
<meta name="description"
	content="金程健康体检中心是全国领先的体检中心，是健康体检、健康促进、就医保障和私人保健医生等健康管理服务的集成商;提供健康体检(男体检/女性体检)、健康管理、企业员工体检等全方位健康管理服务。" />

<link href="css/sub_css/jincheng.css" rel="stylesheet" type="text/css" />
<link href="css/sub_css/reservationform.css" rel="stylesheet" type="text/css" />

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<script src="<%=basePath2 %>js/jquery-1.6.min.js" type="text/javascript"></script>
<script language="JavaScript" src="<%= basePath2 %>/js/myAjax.js"></script>
<!--<script language="JavaScript" src="<%= basePath2 %>jscript/date.js" ></script>    -->
<script language="JavaScript" src="<%= basePath2 %>/js/calendar.js"></script>

</head>
<script type="text/javascript">
    
     //成员预约提交
	function memberTjCheck(){	
	
		var membername = document.getElementById('membername').value;		
		if(membername==null || membername ==''){
		    alert("您的姓名不能为空！");
			return false;
		}
	    
	    var paystatus = document.getElementById('paystatus').value;		
        if(paystatus==null || paystatus ==''){
		    alert("请选择性别！");
			return false;
		}
			    
	    var memo = document.getElementById('memo').value;		
        if(memo==null || memo ==''){
		    alert("手机号码不能为空！");
			return false;
		}
		if(memo.length!=11){
		    alert("手机号码必须为11位数字！");
			return false;
		}	
		if(isNaN(memo)){
		    alert("手机号码必须为11位数字！");
			return false;
		}			

	    var memo2 = document.getElementById('memo2').value;		
        if(memo2==null || memo2 ==''){
		    alert("身份证号码不能为空！");
			return false;
		}
		if(memo2.length!=18){
		    alert("身份证号码必须为18位！");
			return false;
		}	
		//身份证验证
		if( !checkIdcard(memo2) ) {
        	return false;
        }
		
	    var answertime = document.getElementById('answertime').value;	
        if(answertime==null || answertime ==''){
		    alert("体检日期不能为空！");
			return false;
		}	
        
	    var starttime = document.getElementById('starttime').value;	
	    if(starttime==null || starttime ==''){
		    alert("备用体检日期不能为空！");
			return false;
		}	

	    var starttime = document.getElementById('starttime').value;	
	    if(starttime==null || starttime ==''){
		    alert("备用体检日期不能为空！");
			return false;
		}	
	    
		//var rds = document.getElementsByName("companyid");
        //var ckd = "0";
        //for(var i=0;i<rds.length;i++){
	    //     if(rds[i].checked){
	    //        ckd="1";
	    //     }
	    // }
	    // if(ckd=="0"){
	    // 	alert("体检机构不能为空！");
	     //	return false;
	    // }

		//var memberid = document.getElementById('memberid').value;		
		//if(memberid==null || memberid ==''){
		//    alert("您的memberid账号不能为空！");
		//	return false;
		//}     

	    var area = document.getElementById('area').value;		
		if(area==null || area ==''){
		    alert("请选择城市！");
			return false;
		}     

	    var companypid = document.getElementById('companypid').value;		
		if(companypid==null || companypid ==''){
		    alert("请选择体检机构！");
			return false;
		}    
		
	    var companyid = document.getElementById('companyid').value;		
		if(companyid==null || companyid ==''){
		    alert("请选择体检门店！");
			return false;
		}    
		
	    var customerid = document.getElementById('customerid').value;		
		if(customerid==null || customerid ==''){
		    alert("您对应的企业账号不能为空！");
			return false;
		}        
		form1.action = "<%= basePath2 %>T_bookActionSave.action";
		form1.submit();
		alert("预约信息已经提交，预约信息审核通过后，会发送预约成功短信到你手机："+memo+"上，请关注预约短信通知。谢谢您使用金程预约平台！");
}
           
//card卡预约提交 
function cardYyTjcheck(){
   		var membername = document.getElementById('membername').value;		
		if(membername==null || membername ==''){
		    alert("您的姓名不能为空！");
			return false;
		}
	    
	    var paystatus = document.getElementById('paystatus').value;		
        if(paystatus==null || paystatus ==''){
		    alert("请选择性别！");
			return false;
		}
			    
	    var memo = document.getElementById('memo').value;		
        if(memo==null || memo ==''){
		    alert("手机号码不能为空！");
			return false;
		}
		if(memo.length!=11){
		    alert("手机号码必须为11位数字！");
			return false;
		}	
		if(isNaN(memo)){
		    alert("手机号码必须为11位数字！");
			return false;
		}			

	    var memo2 = document.getElementById('memo2').value;		
        if(memo2==null || memo2 ==''){
		    alert("身份证号码不能为空！");
			return false;
		}
		if(memo2.length!=18){
		    alert("身份证号码必须为18位！");
			return false;
		}	
		//身份证验证
		if( !checkIdcard(memo2) ) {
        	return false;
        }
        
	    var answertime = document.getElementById('answertime').value;	
	    if(answertime==null || answertime ==''){
		    alert("体检日期不能为空！");
			return false;
		}	

	    var starttime = document.getElementById('starttime').value;	
	    if(starttime==null || starttime ==''){
		    alert("备用体检日期不能为空！");
			return false;
		}	
	    
	    var area = document.getElementById('area').value;		
        if(area==null || area ==''){
		    alert("体检城市不能为空！");
			return false;
		}	

	    var companypid = document.getElementById('companypid').value;		
        if(companypid==null || companypid ==''){
		    alert("体检机构不能为空！");
			return false;
		}	
		
	    var companypname = document.getElementById('companypname').value;		
        if(companypname==null || companypname ==''){
		    alert("体检机构名称不能为空！");
			return false;
		}	
		
		//var memberid = document.getElementById('memberid').value;		
		//if(memberid==null || memberid ==''){
		//    alert("您的cardno账号不能为空！");
		//	return false;
		//}    
		
		var companyid = document.getElementById('companyid').value;		
		if(companyid==null || companyid ==''){
		    alert("体检门店不能为空！");
			return false;
		}    

		var companyname = document.getElementById('companyname').value;		
		if(companyname==null || companyname ==''){
		    alert("体检门店名称不能为空！");
			return false;
		}    
		    
		form1.action = "<%= basePath2 %>T_bookActionSave.action";
		form1.submit();
		alert("预约信息已经提交待处理！请在本页面下部查看预约信息！");
   
}

//请求函数
function myRequest(xz){
	//alert("-------xz="+xz)
    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=basePath2%>T_companyActionFindYyAll.action?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var area = document.getElementById("area").value;
    var content ="area="+encodeURI(encodeURI(area))+"&xz="+xz; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",callBack );
}
        
//回调函数
function callBack(){

	clearCompanyid();
	clearTjmd();

    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var companypid = document.getElementById("companypid");
			var results = http_request.responseXML.getElementsByTagName("company");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
		   
		    option = document.createElement("option");
		    option.setAttribute("value", "");
		    option.appendChild(document.createTextNode("--------------------"));
		    companypid.appendChild(option);  			
			
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    companypid.appendChild(option);  
			    //alert(option);         
            }
            //alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
    }
}

//请求函数
function loadTjmd(bdxz){
    //首先把原来的数据清除掉
    clearTjmd();

    setCompanyHiddenValue();

    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=basePath2%>T_companyActionFindTjmdAll.action?time='+ Math.random();
		//alert(url);
		//要提交到服务器的数据
		var content = "pid=" + document.getElementById("companypid").value+"&bdxz="+bdxz; // "userName=" + name;
		//调用异常请求提交的函数
		//alert(url+content);
		sendRequest("POST", url, content, "TEXT", loadTjmdCallBack);
	}

	//回调函数
	function loadTjmdCallBack() {

		// 请求已完成
		if (http_request.readyState == 4) {
			// 信息已经成功返回，开始处理信息
			if (http_request.status == 200) {
				var companyid = document.getElementById("companyid");
				var results = http_request.responseXML
						.getElementsByTagName("company");
				var option = null;
				var text = null;
				//alert("results="+results+",length="+results.length); 

				option = document.createElement("option");
				option.setAttribute("value", "");
				option.appendChild(document
						.createTextNode("--------------------"));
				companyid.appendChild(option);

				for ( var i = 0; i < results.length; i++) {
					option = document.createElement("option");
					option.setAttribute("value", results[i].getAttribute("id"));
					//option.setAttribute("value", results[i].firstChild.nodeValue);
					option.appendChild(document
							.createTextNode(results[i].firstChild.nodeValue));
					companyid.appendChild(option);
					//alert(option);         
				}
				//alert("完毕!");
				setCompanyHiddenValue();
			} else { //页面不正常
				alert('您所请求的页面有异常');
			}
		}
	}

	//清除体检门店选择内容
	function clearTjmd() {
		var obj = document.getElementById("companyid");
		while (obj.childNodes.length > 0) {
			obj.removeChild(obj.childNodes[0]);
		}
	}

	//清除体检公司选择内容
	function clearCompanyid() {
		var obj = document.getElementById("companypid");
		while (obj.childNodes.length > 0) {
			obj.removeChild(obj.childNodes[0]);
		}
	}

	function setCompanyHiddenValue() {
		//获取select　option  对象
		var ss = document.form1.companypid;
		var hiddenValue = ss.options[ss.selectedIndex].text;
		//alert("name="+hiddenValue);
		//获取option的text
		document.form1.companypname.value = hiddenValue;

	}

	function setTjmdHiddenValue() {
		//获取select　option  对象
		var ss = document.form1.companyid;
		var hiddenValue = ss.options[ss.selectedIndex].text;
		//alert("name="+hiddenValue);
		//获取option的text
		document.form1.companyname.value = hiddenValue;

	}

	//校验身份证号码是否正确
	function checkIdcard(num) {
		num = num.toUpperCase();
		//身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X。
		if (!(/(^\d{15}$)|(^\d{17}([0-9]|X)$)/.test(num))) {
			alert('输入的身份证号长度不对，或者号码不符合规定！\n15位号码应全为数字，18位号码末位可以为数字或X。');
			return false;
		}
		//校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。
		//下面分别分析出生日期和校验位
		var len, re;
		len = num.length;
		if (len == 15) {
			re = new RegExp(/^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/);
			var arrSplit = num.match(re);

			//检查生日日期是否正确
			var dtmBirth = new Date('19' + arrSplit[2] + '/' + arrSplit[3]
					+ '/' + arrSplit[4]);
			var bGoodDay;
			bGoodDay = (dtmBirth.getYear() == Number(arrSplit[2]))
					&& ((dtmBirth.getMonth() + 1) == Number(arrSplit[3]))
					&& (dtmBirth.getDate() == Number(arrSplit[4]));
			if (!bGoodDay) {
				alert('输入的身份证号里出生日期不对！');
				return false;
			} else {
				//将15位身份证转成18位
				//校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。
				var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10,
						5, 8, 4, 2);
				var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5',
						'4', '3', '2');
				var nTemp = 0, i;
				num = num.substr(0, 6) + '19' + num.substr(6, num.length - 6);
				for (i = 0; i < 17; i++) {
					nTemp += num.substr(i, 1) * arrInt[i];
				}
				num += arrCh[nTemp % 11];
				return true;
			}
		}
		if (len == 18) {
			re = new RegExp(/^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/);
			var arrSplit = num.match(re);

			//检查生日日期是否正确
			var dtmBirth = new Date(arrSplit[2] + "/" + arrSplit[3] + "/"
					+ arrSplit[4]);
			var bGoodDay;
			bGoodDay = (dtmBirth.getFullYear() == Number(arrSplit[2]))
					&& ((dtmBirth.getMonth() + 1) == Number(arrSplit[3]))
					&& (dtmBirth.getDate() == Number(arrSplit[4]));
			if (!bGoodDay) {
				alert('输入的身份证号里出生日期不对！');
				return false;
			} else {
				//检验18位身份证的校验码是否正确。
				//校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。
				var valnum;
				var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10,
						5, 8, 4, 2);
				var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5',
						'4', '3', '2');
				var nTemp = 0, i;
				for (i = 0; i < 17; i++) {
					nTemp += num.substr(i, 1) * arrInt[i];
				}
				valnum = arrCh[nTemp % 11];
				if (valnum != num.substr(17, 1)) {
					alert('18位身份证的校验码不正确！应该为：' + valnum);
					return false;
				}
				return true;
			}
		}
		return false;
	}
	
	//提示操作结果
	var vmessage ="<s:property value='message' />";
	if(vmessage!=""){
	    alert(vmessage);
	}	
</script>
<body>
	<form name="form1" method="post">

		<%@include file="header.jsp"%>

		<div class="list_banner" id="list_banner">
			<img src="<%=basePath %>images/sub_images/nban7.jpg" />
		</div>
		<div class="list_banner_bg">
			<span class="home"><a href="<%=basePath2%>index.jsp">首页</a>><a
				href="<%=basePath2%>booking.jsp">会员专区</a>><a>在线预约</a></span>
			<div class="midd">

				<div class="midd_lef">
					<h2>会员专区</h2>
					<div class="list_hr" style="float: left;"></div>

					<div class="lis">
						<span><a href="<%=basePath2%>gryyFind.action">在线预约</a></span>
						<span><a href="<%=basePath2%>tjbgxzFind.action">体检报告下载</a></span>
					    <span><a href="<%=basePath%>vip.jsp">VIP专享服务</a></span>

					</div>
					<div class="list_hr2" style="float: right;"></div>
					<div id="clear"></div>
				</div>
				<div class="midd_right">


					<%
          if(request.getSession().getAttribute("flag")==null||request.getSession().getAttribute("flag").equals("")){
        	  //未登录
         %>
					<p class=" font-16 font-color-444 font-lh30">
						<br>请先登录，然后再使用该功能！<br>
					</p>
					<%
          }else if(request.getSession().getAttribute("flag")!=null&&request.getSession().getAttribute("flag").toString().equals("card"))
          {
        	  //卡号登陆
        	  T_card card = ((T_card)request.getSession().getAttribute("customer"));
         %>

					<!-- -->
					<div class="information">
						<h2>
							我要预约（注意：预约成功后，以短信通知为准）
							<h2>
								<div class="reservationForm">
									<p>
										<label class="labeltext" for="name">您的姓名：</label> <input
											class="border-1-ccc p-9" type="text" name="t_book.membername"
											id="membername" value="" maxlength="10" /> <span>*</span>
										<s:hidden name="t_book.customerid" id="customerid" value="0" />
									</p>
									<p>
										<label class="labeltext" for="gender_m">选择性别：</label> <select
											name="t_book.paystatus" id="paystatus">
											<option value="">----------</option>
											<option value="1">男</option>
											<option value="2">女(未婚)</option>
											<option value="3">女(已婚)</option>
										</select>							
										<span>&nbsp;&nbsp;*</span>
									</p>
									<p>
										<label class="labeltext" for="tel">手机号码：</label> <input
											type="text" name="t_book.memo" id="memo" maxlength="11">
										<span>*</span>（接收短信通知）
									</p>
									<p>
										<label class="labeltext" for="tel">身份证号码：</label> <input
											type="text" name="t_book.memo2" id="memo2" maxlength="18 "
											value=""><span>*</span>
									</p>
									<p>
										<label class="labeltext" for="date1">体检日期：</label> <input
											type="text" name="t_book.answertime" id="answertime"
											onclick='SelectDate(this)' readonly='true'> <span>*</span>

									</p>
									<p>
										<label class="labeltext" for="date2">备用体检日期：</label> <input
											type="text" name="t_book.starttime" id="starttime"
											onclick='javascript:SelectDate(this)' readonly='true'><span>*</span>
									</p>
									<p>
										<label class="labeltext" for="medicalcity">选择体检城市：</label> <select
											name="t_book.area" id="area" onChange="myRequest('1')">
											<option value="">----------</option>
											<option value="上海">上海</option>
											<option value="南京">南京</option>
											<option value="武汉">武汉</option>
											<option value="广州">广州</option>
										</select> <span>*</span>
									</p>
									<p>
										<label class="labeltext" for="medicalcom">选择体检机构：</label> <select
											name="t_book.companypid" id="companypid"
											onChange="loadTjmd('1')" >
											<option value="">---------------------</option>
										</select> <span>*</span>
										<s:hidden id="companypname" name="t_book.companypname"
											value="" />
									</p>
									<p>
										<label class="labeltext" for="medicalstore">选择体检门店：</label> <select
											name="t_book.companyid" id="companyid"
											onChange="setTjmdHiddenValue()">
											<option value="">---------------------</option>
										</select> <span>*</span>
										<s:hidden id="companyname" name="t_book.companyname"  value="" />
										<s:hidden id="productname" name="t_book.productname" 	value="<%=card.getMemo2() %>" />
										
									</p>
									<p>
										<s:hidden name="t_book.status" id="status" value="1" />
										<s:hidden name="t_book.booktype" id="booktype" value="2" />
										<input class="tijiaobtn" name="" type="image" value=""   onclick=" return cardYyTjcheck()"     src="<%=basePath %>images/sub_images/btn_02.png" />
									</p>

								</div>
					</div>
					<!--  -->
					<%	  
          }else if(request.getSession().getAttribute("flag")!=null&&request.getSession().getAttribute("flag").toString().equals("member")){
        	  //member 成员登陆
              T_member member = ((T_member)request.getSession().getAttribute("customer"));
          %>
					<div class="information">
						<h2>
							我要预约（注意：预约成功后，以短信通知为准）
							<h2>
								<div class="reservationForm">
									<p>
										<label class="labeltext" for="name">您的姓名：</label> <input
											type="text" name="t_book.membername" id="membername"   value="<%=request.getSession().getAttribute("customerName") %>"readonly="true" /> 
											<span>*</span>
										<s:hidden name="t_book.customerid" id="customerid"   value="${sessionScope.customer.customerid }" />
									</p>
									<p>
										<label class="labeltext" for="gender_m">选择性别：</label> <label
											class="checkbox"> <select name="t_book.paystatus"
											id="paystatus">
												<option value="">----------</option>
												<option value="1">男</option>
												<option value="2">女(未婚)</option>
												<option value="3">女(已婚)</option>
										</select>
										</label> <span>&nbsp;&nbsp;*</span>
									</p>
									<p>
										<label class="labeltext" for="tel">手机号码：</label> <input
											type="text" name="t_book.memo" id="memo" length="11"
											maxlength="11"> <span>*</span>（接收短信通知）
									</p>
									<p>
										<label class="labeltext" for="tel">身份证号码：</label> <input
											type="text" name="t_book.memo2" id="memo2" maxlength="18 "
											value="<%= request.getSession().getAttribute("accountno") %>">
									</p>
									</p>
									<p>
										<label class="labeltext" for="date1">体检日期：</label> <input
											type="text" name="t_book.answertime" id="answertime"
											onclick='javascript:SelectDate(this)' readonly='true'>
										<span>*</span>
										<s:hidden name="t_book.status" id="status" value="1" />
										<s:hidden name="t_book.booktype" id="booktype" value="1" />
									</p>
									<p>
										<label class="labeltext" for="date2">备用体检日期：</label> <input
											type="text" name="t_book.starttime" id="starttime"
											onclick='javascript:SelectDate(this)' readonly='true'><span>*</span>
									</p>
									<p>
										<label class="labeltext" for="medicalcity">选择体检城市：</label> <select
											name="t_book.area" id="area" onchange="myRequest(2)">
											<option value="">----------</option>
											<option value="上海">上海</option>
											<option value="南京">南京</option>
											<option value="武汉">武汉</option>
											<option value="广州">广州</option>
										</select> <span>*</span>
									</p>
									<p>
										<label class="labeltext" for="medicalcom">选择体检机构：</label> <select
											name="t_book.companypid" id="companypid"
											onChange="loadTjmd(2)">
											<option value="">---------------------</option>
										</select> <span>*</span>
										<s:hidden id="companypname" name="t_book.companypname"
											value="" />
									</p>
									<p>
										<label class="labeltext" for="medicalstore">选择体检门店：</label> <select
											name="t_book.companyid" id="companyid"
											onChange="setTjmdHiddenValue()">
											<option value="">---------------------</option>
										</select> <span>*</span>
										<s:hidden id="companyname" name="t_book.companyname" value="" />
										<s:hidden id="productname" name="t_book.productname" value="${sessionScope.customer.memo }" />
									</p>
									<p>
										<input class="tijiaobtn" name="" type="image" value=""
											src="<%=basePath %>images/sub_images/btn_02.png"
											onclick=" return memberTjCheck()" />
									</p>

								</div>
					</div>
					<% }%>

				</div>

				<div id="clear"></div>
				<div class="line1"></div>

				<div class="reservationForm">
					<p class="labeltext">预约信息：</p>
					
					<ul >
						<li class="width170px bold">姓名</li>
						<li class="width170px bold">预约时间</li>
						<li class="width170px bold">手机号码</li>
						<li class="width220px bold">体检机构</li>
						<li class="width200px bold">体检门店</li>
						<!-- <li class="width150px bold">预约类型</li> -->
					</ul>

					<s:iterator value="paginationSupport.items" status="stuts">
						<ul>
							<li class="width170px">${membername }</li>
							<li class="width170px">${answertime }</li>
							<li class="width170px">${memo }</li>
							<li class="width220px">${companypname }</li>
							<li class="width200px">${companyname }</li>
							<!--<li class="width150px"><s:if test="${booktype=='1'}">成员预约</s:if>
								<s:elseif test="${booktype=='2'}">卡预约</s:elseif> <s:elseif
									test="${booktype=='3'}">团购预约</s:elseif></li> -->
						</ul>
					</s:iterator>
                  
				</div>
				<div id="clear"></div>
			</div>
			<div id="clear"></div>
			<div class="height30px"></div>
		</div>
		<div id="clear"></div>

        <%@include file="footer.jsp" %>	


		</div>
	</form>
</body>
</html>
              
