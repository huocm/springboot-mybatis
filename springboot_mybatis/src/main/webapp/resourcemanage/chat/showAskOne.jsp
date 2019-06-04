<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%//@include file="../../sessionValidate.jsp" %>
<%@include file="../../taglibs.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="com.common.servlet.CounterListener"%>
<%@ page import="com.common.servlet.AttributeListener"%>
<%@ page import="com.common.app.sign.domain.T_user_detail"%>

<s:head theme="ajax" />

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>咨询</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
     <script type="text/javascript" src="<%=basePath %>js/jquery-1.6.min.js"></script>     

<html>
<head>
<script type="text/javascript" language="javascript">   
                                                                                                                                                                                                                                                                                                                   
function getContent(){ 
  //var id = <%= request.getParameter("id")%>;
  //var vurl = "<%=basePath %>T_getAskOne.action?id="+id; 
  //alert(vurl);                                                                                                                                      
  //$.ajax({                                                                                                                                                         
  //type: "POST",                                                                                                                                                  
  //url: vurl,                                                                                                                                            
  //success: function(msg){                                                                                                                                        
  //$("#say").html(msg);                                                                                                                                    
  //}                                                                                                                                                              
  //});
  
  		var url = '<%=basePath %>T_getAskOne.action?id=<%= request.getParameter("id")%>';
		var content ="";
		//alert(url);
		sendRequest("POST",url,content,"TEXT",  showReturnMess );	                                                                                                                                                              
} 
                                                               
//添加从后台取到的咨询返回回答信息到信息显示区域，显示在信息显示区域。      
function showReturnMess(){
  if( http_request.readyState == 4) {
     // 信息已经成功返回，开始处理信息
     if(http_request.status == 200) { 
           //alert("responseText="+http_request.responseText);               
		   document.getElementById("say").innerHTML =  http_request.responseText   
        } //end 200; 
		   
    } //end 400;
}                                                                                                

//请求函数
function sendMess(){
    //URL未尾要加个随机数，以免请求不能再次提交, encodeURI(encodeURI(hiddenValue)) 与后面java类中2次处理对应，防止ajax传递中文乱码
    var content = $("#content").val();
    //alert(content);
    if(content==null||content==""){
    	alert("请输入回复内容！");
    	return false;
    }
    form1.action = '<%=basePath %>T_answerAskSave.action';
    form1.submit();
    alert("回复成功！");
    //document.getElementById("mshf").display = block; //使不可用
}                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                        
</script>
</head>
<body onload="getContent()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="" name="form1" theme="simple">
	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		bgcolor="2d6094">
		<tr>
			<td height="3"></td>
		</tr>
		<tr>
			<td valign="top">

			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="10" height="25"
						background="<s:url value='/images/1_09.gif'/>"><img
						src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
					<td width="839" valign="bottom"
						background="<s:url value='/images/1_09.gif'/>"><span
						class="daohang">·咨询回复&gt;&gt; </span></td>
				</tr>
				<tr>
					<td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF">

					<table width="100%" border="0" cellspacing="5" cellpadding="0">
						<tr>
							<td>

							<table width="100%" border="0" cellpadding="0" cellspacing="5">
								<tr>
									<td height="229" valign="top">

									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td>
											<table width="100%" height="24" border="0" cellpadding="0"
												cellspacing="0">
												<tr>
													<td width="21"
														background="<s:url value='/images/1_27.gif'/>"><img
														src="<s:url value='/images/1_26.gif'/>" width="21"
														height="24"></td>
													<td align="left"
														background="<s:url value='/images/1_27.gif'/>"
														class="daohang">咨询问题及回复</td>
												</tr>
											</table>
											</td>
										</tr>
										<tr>
											<td bgcolor="cbcbcb">

											<table width="100%" border="0" cellspacing="1"
												cellpadding="0" class="STYLE5">
												<tr>
													<td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">回复人</td>
													<td width="80%" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp; <%= session.getAttribute("userName") %>
													</td>
													<td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
												</tr>

												<tr>
													<td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">咨询问题:</td>
													<td width="80%" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp;
													<div id="say"
														style="font-size: 12px; overflow: auto; overflow-y: auto; height: 100px; width: 800px; border: 1px solid #CCC; padding: 10px; float: left;">
													</div>
                                                    		
													</td>
													<td width="20%" height="24" align="right" valign="middle"
														bgcolor="#F2F2F2">&nbsp;</td>
												</tr>
												<!-- 
												<tr>
													<td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2"></td>
													<td width="80%" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp; 
													  <a href="#">历史咨询记录</a>	
													</td>
													<td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
												</tr>
												 -->
												<tr>
													<td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">回复内容(不能超过512字):</td>
													<td width="80%" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp;
													   <s:textarea id="content"	name="content" cols="130" rows="3" />
													  
													  <input type="hidden"  id="id" name="id"   value="<%= request.getParameter("id") %>" />
													
													</td>
													<td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
												</tr>
												<tr align="center">
													<td height="48" bgcolor="#F2F2F2" colspan="4">
													<div id="mshf" >
													<input type="button" class="btn"  value="    马上回复    "   name="B1" onClick="sendMess()" >
													</div>
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
