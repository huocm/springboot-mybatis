<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="com.common.db.PaginationSupport" %>
<%@ page import="com.common.rm.dao.*" %>
<%@ page import="com.common.rm.domain.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>套餐产品信息增加页</title>
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

function check(){
	//获取select　option  对象
	var productname = document.form1.productname.value;
	if(productname.length==0){
	   alert("请输入套餐产品名称");
	   return false;
	}
	
    var companyid = document.form1.companyid.value;
	if(companyid.length==0){
	   alert("请选择体检机构");
	   return false;
	}
    
    var company = document.form1.company.value;
	if(company.length==0){
	   alert("请选择体检机构名称");
	   return false;
	}
    
    document.form1.action = "<%=basePath%>/T_products_subActionFindByCause.action";
    document.form1.submit();

}


</script>
<body  onload="myRequest()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

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
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·系统管理&gt;&gt; 套餐产品信息维护</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >套餐产品信息增加页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 

					       <tr>
							  <td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">套餐产品名称:</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield id="productname" name="productname" maxlength='45'  label="name"/>
							    <font color="#FF0000">*</font>
							  </td>
                                                                  
                              <td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检机构:</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<select id="companyid" name="companyid" onChange="setCompanyHiddenValue()">					            					            	
					            	<option value="">----</option>
							        </select>
					            	<font color="red">*</font>
					            	<s:hidden  id="company" name="company" value=""/>      	 
							  </td>
                            </tr>
	   					    <tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="5">                                	
	                      		<input type="button" class="btn" value="    下一步    " name="B1" onclick="check()">
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
	