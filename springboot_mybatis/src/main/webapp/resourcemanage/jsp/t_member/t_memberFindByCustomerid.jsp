<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%//@include file="../../sessionValidate.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<META HTTP-EQUIV="pragma" CONTENT="no-cache"> 
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"> 

<title>体检报告录入--预约信息查询页</title>
     <link rel="stylesheet" href="<%= basePath %>css/style.css"  type="text/css">
     <script language="JavaScript" src="<%= basePath %>js/global.js" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>

</head>
<script type="text/javascript">
function retVal(){

	if(document.getElementById("membername")!=null){
		//var customername = document.getElementById("membername").value;
		//if(customername==null||customername.equals("")){
		//	alert("因为没有查询到体检人预约信息，请点击‘关闭’按钮");
		//}
       
		var radiovalue = getRadioBoxValue("membername");
		//alert(radiovalue);
		if(radiovalue=="undefined"){
			alert("请至少选中一条记录！");
		}
		else if(window.ActiveXObject){ //IE  
            window.returnValue = radiovalue;
    		window.close(); 
		}
		//非ie
		else{
			 if(window.opener) {  
				   //alert("chorm浏览器！");
				   //需要在子窗口调用父窗口的函数setReturnValueToObject(  radiovalue  )。
                   window.opener.setReturnValueToObject(radiovalue);
                   //window.opener.location="javascript:setReturnValueToObject(returnValue)";
           		   window.close(); 
	          }  
		}	
	}
}

function   getRadioBoxValue(radioName)  
  {   
        //alert("getRadioBoxValue");
	    var obj = document.getElementsByName(radioName);             //这个是以标签的name来取控件  
              for(i   =   0;   i   <   obj.length;   i++)    {  
                  if(obj[i].checked)    {  
                          return   obj[i].value;  
                  }  
              }          
             return "undefined";        
  }  
  
</script>
<body  onLoad='jo()'  class="mainBody" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<form action="" name="form1">
<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="3">
                <tr>
                  <td height="229" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;客户成员信息列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                             <tr>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">选择</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">预约人</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">企业名称</strong></th>                               
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">身份证号</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">预约类型</strong></th>                             
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">套餐名称</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">预约登记人</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检机构</strong></th>                 
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<!-- 
							<tr id="aid<s:property value='memberid' />"  onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
							 -->
							<tr id="aid<s:property value='memberid' />"    style="cursor:hand" bgcolor="#FFFFFF" align="center">
					          <td height="25" align="center" valign="middle">&nbsp;
					           	<input type="radio" name="membername" id="membername" value="${membername};${ customername};${ companyname};${ memberid};${ customerid};${ companyid};${ booktype};${ costall};${ productname};${ content};${ priceall };${ id}" />			                 					                   			           		                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	${membername}				                 					                   
					          </td>					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customername" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo2" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:if test="${booktype=='1'}">企业成员预约</s:if>
					            	<s:elseif test="${booktype=='2'}">卡预约</s:elseif> 		                 					                   
					          </td>								                 					                   
					          </td>
					    				  
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="productname" />			                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="userid" />				                 					                   
					          </td>

					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companyname" />					                 					                   
					          </td>					   
					        </tr>					      
					      </s:iterator>
                     
                     <tr>
                      <td height="22" colspan="10" align="center" valign="middle" bgcolor="#FFFFFF">
			              <s:if test="paginationSupport.totalCount==0"></s:if><s:else></s:else>
			              	<input type="button" name="add" value="    确定    " class="btn"   onclick="retVal()" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			              
			                <input type="button" name="gb" value="    关闭    " class="btn" onClick="javascript:window.close()" >&nbsp;
			              
                         </td>
                      </tr>
                    </table></td>
                </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>

</form>
</body>
</html>
