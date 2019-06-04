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
<title>套餐保存完毕提示信息</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>

</head>
<script type="text/javascript">

 function refreshParent() {
  window.opener.location.href = window.opener.location.href;
  window.close();  
 }              


function addMore(){
	//window.location.href="<%=basePath%>jsp/t_order/t_selectQYTC.jsp?id=";
}

function gb(){
	window.returnValue = 1; //父窗口中 模态窗口调用的返回值 
	window.close(); 
	
	window.opener.location.href = window.opener.location.href;
    if (window.opener.progressWindow){ 
        window.opener.progressWindow.close();
    	alert("保存成功");
    	window.close();
   }
}

</script>

<body onload="" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<s:form  name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·提示信息</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td  valign="top" >
                    
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="0" cellpadding="0" class="STYLE5">					 
							
	                         	                           
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		
	                      		<!--
	                      		 <input type="button" class="btn" value="    继续添加套餐    " name="B1" onClick="addMore()">
								 -->
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="button" class="btn" value="    关闭    " name="B1" onClick="gb()">
						     <input type="button" id="btn1" class="btn" value="关闭" disabled=true onclick="refreshParent()" />
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
	