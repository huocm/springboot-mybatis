<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib prefix="s" uri="/struts-tags" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>团购预约信息增加页</title>
     <link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
<script language="JavaScript" src="<%= basePath %>/js/calendar.js"></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>     
<style type="text/css">
<!--
.STYLE5 {	color: #000000;
	font-size: 12px;
}
-->
</style>
</head>
<script type="text/javascript">

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
		
	  //var companypname = document.getElementById('companypname').value;		
      //if(companypname==null || companypname ==''){
		//    alert("体检机构名称不能为空！");
		//	return false;
		//}	
		
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

		var productname = document.getElementById('productname').value;		
		if(productname==null || productname ==''){
		    alert("套餐名称不能为空！");
			return false;
		}    
		
		form1.action = "<%= basePath %>T_bookActionSaveHt.action";
		form1.submit();
		alert("预约信息已经提交待处理！请在预约管理查看预约信息！");
 
}

//请求函数
function myRequest(xz){
	//alert("-------xz="+xz)
    //URL未尾要加个随机数，以免请求不能再次提交 
    var url = '<%=basePath%>T_companyActionFindYyAll.action?time='+Math.random();
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
    var url = '<%=basePath%>T_companyActionFindTjmdAll.action?time='+ Math.random();
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
				var results = http_request.responseXML.getElementsByTagName("company");
				var option = null;
				var text = null;
				//alert("results="+results+",length="+results.length); 

				option = document.createElement("option");
				option.setAttribute("value", "");
				option.appendChild(document.createTextNode("--------------------"));
				companyid.appendChild(option);

				for ( var i = 0; i < results.length; i++) {
					option = document.createElement("option");
					option.setAttribute("value", results[i].getAttribute("id"));
					//option.setAttribute("value", results[i].firstChild.nodeValue);
					option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
					companyid.appendChild(option);
					//alert(option);         
				}
				//alert("完毕!");
				setCompanyHiddenValue();
				//加载 体检机构对应卡套餐的信息，供选择
				loadKtc();
				
			} else { //页面不正常
				alert('您所请求的页面有异常');
			}
		}
	}


	//请求函数，加载卡套餐，根据体检机构pid
	function loadKtc(){
	    //首先把原来的数据清除掉
	    clearKtc();
	    
	    //URL未尾要加个随机数，以免请求不能再次提交
	    var url = '<%=basePath%>T_productsActionFindKtc.action?time='+ Math.random();
			//alert(url);
			//要提交到服务器的数据
			var content = "pid=" + document.getElementById("companypid").value; // "userName=" + name;
			//调用异常请求提交的函数
			//alert(url+content);
			sendRequest("POST", url, content, "TEXT", loadKtcCallBack);
		}

		//回调函数
		function   loadKtcCallBack() {

			// 请求已完成
			if (http_request.readyState == 4) {
				// 信息已经成功返回，开始处理信息
				if (http_request.status == 200) {
					var mubiao = document.getElementById("productname");
					var results = http_request.responseXML.getElementsByTagName("product");
					var option = null;
					var text = null;
					//alert("results="+results+",length="+results.length); 

					option = document.createElement("option");
					option.setAttribute("value", "");
					option.appendChild(document.createTextNode("--------------------"));
					mubiao.appendChild(option);

					for ( var i = 0; i < results.length; i++) {
						option = document.createElement("option");
						option.setAttribute("value", results[i].getAttribute("id"));
						//option.setAttribute("value", results[i].firstChild.nodeValue);
						option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
						mubiao.appendChild(option);
						//alert(option);         
					}					
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

	//清除 卡套餐选择内容
	function clearKtc() {
		var obj = document.getElementById("productname");
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
<body onload="" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<s:form action="" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·业务管理&gt;&gt; 预约管理&gt;&gt;团购预约</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="229" valign="top" >
                    
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >团购预约信息增加页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">姓名:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							     <input 	type="text" name="t_book.membername"
											id="membername" value="" maxlength="10" /><font color="#FF0000">*</font>	
					            	<s:hidden name="t_book.customerid" id="customerid" value="0" />
					            	<s:hidden  name="t_book.branchid" id="branchid" value="${sessionScope.branchid}"/>	
					            	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">性别</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<select
											name="t_book.paystatus" id="paystatus">
											<option value="">----------</option>
											<option value="1">男</option>
											<option value="2">女(未婚)</option>
											<option value="3">女(已婚)</option>
										</select>								    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">手机号码:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							       <input 	type="text" name="t_book.memo" id="memo" maxlength="11">
							       <font color="#FF0000">*</font>	
							       <s:hidden  name="t_book.status"  id="status" value="1" />	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
 							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">身份证号:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							                             <input 	type="text" name="t_book.memo2" id="memo2" maxlength="18 " 	value="">
							       <font color="#FF0000">*</font>	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>                           
 							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检日期:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    <input
											type="text" name="t_book.answertime" id="answertime"
											onclick='SelectDate(this)' readonly='true'> 
							    <font color="#FF0000">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">备用体检日期:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    <input  type="text" name="t_book.starttime" id="starttime"   onclick='javascript:SelectDate(this)' readonly='true'>
							    <font color="#FF0000">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            				     		
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">城市:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<select
											name="t_book.area" id="area" onChange="myRequest('1')">
											<option value="">----------</option>
											<option value="上海">上海</option>
											<option value="南京">南京</option>
											<option value="武汉">武汉</option>
											<option value="广州">广州</option>
										</select>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检机构:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                    <select
											name="t_book.companypid" id="companypid"   onChange="loadTjmd('1')" >
											<option value="">---------------------</option>
										</select> 										
					            	<font color="red">*</font>
	                               <s:hidden id="companypname" name="t_book.companypname"   value="" />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检门店:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                        <select
											name="t_book.companyid" id="companyid"
											onChange="setTjmdHiddenValue()">
											<option value="">---------------------</option>
										</select> <font color="red">*</font>
										<s:hidden id="companyname" name="t_book.companyname"  value="" />

									  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">套餐名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							       
							          <select
											name="t_book.productname" id="productname"
											onChange="">
											<option value="">---------------------</option>
										</select> <font color="red">*</font>
						     	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">客户地址:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <s:textfield  name="t_book.memo3" maxlength='50'  id="memo3"/>								        
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">客户来源:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <s:textfield  name="t_book.memo4" maxlength='50'  id="memo4"/>							        
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">快递单号:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <s:textfield  name="t_book.memo5" maxlength='50'  id="memo5"/>						        
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">消费验证时间:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <input  type="text" name="t_book.memo6" id="memo6"   onclick='javascript:SelectDate(this)' readonly='true'>
							         								        
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                                                        										
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">预约类型:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                    <select name="t_book.booktype" id="booktype" >					            					            	
					            		<option value="3">团购预约</option>
							        </select>
					            	<font color="red">*</font> 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>							
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="button" class="btn" value="    保存    " name="B1" onClick="cardYyTjcheck()">
								<input type="reset"  class="btn" value="    清除    " name="B2">
								<input type="button" class="btn" value="    返回    " name="B1" onClick="javascript:history.back(-1)">
						      </td>
						   </tr>					   
                         </table>
                        
						</td>
                      </tr>					  
					</table>
					
                  </td>
                </tr>
              </table>
             
             </td>
           </tr>
        </table>
       
       </td>
      </tr>
    </table>
   
   </td>
  </tr>
</table>

</s:form>
</body>
</html>
	