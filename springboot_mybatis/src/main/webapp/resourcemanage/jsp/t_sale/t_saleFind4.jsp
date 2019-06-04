<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c"        uri="http://java.sun.com/jstl/core"%>
<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<s:head theme="ajax" />
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
 <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/myAjax.js'/>" ></script>
<style type="text/css">
<!--
.STYLE5 {	color: #000000;
	font-size: 12px;
}
-->
</style>
</head>
<script type="text/javascript">
//请求函数
function myRequest(){
    //var name;
    //if (document.getElementById("userName") != undefined) {
    //    name = document.getElementById("userName").value;
    //}
    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=bathPath%>T_productsActionFindAll.action?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",callBack );
}
        
//回调函数
function callBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var pid = document.getElementById("pid");
			var results = http_request.responseXML.getElementsByTagName("product");
			var option = null;
			var text = null;
			//alert(results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    pid.appendChild(option);  
			    //alert(option);         
            }
            // alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
    }
}

//请求函数
function myRequestSub(){
    var pid;
    if (document.getElementById("pid") != undefined) {
        pid = document.getElementById("pid").value;
    }
    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=bathPath%>T_products_subActionFindByPid.action?time='+Math.random();
    // alert(url);
    //要提交到服务器的数据
    var content ="pid="+pid; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",callBackSub );
    //清空上次所选   
    clear();
}
        
//回调函数
function callBackSub(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var productid = document.getElementById("productid");
			var results = http_request.responseXML.getElementsByTagName("product");
			var option = null;
			var text = null;
			//先添加默认项
			option = document.createElement("option");
			option.setAttribute("value", "");
			option.appendChild(document.createTextNode("请选择"));
			productid.appendChild(option);  
			
			//alert(results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    productid.appendChild(option);  
			    //alert(option);         
            }
            // alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
    }
}

function clear(){
   var obj = document.getElementById("productid");
   while(obj.childNodes.length > 0) {
        obj.removeChild(obj.childNodes[0]);
    }

}

function check(){
  
   //var buydate = document.getElementById("buydate").value;
   //var createdate = document.getElementById("createdate").value;   
     //var picker = dojo.widget.byId("buydate");    
     //string value
     //var buydate = picker.getValue();
     //alert(buydate);
     //var picker2 = dojo.widget.byId("createdate");    
     //string value
     //var createdate = picker2.getValue();
     //alert(createdate);
          
     //date value
     //var dateValue = picker.getDate();
     //alert(dateValue);
   
   var customerid = document.getElementById("customerid").value;
   var pid = document.getElementById("pid").value;
   var productid = document.getElementById("productid").value;
   if(customerid==""){      
      alert("请先选择客户!");
      document.getElementById("customerid").focus();
      return false;
      
   }
   if(pid==""){     
      alert("请先选择主类!");
      document.getElementById("pid").focus();
      return false;
   }
   if(productid==""){     
      alert("请先选择细类!");
      document.getElementById("productid").focus();
      return false;
   }
   
   //form1.action = "${basePath}T_buyActionList.action?id="+id+"&pid="+pid+"&buydate="+buydate+"&createdate="+createdate;
   form1.action = "${basePath}T_buyActionSaleFind1.action?productid="+productid+"&pid="+pid;
   //alert(form1.action );
   form1.submit();
   

}

//请求函数
function slectCustomer(){
    //var name;
    //if (document.getElementById("userName") != undefined) {
    //    name = document.getElementById("userName").value;
    //}
    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=bathPath%>T_customerSelect.action?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",callBackSelectCustomer );
}
        
//回调函数
function callBackSelectCustomer(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
			var customerid = document.getElementById("customerid");
			var results = http_request.responseXML.getElementsByTagName("customer");
			var option = null;
			var text = null;
			//alert(results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id")+";"+results[i].firstChild.nodeValue);
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    customerid.appendChild(option);  
			    //alert(option);         
            }

        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
    }
}

function init(){
	slectCustomer();
	window.setTimeout( "myRequest()", 2000);
}

</script>
<body onLoad="init()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·销售管理&gt;&gt; 选择销售商品</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="20" valign="top" >

                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <!-- <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >选择销售商品信息查询页</td>
                            </tr>
                        </table></td>
                      </tr> -->
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="" name="form1" theme="simple"  target="under" >                   				
							<tr>
							  <td width="43%" height="24" align="left" valign="middle" bgcolor="#F2F2F2">
							  	&nbsp;客户:<select id="customerid" name="customerid">
                                           <option value="">请选择</option>
                                         </select> 
                              </td>
							  <td width="18%" height="24" align="left" valign="middle" bgcolor="#F2F2F2"> 
							  	&nbsp;主类:<select id="pid" name="t_buy.pid" onChange="myRequestSub()">
							    <option value="">请选择</option> 
							  </select>	
							  </td>
							  <td width="29%" height="24" align="left" valign="middle" bgcolor="#F2F2F2"> 						        
							  		&nbsp;细类:
								  <select id="productid" name="t_buy.productid" onChange="check()">
								  	<option value="">请选择</option>
								  </select>
							  </td>
							  <td width="10%" height="24" align="center" valign="middle" bgcolor="#F2F2F2"> 							  
							     <input type="button" class="btn" value="    查询    " name="B1" onClick="check()">								
							  </td>                            
                            </tr>	
                              </s:form>																		   
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
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="table">
<tr>
	<td width="82%" bgcolor="#ad9875">
			<iframe src="" align="top" width="100%" scrolling="no" frameborder="0" height="500" name="under"></iframe>
	</td>
</tr>
</table>
</body>
</html>