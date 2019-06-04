<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%//@include file="../../sessionValidate.jsp" %>

<%@ page import="java.util.*" %>
<%@ page import="com.common.db.PaginationSupport" %>
<%@ page import="com.common.rm.dao.*" %>
<%@ page import="com.common.rm.domain.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>短信发送测试信息列表页</title>
    <link rel="stylesheet" href="<%= basePath %>/css/style.css" type="text/css">
    <script language="JavaScript" src="<%= basePath %>/js/global.js"></script>
    <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
</head>
<script type="text/javascript">
	
	function addsubmit(){		
		//if(addcheck()==false){
		//	alert('资源名称不能为空！');
		//	return false;
		//}
		//else{	
		//}
		
		form1.action =  document.getElementById("address").value ; //"http://api.sms.cn";
	    //alert(document.getElementById("address").value);
	    form1.submit();
					
	}
	
	function addcheck(){
	
		var name = document.getElementById('name').value;		
		if(name==null || name ==''){
			return false;
		}	
	}
	
	function addsubmit2(){		
		//if(addcheck()==false){
		//	alert('资源名称不能为空！');
		//	return false;
		//}
		//else{	
		//}
		
		form1.action =  "<%=basePath%>message/invokeSendMessage.jsp"; //"http://api.sms.cn";
	    //alert(form1.action);
	    form1.submit();
					
	}
	
</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<%
String funcid = "";
%>
<form action="" method="post" name="form1">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<%= basePath %>images/1_09.gif"><img src="images/1_08.gif" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<%= basePath %>images/1_09.gif" ><span class="daohang">·系统管理&gt;&gt; 短信管理&gt;&gt; </span></td>
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
                              <td width="21" background="<%= basePath %>images/1_27.gif" ><img src="<%= basePath %>images/1_26.gif" width="21" height="24"></td>
                              <td align="left" background="<%= basePath %>images/1_27.gif" class="daohang" >测试短信发送
                              <br>
                               http://api.sms.cn/mt/?uid=用户账号&pwd=MD532位密码&mobile=号码&mobileids=消息编号&content=内容
                              </td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="100%" colspan="5" height="24" align="center" valign="middle" bgcolor="#F2F2F2"> 第一种方案:</td>                                                                               
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2"> 用户账号uid:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="uid"  maxLength='11' value="test"/>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">pwd(MD532位密码):</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <input type="text"  name="pwd"  maxLength='11' value="b9887c5ebb23ebb294acab183ecf0769"/>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>							
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">号码mobile:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="mobile"  maxLength='50' value="18018695571"/>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">消息编号mobileids:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="mobileids"  maxLength='50' value="<%= System.currentTimeMillis() %>"/>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>                

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">内容content:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="content"  maxLength='50' value="测试短信发送！" />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
 							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">短信发送地址:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="address" id="address"  maxLength='50' value="http://api.sms.cn" />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>                           
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="button" class="btn" value="    方案1 发送测试短信    " name="B1" onClick="addsubmit()">
								<input type="reset"  class="btn" value="    清除    " name="B2">
								<input type="button" class="btn" value="    返回    " name="B1" onClick="javascript:history.back(-1)">
						      </td>
						   </tr>					   
                         </table>
                         
                                                                        
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="100%" colspan="5" height="24" align="center" valign="middle" bgcolor="#F2F2F2"> 第二种方案:</td>                                                                               
                            </tr>
												
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">号码mobile:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="mobile2"  maxLength='50' value="18018695571"/>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">内容content:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="content2"  maxLength='50' value="测试短信发送！" />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
 							                     
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="button" class="btn" value="    方案2 发送测试短信    " name="B1" onClick="addsubmit2()">
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

<%@include file="sms9.jsp" %>  

</form>
</body>
</html>
	