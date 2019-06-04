<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=GBK">

<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_report信息增加页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
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
//加载人员和机构
function load(){
	loadCustomer();
	//loadBranch(); 放到loadUsers()执行完后后，再调用，否则无法显示数据。
}	

//请求函数
function loadCustomer(){
    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=basePath%>T_customerActionFindAllAjax.action?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",loadCustomerCallBack );
}
        
//回调函数
function loadCustomerCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var mubiao = document.getElementById("customerid");
			var results = http_request.responseXML.getElementsByTagName("result");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    mubiao.appendChild(option);  
			    //alert(option);         
            }
            //alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
       
        loadCompany();
    }
}

//请求函数
function loadCompany(){
    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=basePath%>T_companyActionFindAll.action?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",loadCompanyCallBack );
}
        
//回调函数
function loadCompanyCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var companyid = document.getElementById("companyid");
			var results = http_request.responseXML.getElementsByTagName("company");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    companyid.appendChild(option);  
			    //alert(option);         
            }
            //alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
    }
}

 //请求函数
function loadOrderByCustomerid(customerid){
    
    //URL未尾要加个随机数，以免请求不能再次提交, encodeURI(encodeURI(hiddenValue)) 与后面java类中2次处理对应，防止ajax传递中文乱码
    var url = '<%=basePath%>loadOrderByCustomerid.action?customerid='+customerid+'&time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",loadOrderByCustomeridCallBack );
}
       
//回调函数
function loadOrderByCustomeridCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var mubiao = document.getElementById("memo");
			var results = http_request.responseXML.getElementsByTagName("product");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    mubiao.appendChild(option);  
			    //alert(option);         
			   
			    //设置体检报告对应订单编号字段memo值为 ajax取得的值
			    //document.form1.memo.value =  results[i].getAttribute("id")
            }
            //alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
    }
}    

//请求函数
function loadProductByCompanyname(hiddenValue){
    //URL未尾要加个随机数，以免请求不能再次提交, encodeURI(encodeURI(hiddenValue)) 与后面java类中2次处理对应，防止ajax传递中文乱码
    var url = '<%=basePath%>T_productsActionFindAll.action?companyname='+encodeURI(encodeURI(hiddenValue))+'&time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",loadProductByCompanynameCallBack );
}
       
//回调函数
function loadProductByCompanynameCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var productname = document.getElementById("productid");
			var results = http_request.responseXML.getElementsByTagName("product");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    productname.appendChild(option);  
			    //alert(option);         
            }
            //alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
    }
}

//清除体检公司选择内容
function clearOrderno(){
   var obj = document.getElementById("memo");
   while(obj.childNodes.length > 0) {
        obj.removeChild(obj.childNodes[0]);
    }
   document.getElementById("booktype").value="";
   document.getElementById("booktypename").value="";
   document.getElementById("company").value="";
   document.getElementById("cost").value="";
}

//打开新的子窗体
function selectMember(){
	//首先清理”企业最近合同号“为空。
	clearOrderno();

	var returnValue ="";
	var staffname = document.getElementById("staffname").value;
	if(null==staffname||""==staffname){
	   alert("请先输入体检人姓名，然后再点击 '选择' 按钮！");
	   return false;
	}

	var winSettings = "center:yes;resizable:yes;dialogHeight:400px;menubar:yes; scrollbars:yes; location:no; status:no";
	//alert("111111111111");
	//showModalDialog模式考虑改为div模式。就可以解决chorm刘篮球不支持showModalDialog的问题了。
	//IE
	if(window.ActiveXObject){   
		//返回参数
		returnValue = window.showModalDialog("<%= basePath %>T_bookerSelect.action?yyrmc="+encodeURI(encodeURI(staffname))+"&time="+Math.random(),staffname,winSettings);		
		//调用直接设置值方法
		setReturnValueToObject(returnValue);
	}
	 //非IE
	else{ 
		returnValue = window.open("<%= basePath %>T_bookerSelect.action?yyrmc="+encodeURI(encodeURI(staffname))+"&time="+Math.random(),staffname,winSettings);
	    //alert("非IEreturnValue="+returnValue);
	    //此处不调用直接设置值方法。因为chorm不能用showModalDialog， 只能在子页面中直接调用setReturnValueToObject(returnValue)方法。
	}
	
}

//根据返回值对对象设置值
function  setReturnValueToObject(returnValue){
	    //alert("-------------");
	    if(returnValue==null){
		   alert("您输入的姓名不正确，因为在预约数据中没有查到该 体检人或者没有点击‘确定’按钮!");
		}else{
		   var returnValues = new Array( );
		   //retvalue= 0${membername};$1{ customername};$2{ companyname};$3{ memberid};$4{ customerid};$5{ companyid};$6{ booktype};$7{ costall};$8{ productname};$9{ content};$10{ priceall };$11{ bookid } 
		   returnValues = returnValue.split(";");
		   //document.getElementById("staffname").value = returnValues[0];
		   //数组是从0开始的
		   
		   document.getElementById('staffname').value=returnValues[0];
		   
		   if(returnValues[6]==1||returnValues[6]=='1'){
		   		document.getElementById("booktypename").value = "成员预约";
		   		document.getElementById("booktype").value = "1";
		   }else if(returnValues[6]==2||returnValues[6]=='2'){
		   		document.getElementById("booktypename").value = "卡预约";
		   		document.getElementById("booktype").value = "2";
		   }else if(returnValues[6]==3||returnValues[6]=='3'){
		   		document.getElementById("booktypename").value = "团购预约";
		   		document.getElementById("booktype").value = "3";
		   }
		   //document.getElementById("customername").value = returnValues[1];
		   document.getElementById("customerid").value = returnValues[4];
		   document.getElementById("customername").value = returnValues[1];
		   	   
		   document.getElementById("company").value = returnValues[2];
		   document.getElementById("companyid").value = returnValues[5];
		   document.getElementById("productname").value = returnValues[8];
		   document.getElementById("cost").value = returnValues[7];  
		   //memo2存放登录的账号或者卡号，后面登录后，根据memo2中值查询其对应的 体检报告，不能根据中文查，因为中文跟登录人对应不上。
		   document.getElementById('memo2').value=returnValues[9];
	       document.getElementById("saleprice").value = returnValues[10]; 
	       document.getElementById("bookid").value = returnValues[11]; 
//alert("---bookid="+returnValues[11]);
	       //如果是卡预约，customerid = 0；如果是卡预约，不需要查订单号，如果是成员预约，需要查询订单号
	       var customeridValue =  document.getElementById('customerid').value;
	       //alert(customeridValue);
		   if(customeridValue!=0){
		      loadOrderByCustomerid(document.getElementById('customerid').value);
		   }
		}
}

//提交
function check(){	
		var staffname = document.getElementById('staffname').value;		
		if(staffname==null || staffname ==''){
		    alert("体检人姓名不能为空！");
			return false;
		}

		//------------------------------------------需要根据卡预约 或者企业成员预约，判断下面逻辑是否要判断-----------------------------------------------------------
	    //var customername = document.getElementById('customername').value;		
		//if(customername==null || customername ==''){
		//    alert("企业名称不能为空！");
		//	return false;
		//}
		
	
		var booktype = document.getElementById('booktype').value;		
		if(booktype==null || booktype ==''){
		    alert("预约类型不能为空！");
			return false;
		}						
	    //alert("-------提交-------"+customername);
		var company = document.getElementById('company').value;		
		if(company==null || company ==''){
		    alert("体检机构不能为空！");
			return false;
		}
		
		var bookid = document.getElementById('bookid').value;		
		if(bookid==null || bookid ==''){
		    alert("预约编号不能为空！");
			return false;
		}
		
		//alert("-------提交-------"+company);	
		var cost = document.getElementById('cost').value;		
		if(cost==null || cost ==''){
		    alert("支付体检机构金额不能为空！");
			return false;
		}
		if(isNaN(cost) ){
		    alert("支付体检机构金额必须为数字！");
			return false;
		}	

		//var myFile = document.getElementById('myFile').value;		
		//if(myFile==null || myFile ==''){
		//    alert("体检报告文件不能为空！");
		//	return false;
		//}
					
	    var user = document.getElementById('user').value;		
		if(user==null || user ==''){
		    alert("录入人不能为空！");
			return false;
		}	

		form1.action = "<%= basePath %>T_reportActionSaveUpload.action?time="+Math.random();
		form1.submit();
		
}

</script>

<body onload="" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<s:form  name="form1" theme="simple"  enctype="multipart/form-data"  >
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·业务管理&gt;&gt; 体检结果维护</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >体检结果信息增加页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							 <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检人姓名:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_report.staffname" maxlength='300'  id="staffname"/>					     
                                    <input type="button" class="btn" value="    查询    " name="CX" onclick="selectMember()"> 
                                    </select><font color="#FF0000">*请录入正确的预约人‘姓名’,否则无法保存体检报告</font>								    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr> 
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">预约类型:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                              <s:textfield  name="booktypename"  id="booktypename"  readonly="true" />		<font color="#FF0000">*</font>		
					            	<s:hidden  name="t_report.booktype"  id="booktype"  />		
					            	<s:hidden  name="t_report.bookid"  id="bookid"  />					    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2" readonly="true" >&nbsp;</td>                                                           
                            </tr>

                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检机构:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_report.company"  id="company"  readonly="true" />&nbsp;<font color="#FF0000">*</font>	
					            	<s:hidden  name="t_report.companyid"  id="companyid"/>
					            	<s:hidden  name="t_report.cost"     id="cost"   />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                             <!--                             
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">应支付体检机构金额(成本):</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_report.cost" maxlength='8'  id="cost"/>	<font color="#FF0000">*</font>							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                             -->
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">套餐产品名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <s:textfield  name="t_report.productname"   id="productname"  readonly="true" />
							        <s:hidden  name="t_report.productid"  id="productid" />
							        <s:hidden  name="t_report.customerid"  id="customerid"/>	
							        <s:hidden  name="t_report.customername"  id="customername"/>
							        <s:hidden  name="t_report.memo2"  id="memo2"/>	
							        <s:hidden  name="t_report.saleprice"  id="saleprice"/>	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<!--
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">企业名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_report.customername"  id="customername"  readonly="true" />	
					            						    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr> 
                             -->   
                               
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">企业最近合同编号:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<select  name="t_report.memo"  id="memo" >
					            		<option value="">--------------------</option>
					            	</select>
					            						    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>               				         
                           
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">选择体检报告文件:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:file name="myFile" id="myFile" accept="image/bmp,image/png,image/gif,image/jpeg" />
                                         <font color="red">*</font>(bmp,png,gif,jpeg,pdf,xls,xlsx格式，不能超过5M)					    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>					

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">录入人:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							    ${userName}
							    <s:hidden  name="t_report.user" id="user" value="${userName}" />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<!-- 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">卡号:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_report.cardid" maxlength='45'  label="cardid"/>							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                             -->
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">  
                                &nbsp;&nbsp;<font color="red"><s:fielderror /></font><br>                              	
	                      		<input type="button" class="btn" value="    保存体检结果    " name="bctjjg" onclick="check()">
								<input type="reset"  class="btn" value="    清除    " name="qc">
								<input type="button" class="btn" value="    返回    " name="fh" onClick="javascript:history.back(-1)">
						      </td>
						   </tr>
                            <tr>
                              <td width="100%" colspan="3" height="24" align="center" valign="middle" bgcolor="#F2F2F2">
                                 &nbsp;&nbsp;
                                 <font color="red">
                                 <%=(request.getAttribute("messerro")==null)?"":(request.getAttribute("messerro")) %>
                                 ${message}
                                 <s:fielderror />
                                 <s:actionmessage/>
                                 </font>&nbsp;&nbsp;
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
	