<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>客户信息增加页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
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
	loadUsers();
	//loadBranch(); 放到loadUsers()执行完后后，再调用，否则无法显示数据。
}	
	
//请求函数
function loadUsers(){
    //URL未尾要加个随机数，以免请求不能再次提交
    //var url = '<%=basePath%>T_user_detailActionFindAll.action?time='+Math.random();
   var url = '<%=basePath%>rm/t_user_detailListAjaxRes.jsp?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",loadUsersCallBack );
}
        
//回调函数
function loadUsersCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var mubiao = document.getElementById("checker");
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
        //要在这个加载完成后，再调用下面的ajax，否则只会显示一个，另一个无输出。
        loadCustomer();
    }
}
//提交
	function check(){	

	    var customername = document.getElementById('customername').value;		
		if(customername==null || customername ==''){
		    alert("客户不能为空！");
			return false;
		}	
		var num = document.getElementById('num').value;		
		if(num==null || num ==''){
		    alert("人员数量不能为空！");
			return false;
		}
		if(isNaN(num) ){
		    alert("人员数量必须为数字！");
			return false;
		}		
	    
	    var saleprice = document.getElementById('saleprice').value;		
        if(saleprice==null || saleprice ==''){
		    alert("人员单价不能为空！");
			return false;
		}
        if(isNaN(saleprice) ){
		    alert("人员单价必须为数字！");
			return false;
		}			
		
		document.form1.orderamount.value = num*saleprice;
		//alert(num*saleprice);
		
		//var receiveamount = document.getElementById('receiveamount').value;		
        //if(isNaN(receiveamount) ){
		//    alert("已收款金额必须为数字！");
		//	return false;
		//}
			
	    var checker = document.getElementById('checker').value;		
		if(checker==null || checker ==''){
		    alert("审核人不能为空！");
			return false;
		}	
		
		form1.action = "<%= basePath %>T_orderActionSave.action";
		form1.submit();
		
	}

</script>
<body onload="load()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="T_customerActionSave" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·客户管理&gt;&gt; 新增客户</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >客户信息增加页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">
                              <tr>
                                  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">客户编号:</td>
                                  <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                      <s:textfield  name="t_customer.number" maxlength='45' readonly="true"  label="number"/><font color="#FF0000">*</font>
                                      <s:hidden  value="t_customer.id"	/>
                                  </td>
                                  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
                              </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">客户名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_customer.name" maxlength='45' readonly="true"  label="name"/><font color="#FF0000">*</font>
					            	<s:hidden  value="t_customer.id"	/>								    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">电话:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property  value="t_customer.tel" />
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">地址:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property  value="t_customer.address" />							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
									
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">客户类型:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property  value="t_customer.memo" />					            	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">本次收款金额(元):</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_customer.bcreceiveamount"   id="bcreceiveamount"/>	<font color="red">*</font>						    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">本次收款对应订单:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<select  name="t_customer.orderno"  id="orderno">
					            		<option value="">------</option>
					            	</select><font color="#FF0000">*</font>	
					            							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							     <td colspan="3"  bgcolor="#F2F2F2"><font color="red"><s:fielderror /></font> </td> 
							  </tr>
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="submit" class="btn" value="    新增    " name="B1">
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
	