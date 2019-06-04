<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>


<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />
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
<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_buy信息增加页</title>
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
function check(){
    var xl = document.getElementById("productid").value;
    if(xl.length==0){
       alert("请选择细类商品！");
       return false;
    }
    form1.submit();
}

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

</script>

<body  onload="myRequest()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form name="form1" action="T_buyActionSave" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·仓库管理&gt;&gt; 买入商品</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >买入商品信息增加页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							
							<tr>
							  <td colspan="3" height="24" align="center" valign="middle" bgcolor="#F2F2F2">
							   &nbsp;&nbsp;<font color="red"><s:fielderror /></font>
							  </td>
							</tr>
												
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">主类商品名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<!--<s:textfield  name="t_buy.pid"  maxLength='5' />-->
					            	<select id="pid" name="t_buy.pid" onChange="myRequestSub()">					            					            	
					            	<%
							          if(request.getParameter("pid")!=null&&!request.getParameter("pid").equals("")){							        	  
							        	  %>
							        	  <option value="<%=request.getParameter("pid")%>" selected><%= codeString(request.getParameter("parentname")) %></option>
							        	  <%
							          }
							         %>
							        </select>
					            	<font color="red">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            												
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">细类商品名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<!--<s:textfield  name="t_buy.productid"  maxLength='11' label="productid"/>-->
					            	<select id="productid" name="t_buy.productid">
					            	<%
							          if(request.getParameter("productid")!=null&&!request.getParameter("productid").equals("")){							        	  
							        	  %>
							        	  <option value="<%=request.getParameter("productid")%>" selected><%= codeString(request.getParameter("name")) %></option>
							        	  <%
							          }
							         %>
							        </select>
					            	<font color="red">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">生产厂家:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_buy.company" maxlength='45'  label="company"/><font color="red">*</font>
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">单价:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_buy.price"   label="price"/><font color="red">*</font>
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">数量:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_buy.num"  maxLength='11' label="num"/><font color="red">*</font>
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">金额:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_buy.amount"   label="amount"/>
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">生产日期:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    <s:datetimepicker name="t_buy.createdate" value="today" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/> 
							    <font color="#FF0000">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">操作人:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_buy.user" maxlength='45'  label="user"/>
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">备注:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_buy.memo" maxlength='45'  label="memo"/>
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="buton" class="btn" value="    买入商品    " name="B1" onclick="check()">
								<input type="reset"  class="btn" value="    清除    " name="B2">
								<input type="button" class="btn" value="     返回   " name="B1" onClick="javascript:history.back(-1)">
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
	