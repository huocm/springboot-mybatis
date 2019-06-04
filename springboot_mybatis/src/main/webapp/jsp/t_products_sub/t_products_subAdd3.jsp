<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% request.setCharacterEncoding("GBK");%>
<%! //处理字符串的方法：
  public String codeString(String s)
    { String str=s;
       try{byte b[]=str.getBytes("iso-8859-1");
           str=new String(b);
           return str;
         }
      catch(Exception e)
         { 
		  return str;
         }
    }
%>

<!---->
<s:head theme="ajax" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>体检科目维护信息增加页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
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
function check(){
    var xl = document.getElementById("companyid").value;
    if(xl.length==0){
       alert("请选择体检机构！");
       return false;
    }
    form1.submit();
}

//请求函数
function myRequest(){
    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=basePath%>T_companyActionFindAll.action?time='+Math.random();
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

function clear2(){
   var obj = document.getElementById("parentid");
   while(obj.childNodes.length > 0) {
        obj.removeChild(obj.childNodes[0]);
    }
}

//请求函数
function loadTjmd(){
    //首先把原来的数据清除掉
    clear();
    clear2();

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
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
    }
}

function setCompanyHiddenValue(){
	//获取select　option  对象
	var ss = document.form1.companyid;
	var hiddenValue = ss.options[ss.selectedIndex].text;
	//alert("name="+hiddenValue);
	//获取option的text
    document.form1.company.value = hiddenValue;
    
}

//请求函数
function loadYj(){

    setCompanyHiddenValue();
    
    //首先把原来的数据清除掉
    clear2();

    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=basePath%>T_products_subFindYj.action?time='+Math.random()+"&levels=1&companyid="+document.getElementById("companyid").value;
    //alert(url);
    //要提交到服务器的数据
    var content =""; //"companyid="+document.getElementById("companyid").value; // "userName=" + name;
    //调用异常请求提交的函数
    //alert(url+content);
    sendRequest("POST",url,content,"TEXT",loadYjCallBack );
}
        
//回调函数
function loadYjCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var parentidyj = document.getElementById("parentidyj");
			var results = http_request.responseXML.getElementsByTagName("product");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    parentidyj.appendChild(option);  
			    //alert(option);         
            }
            //alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
    }
}


//请求函数
function loadEj(){
    
    //首先把原来的数据清除掉
   // clear2();

    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=basePath%>T_products_subFindEj.action?time='+Math.random()+"&levels=2&companyid="+document.getElementById("companyid").value;
    //alert(url);
    //要提交到服务器的数据
    var content =""; //"companyid="+document.getElementById("companyid").value; // "userName=" + name;
    //调用异常请求提交的函数
    //alert(url+content);
    sendRequest("POST",url,content,"TEXT",loadEjCallBack );
}
        
//回调函数
function loadEjCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var parentid = document.getElementById("parentid");
			var results = http_request.responseXML.getElementsByTagName("product");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    parentid.appendChild(option);  
			    //alert(option);         
            }
            //alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
    }
}

</script>
<body onload="myRequest()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="T_products_subActionSave" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·系统管理>> 体检科目维护>> 新增二级项目</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >二级体检项目增加页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
												
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检机构:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<select id="pid" name="t_products_sub.pid" onChange="loadTjmd()">					            					            	
					            	<option value="0">--------------------</option>
							        </select>
					            	<font color="red">*</font>
					            	      	 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
						
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检门店:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<select id="companyid" name="t_products_sub.companyid" onChange="loadYj()">					            					            	
					            	<option value="0">--------------------</option>
							        </select>
					            	<font color="red">*</font>
					            	<s:hidden  id="company" name="t_products_sub.company" value=""/>      	 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr> 
                            
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">选择一级项目:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<select id="parentidyj" name="parentidyj" onChange="loadEj()">					            					            	
					            	<option value="0">--------------------</option>
							        </select>
					            	<font color="red">*</font>
					            	      	 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                           <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">选择二级项目:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<select id="parentid" name="t_products_sub.parentid" >					            					            	
					            	<option value="0">--------------------</option>
							        </select>
					            	<font color="red">*</font>
					            	      	 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">科目名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_products_sub.name" maxlength='45'  label="name"/>
							    <font color="red">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>				
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检项目:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_products_sub.memo" maxlength='45'  label="memo"/>
							    <font color="red">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>							
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">临床意义:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_products_sub.memo2" maxlength='45'  label="memo2"/>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>														
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">成本价:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_products_sub.cost" maxlength='45'  label="cost"/><font color="red">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">金程价格:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_products_sub.price" maxlength='45'  label="price"/><font color="red">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>                            
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">创建时间:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    <!--<s:textfield  name="t_products_sub.createdate" maxlength='20'  label="createdate"/>
      							    -->
      							    <s:datetimepicker name="t_products_sub.createdate" value="today" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/> 
							        <s:hidden  name="t_products_sub.cost"  value="0" />
							        <s:hidden  name="t_products_sub.price"  value="0" />
							        <s:hidden  name="t_products_sub.levels"  value="3" />
							        
							    <font color="#FF0000">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            
                            <!-- 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">成本价格:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_products_sub.malecost" maxlength='45'  label="malecost"/>
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">销售价格:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_products_sub.maleprice"   label="maleprice"/>
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							 -->

							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="button" class="btn" value="    新增    " name="B1" onclick="check()">
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
	