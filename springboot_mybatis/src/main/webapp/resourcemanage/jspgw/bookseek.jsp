<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%//@include file="../sessionCustomerValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.jxc.domain.T_card" %>
<%@ page import="com.jxc.domain.T_member" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<link href="<%=basePath %>css/public.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/page.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath %>js/jquery-1.6.min.js" type="text/javascript"></script>
<script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>  
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script> 
       <script language="JavaScript"  src="<%= basePath %>/js/calendar.js"></script>    
<title>健康管理软件,健康管理系统,健康管理平台,健康管理-上海金程健康管理有限公司</title>

<meta name="Keywords" content="上海金程健康管理,健康管理软件,健康管理系统,健康管理服务平台,上海健康管理系统,上海健康管理软件,上海健康管理系统,上海健康管理软件,健康管理,一站式健康管理平台,健康档案服务,建议,意见反馈"/>
<meta name="Description" content="金程是国内最早运用现代信息技术与医疗技术的健康管理机构，是国内现代健康科技领先的健康管理服务平台商。多年来一直专注于健康管理行业，通过创新健康管理技术与方式、整合行业资源、丰富健康管理产品与服务来满足广大群众的健康管理的需求，满足医疗机构、保险等金融机构及其他企业团体为客户提供更多增值服务的需求，助力国民实现健康自由。"/>
    <style type="text/css">
        #nav ul li a#page3 /*  此处pagex 与菜单中定义的要对应*/
        {
            -webkit-box-shadow: 3px 3px 5px #333;
            box-shadow: 3px -3px 5px #333;
            height: 35px;
            padding-top: 12px;
            background-color: #008000;  /*  原为00a0e9*/
            margin-top: 3px;
        }
        td
        {
            padding: 5px 0;
            line-height: 30px;
        }
    </style>
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
		    alert("电话不能为空！");
			return false;
		}
		if(memo.length!=11){
		    alert("电话号码必须为11位数字！");
			return false;
		}	
		if(isNaN(memo)){
		    alert("电话号码必须为11位数字！");
			return false;
		}			

	    var answertime = document.getElementById('answertime').value;	
        if(answertime==null || answertime ==''){
		    alert("体检日期不能为空！");
			return false;
		}	
		
		var rds = document.getElementsByName("companyid");
        var ckd = "0";
        for(var i=0;i<rds.length;i++){
	         if(rds[i].checked){
	            ckd="1";
	         }
	     }
	     if(ckd=="0"){
	     	alert("体检机构不能为空！");
	     	return false;
	     }

		//var memberid = document.getElementById('memberid').value;		
		//if(memberid==null || memberid ==''){
		//    alert("您的memberid账号不能为空！");
		//	return false;
		//}     
		
	    var customerid = document.getElementById('customerid').value;		
		if(customerid==null || customerid ==''){
		    alert("您对应的企业账号不能为空！");
			return false;
		}        
		form1.action = "<%= basePath %>T_bookActionSave.action";
		form1.submit();
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
		    alert("电话不能为空！");
			return false;
		}
		if(memo.length!=11){
		    alert("电话号码必须为11位数字！");
			return false;
		}	
		if(isNaN(memo)){
		    alert("电话号码必须为11位数字！");
			return false;
		}			
		
	    var answertime = document.getElementById('answertime').value;	
	    if(answertime==null || answertime ==''){
		    alert("体检日期不能为空！");
			return false;
		}	

	    var branchid = document.getElementById('branchid').value;		
        if(branchid==null || branchid ==''){
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
		    
		form1.action = "<%= basePath %>T_bookActionSave.action";
		form1.submit();
   
}
       
//请求函数
function myRequest(){
    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=basePath%>T_companyActionFindAll.action?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content ="branchid="+document.getElementById("branchid").value; // "userName=" + name;
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
function loadTjmd(){
    //首先把原来的数据清除掉
    clearTjmd();

    setCompanyHiddenValue();

    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=basePath%>T_companyActionFindTjmdAll.action?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content ="pid="+document.getElementById("companypid").value; // "userName=" + name;
    //调用异常请求提交的函数
    //alert(url+content);
    sendRequest("POST",url,content,"TEXT",loadTjmdCallBack );
}
        
//回调函数
function loadTjmdCallBack(){

    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var companyid = document.getElementById("companyid");
			var results = http_request.responseXML.getElementsByTagName("company");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			
		    option = document.createElement("option");
		    option.setAttribute("value", "");
		    option.appendChild(document.createTextNode("--------------------"));
		    companyid.appendChild(option);  
		    
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    //option.setAttribute("value", results[i].firstChild.nodeValue);
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
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
function clearTjmd(){
   var obj = document.getElementById("companyid");
   while(obj.childNodes.length > 0) {
        obj.removeChild(obj.childNodes[0]);
    }
}

//清除体检公司选择内容
function clearCompanyid(){
   var obj = document.getElementById("companypid");
   while(obj.childNodes.length > 0) {
        obj.removeChild(obj.childNodes[0]);
    }
}

function setCompanyHiddenValue(){
	//获取select　option  对象
	var ss = document.form1.companypid;
	var hiddenValue = ss.options[ss.selectedIndex].text;
	//alert("name="+hiddenValue);
	//获取option的text
    document.form1.companypname.value = hiddenValue;
    
}

function setTjmdHiddenValue(){
	//获取select　option  对象
	var ss = document.form1.companyid;
	var hiddenValue = ss.options[ss.selectedIndex].text;
	//alert("name="+hiddenValue);
	//获取option的text
    document.form1.companyname.value = hiddenValue;
    
}        
    </script>
    <!--[if IE 6]>
    <script src="/js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
       EvPNG.fix('div, ul, img, li, input'); 
    </script>
    <![endif]-->
<title>

</title></head>
<!--
 <body onload="loadCompay()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
 -->
<body  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

    <!-- 登录、退出、登录后用户名显示 -->
    <div id="topNav" class="h-30 bg-f0f0f0">
         <%@include file="banner.jsp" %>   
    </div>    
    <!-- logo -->
    <div id="header" class="w-1200">
        <img src="<%=basePath %>images/logo.png" class="float-l" />
    </div>
    
    <!-- 导航菜单 -->
    <div id="nav" class="relative w-1200">
 		<%@include file="header.jsp" %>  
    </div>
          
   <div id="dcontent" class="w-1200 m-b20 align-l" style="">
 
   <form name="form1" method="post">
          <%
          if(request.getSession().getAttribute("flag")==null||request.getSession().getAttribute("flag").equals("")){
        	  //未登录
         %>
         <p class=" font-16 font-color-444 font-lh30"><br>请先登录，然后再使用该功能！<br></p> 
          <%
          }else if(request.getSession().getAttribute("flag")!=null&&request.getSession().getAttribute("flag").toString().equals("card")){
        	  //卡号登陆
        	  T_card card = ((T_card)request.getSession().getAttribute("customer"));
         %>
        <p class=" font-16 font-color-444 font-lh30">我要预约：</p>
        <table cellpadding="0" cellspacing="0" border="0" style="width: 70%;">      
           <tr>
                <td align="right">
                    您的姓名 
                </td>
                <td align="left">
                    <input class="border-1-ccc p-9" type="text" name="t_book.membername" id="membername" value=""  maxlength="10" />
                    <font color="red">*</font>
                    <s:hidden  name="t_book.customerid"  id="customerid" value="0" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    选择性别
                </td>
                <td align="left">
                   <select name="t_book.paystatus" id="paystatus"  >					            					            	
					            		<option value="">----------</option>
					            		<option value="1">男</option>
					            		<option value="2">女(未婚)</option>
					            		<option value="3">女(已婚)</option>
							        </select>
							        <font color="red">*</font>
                    
                </td>
            </tr> 
   
            <tr>
                <td align="right">
                    电话
                </td>
                <td align="left">
                    <input class="border-1-ccc p-9" type="text" name="t_book.memo" id="memo"   value=""  maxlength="11"/><font color="red">*</font>
                </td>
            </tr>           
            <tr>
                <td align="right">
                     选择体检日期
                </td>
                <td align="left">
                       <input  class="border-1-ccc p-9" type="text"  size="20" name="t_book.answertime"   id="answertime"  value="" onclick='javascript:SelectDate(this)' readonly='true' />
                      <font color="#FF0000">*</font>
                        <s:hidden  name="t_book.status"  id="status" value="1" />	
                        <s:hidden  name="t_book.booktype"  id="booktype" value="2" />
                </td>
            </tr>  
            <tr>
                <td align="right">
                     选择备用体检日期
                </td>
                <td align="left">
                       <input  class="border-1-ccc p-9" type="text"  size="20" name="t_book.starttime"   id="starttime"  value="" onclick='javascript:SelectDate(this)' readonly='true' />                                          
                </td>
            </tr>                             
           <tr>
                <td align="right">
                    选择体检城市
                </td>
                <td align="left">
                   <select name="t_book.branchid" id="branchid" onchange="myRequest()" >					            					            	
					            		<option value="">----------</option>
					            		<option value="1111">上海</option>
					            		<option value="2222">南京</option>
					            		<option value="3333">武汉</option>
					            		<option value="4444">广州</option>
							        </select>
							        <font color="red">*</font>
                    
                </td>
            </tr> 
            <tr>
                <td align="right">
                     选择体检机构
                </td>
                <td align="left">
                       <select name="t_book.companypid" id="companypid" onChange="loadTjmd()">					            					            	
					        <option value="">---------------------</option>
					   </select>
					   <font color="red">*</font>
					   <s:hidden  id="companypname" name="t_book.companypname" value=""/> 
					   
                </td>
            </tr>
            <tr>
                <td align="right">
                     选择体检门店
                </td>
                <td align="left">
                       <select name="t_book.companyid" id="companyid" onChange="setTjmdHiddenValue()">					            					            	
					      <option value="">---------------------</option>
					   </select>
					   <font color="red">*</font>
					   <s:hidden  id="companyname" name="t_book.companyname" value=""/>
					   
					   <s:hidden  id="productname"  name="t_book.productname"   value="<%=card.getAmount() %>" />
					    
					    <!--
					    <s:hidden  id="costall" name="t_book.costall" value="<%=card.getCost() %>"/>
					    <s:hidden  id="priceall"  name="t_book.priceall"   value="<%=card.getAmount() %>" />
					    -->
                </td>
            </tr>            
           <!-- 
           <tr>
                <td align="right">
                     体检套餐金额
                </td>
                <td align="left">
                      <input type="text" name="t_book.productname" id="productname"  class="border-1-ccc p-9"  value="<%=card.getAmount() %>"  readonly="true"/> <font color="#FF0000">*</font>	
							        <s:hidden  id="priceall"  name="t_book.priceall"   value="<%=card.getAmount() %>" />
							        <s:hidden  id="costall" name="t_book.costall" value="<%=card.getCost() %>"/>
							      
                </td>
           </tr> 
           --> 
          <tr>
                <td>
                </td>
                <td>
                    <input type="button" value="提交预约申请" onclick="cardYyTjcheck()" class="border-1-ccc p-9 bg-tjfk font-16 font-color-fff" style="cursor: pointer;" />
                </td>
            </tr>
        </table>            
         <%	  
          }else if(request.getSession().getAttribute("flag")!=null&&request.getSession().getAttribute("flag").toString().equals("member")){
        	  //member 成员登陆
              T_member member = ((T_member)request.getSession().getAttribute("customer"));
          %>
        <p class=" font-16 font-color-444 font-lh30">请填写预约信息：</p>
        <table cellpadding="0" cellspacing="0" border="0" style="width: 70%;">          
            <tr>
                <td align="right">
                    您的姓名 
                </td>
                <td align="left">
                    <input  type="text" name="t_book.membername" id="membername" value="" class="border-1-ccc p-9"  maxlength="10" /><font color="red">*</font>
                   <s:hidden  name="t_book.customerid"  id="customerid" value="${sessionScope.customer.customerid }" />
                   
                </td>
            </tr>
            <tr>
                <td align="right">
                    选择性别
                </td>
                <td align="left">
                   <select name="t_book.paystatus" id="paystatus"  >					            					            	
					            		<option value="">----------</option>
					            		<option value="1">男</option>
					            		<option value="2">女(未婚)</option>
					            		<option value="3">女(已婚)</option>
							        </select>
							        <font color="red">*</font>
                    
                </td>
            </tr> 
  
            <tr>
                <td align="right">
                    电话
                </td>
                <td align="left">
                    <input class="border-1-ccc p-9" type="text" name="t_book.memo" id="memo"   value=""  length="11" maxlength="11"/><font color="red">*</font>
                </td>
            </tr>           
          
            <tr>
                <td align="right">
                     选择体检日期
                </td>
                <td align="left">
                       <input  class="border-1-ccc p-9" type="text"  size="20" name="t_book.answertime"   id="answertime"  value="" onclick='javascript:SelectDate(this)' readonly='true' />
                      <font color="#FF0000">*</font>
                        <s:hidden  name="t_book.status"  id="status" value="1" />	
                        <s:hidden  name="t_book.booktype"  id="booktype" value="1" />
                        
                </td>
            </tr>            
            <tr>
                <td align="right">
                     选择备用体检日期
                </td>
                <td align="left">
                       <input  class="border-1-ccc p-9" type="text"  size="20" name="t_book.starttime"   id="starttime"  value="" onclick='javascript:SelectDate(this)' readonly='true' />                                          
                </td>
            </tr>      
             <tr bgcolor="white">
                <td>
                    选择
                </td>
                <td>
                   套餐名称                 
                <td>
                   体检机构                 
                </td>
                </td>
                <td>
                   门店名称                 
                </td>
            </tr> 
           
             <s:iterator value="order_subList" status="status">
             <tr>
                <td>                 
                  <input type="radio" name="companyid"  id="companyid"  value="${ companyid };${ companyname };${ companypid };${ companypname };${ branchid };${ cost };${ saleprice };${ memo}" />
                <!--  
                ${ companyid };${ companyname };${ companypid };${ companypname };${ branchid };${ cost };${ saleprice };${ memo}
                --> 
                </td>
                <td>
                   ${ memo }                
                </td> 
                <td>
                   ${ companypname }                
                </td>
                <td>
                   ${ companyname }                
                </td>
            </tr> 
            </s:iterator>
            <tr>
                <td>
                </td>
                <td>
                    <input type="button" value="提交预约申请" onclick="memberTjCheck()" class="border-1-ccc p-9 bg-tjfk font-16 font-color-fff" style="cursor: pointer;" />
                </td>
            </tr>
        </table>  
             <% }%> 
    
   <p class=" font-16 font-color-444 font-lh30">我的历史预约信息：</p>
        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">      
           <tr>
                <td align="center">
                    您的姓名 
                </td>
                <td align="center">
                   预约时间 
                </td>
                <td align="center">
                   电话
                </td>
                <td align="center">
                    体检机构 
                </td>                
                <td align="center">
                    体检门店 
                </td>
                <!-- <td align="center">
                    预约套餐类型
                </td>
                
                <td align="center">
                    状态
                </td>
                 -->
                <td align="center">
                    预约类型
                </td>                                                                                       
            </tr>
            
        <s:iterator value="paginationSupport.items" status="stuts">
            <tr>
                <td align="center">
                    <s:property value="membername" />
                </td>
                <td align="center">
                   <s:property value="answertime" />
                 
                </td>
                <td align="center">
                   ${memo }
                </td>
                <td align="center">
                    ${companypname }
                </td>                
                <td align="center">
                    ${companyname }
                </td>
                 <!-- <td align="center">
                    ${productname }
                </td>         
               
                <td align="center">
                    <s:if test="${status=='1'}">预约成功</s:if>
					<s:elseif test="${status=='0'}">预约失效</s:elseif> 	
				</td>  
                 -->
                <td align="center">
                    <s:if test="${booktype=='1'}">成员预约</s:if>
					<s:elseif test="${booktype=='2'}">卡预约</s:elseif> 	
				</td>  				                                                        
            </tr>     
            </s:iterator>
    </table>          
  
         
    </div>
   </form>

    <div id="nav" class="relative w-1200">
 		<%@include file="footer.jsp" %>
    </div>
 
 </body>
</html>
