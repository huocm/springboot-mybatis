<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>


<%@ taglib prefix="s" uri="/struts-tags" %>
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
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>订单信息增加页</title>
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
<script>
//提示操作结果
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}
</script>
<script type="text/javascript">

//提交
function check(){
	var fileName =document.getElementById("fileName").value;
    if(""==fileName||null==fileName){
    	//alert(fileName);
    	alert("请选择要上传导入的企业成员信息文件(.xls格式)");
    	
        return false;
    }
    form1.action = "<%=basePath %>T_uploadMembersAction.action";
    form1.submit();
}
		
</script>	

<body onload="" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

  <s:form name="form1" action=""   theme="simple"  enctype="multipart/form-data"  >
  
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·业务管理&gt;&gt; 订单管理&gt;&gt; 订单套餐成员导入</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >企业成员信息导入页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">企业成员信息文件:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	  
							               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							              <s:file name="myFile" id="fileName"  />
							            
							              <br>
							              <%
							              String messerro = (String)request.getAttribute("messerro");
							              if(null!=messerro&&!"".equals(messerro)){
							            	  out.println("<font color='red'>"+messerro+"</font>");
							              }
							             
							              %>							        	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">订单编号:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            <input type="text"  name="id"   value="<%=request.getParameter("id") %>"   id="id" > 	
							  	<input type="hidden"  name="customerid"   value="<%=request.getParameter("customerid") %>"   id="customerid" > 							        							  
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">套餐名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            <input type="text"  name="tcmc"   value="<%=request.getParameter("tcmc") %>"   id="tcmc" > 	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            
                            						
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="button" class="btn" value="    导入    " name="B1" onclick="check()">
								<input type="reset"  class="btn" value="    清除    " name="B2">
								<input type="button" class="btn" value="    返回    " name="B3" onClick="javascript:window.location.href='<%=basePath %>T_orderActionEdit.action?id=<%=request.getParameter("id") %>'">
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
	