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
<title>��ѯ</title>
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
                                                               
//��ӴӺ�̨ȡ������ѯ���ػش���Ϣ����Ϣ��ʾ������ʾ����Ϣ��ʾ����      
function showReturnMess(){
  if( http_request.readyState == 4) {
     // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
     if(http_request.status == 200) { 
           //alert("responseText="+http_request.responseText);               
		   document.getElementById("say").innerHTML =  http_request.responseText   
        } //end 200; 
		   
    } //end 400;
}                                                                                                

//������
function sendMess(){
    //URLδβҪ�Ӹ�������������������ٴ��ύ, encodeURI(encodeURI(hiddenValue)) �����java����2�δ����Ӧ����ֹajax������������
    var content = $("#content").val();
    //alert(content);
    if(content==null||content==""){
    	alert("������ظ����ݣ�");
    	return false;
    }
    form1.action = '<%=basePath %>T_answerAskSave.action';
    form1.submit();
    alert("�ظ��ɹ���");
    //document.getElementById("mshf").display = block; //ʹ������
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
						class="daohang">����ѯ�ظ�&gt;&gt; </span></td>
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
														class="daohang">��ѯ���⼰�ظ�</td>
												</tr>
											</table>
											</td>
										</tr>
										<tr>
											<td bgcolor="cbcbcb">

											<table width="100%" border="0" cellspacing="1"
												cellpadding="0" class="STYLE5">
												<tr>
													<td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ظ���</td>
													<td width="80%" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp; <%= session.getAttribute("userName") %>
													</td>
													<td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
												</tr>

												<tr>
													<td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��ѯ����:</td>
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
													  <a href="#">��ʷ��ѯ��¼</a>	
													</td>
													<td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
												</tr>
												 -->
												<tr>
													<td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ظ�����(���ܳ���512��):</td>
													<td width="80%" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp;
													   <s:textarea id="content"	name="content" cols="130" rows="3" />
													  
													  <input type="hidden"  id="id" name="id"   value="<%= request.getParameter("id") %>" />
													
													</td>
													<td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
												</tr>
												<tr align="center">
													<td height="48" bgcolor="#F2F2F2" colspan="4">
													<div id="mshf" >
													<input type="button" class="btn"  value="    ���ϻظ�    "   name="B1" onClick="sendMess()" >
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
