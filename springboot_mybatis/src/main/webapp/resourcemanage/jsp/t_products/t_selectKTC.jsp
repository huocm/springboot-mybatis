<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_member信息列表页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
     <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
</head>
<script type="text/javascript">
function check(){
    var name = document.getElementById("name").value;
    if(name.length==0){
       alert("请输入套餐名称！");
       return false;
    }
       
    var pid = document.getElementById("pid").value;
    if(pid.length==0){
       alert("请选择体检机构！");
       return false;
    }
   // var companyid = document.getElementById("companyid").value;
    //if(companyid.length==0){
    //   alert("请选择体检门店！");
    //   return false;
   // }

    var tctype = document.getElementById("tctype").value;
    if(tctype.length==0){
       alert("请选择性别！");
       return false;
    }
    
    form1.action ="<%=basePath%>T_cardTCActionSave.action";        
    form1.submit();
   
}

//请求函数
function loadCompany(){
	//alert("----------------");
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
            var pid = document.getElementById("pid");
			var results = http_request.responseXML.getElementsByTagName("company");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    pid.appendChild(option);  
			    //alert(option);         
            }
            //alert("完毕!");
            //只要体检门店加载完毕。就要加载对应门店的体检项。
            //loadProductsSub();
            
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
        
    }
}

function clear(){
   var obj = document.getElementById("companyid");
   while(obj.childNodes.length > 0) {
        obj.removeChild(obj.childNodes[0]);
    }
}

//请求函数,体检门店
function loadTjmd(){
    //首先把原来的数据清除掉
    clear();

    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=basePath%>T_companyActionFindTjmdAll.action?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content ="pid="+document.getElementById("pid").value; // "userName=" + name;
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
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    companyid.appendChild(option);  
			    //alert(option);         
            }
            //alert("完毕!");
            //只要体检门店加载完毕。就要加载对应门店的体检项。
            loadProductsSub();
            
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
    }
}

//请求函数,根据门店id查询门店对应的体检项目列表
function loadProductsSub(){
    //URL未尾要加个随机数，以免请求不能再次提交
    var pid  = document.getElementById("pid").value;
    var url = '<%=basePath%>T_productsSubAllByMDAjax.action?pid='+pid+'&time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",loadProductsSubCallBack );
}
        
//回调函数
function loadProductsSubCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var mubiao = document.getElementById("products_sub");
			//var results = http_request.responseXML.getElementsByTagName("result");
            if(mubiao != undefined){
                 //返回的是文本格式信息
                 mubiao.innerHTML = http_request.responseText;  
                 //alert(http_request.responseText)                 
            }
			
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
        //同时加载会有问题
        
    }
}
</script>
<body onload="loadCompany()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·业务管理&gt;&gt; 卡套餐成本管理(套餐成本管理)</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >添加套餐</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
                                                       
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">套餐名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="name" maxlength='45'  id="name"/>
							    <font color="red">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>												
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检机构:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<select id="pid" name="pid"   onChange="loadProductsSub()">					            					            	
					            	<option value="0">--------------------</option>
							        </select>
					            	<font color="red">*</font>
					            	<s:hidden  id="companypname" name="companypname" value=""/>      	 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
						<!-- 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检门店:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<select id="companyid" name="companyid" onChange="loadProductsSub()">					            					            	
					            	<option value="0">--------------------</option>
							        </select>
					            	<font color="red">*</font>
					            
					            	<s:hidden  id="company" name="company" value=""/>  
					            	   	 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr> 
                         -->                               
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">性别:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<select id="tctype" name="tctype" >					            					            	
					            	<option value="">--------</option>
					            	<option value="1">男</option>
					            	<option value="2">女未婚</option>
					            	<option value="3">女已婚</option>
							        </select>
							    <font color="red">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							 <tr>
		                        <td valign="top" bgcolor="cbcbcb"  colspan="8">
		                          <table id="table0" width="100%" border="0" cellspacing="0" cellpadding="0">
		                           <tr>
		                            <td colspan="8">
		                             <div id="products_sub"></div>			    
							        </td>
							        </tr>					      							   
							    </table></td>
		                    </tr>
	                         	                           
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="button" class="btn" value="    保存套餐    " name="B1" onclick="check()">
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
	