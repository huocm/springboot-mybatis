<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>
<%//@include file="sessionValidate.jsp" %>
<%@include file="taglibs.jsp" %>

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
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
     <script type="text/javascript" src="<%=basePath %>js/jquery-1.6.min.js"></script>     

<html>
<head>

<script language="JavaScript"> 
//������
function getNews(){
        //URLδβҪ�Ӹ�������������������ٴ��ύ, encodeURI(encodeURI(hiddenValue)) �����java����2�δ����Ӧ����ֹajax������������
    var url = '<%=basePath %>T_newsFindById.action?id=<%=request.getParameter("id")%>';
    //alert(url);
    //Ҫ�ύ��������������
    var content =""; // "userName=" + name; telΪΨһ������������̨���У������첽��ѯȥ��̨ȡֵ���Ǹ���telֵȥȡ�ġ�
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT", getNewsResults );
}                                                                                                                                                                                                                                                                                                              
       
//��ӴӺ�̨ȡ������ѯ���ػش���Ϣ����Ϣ��ʾ������ʾ����Ϣ��ʾ����      
function getNewsResults(){
  //alert("------����getNewsResults------");
  if( http_request.readyState == 4) {
     // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
     if(http_request.status == 200) {                
           //var returnMessage = http_request.responseText;  
    	   var showNews = document.getElementById("showNews");
           var showNewsList = "";

           var returnMessage = http_request.responseXML.getElementsByTagName("result");
           //alert(returnMessage.length);
 
 		   for(var i = 0; i < returnMessage.length; i++) {
			      if(returnMessage!=null&&returnMessage.length!=0){	
			    	  var newsid = returnMessage[i].getAttribute("id");
			    	  var newscontent = returnMessage[i].firstChild.nodeValue ;
			    	  showNewsList = "&nbsp; &nbsp;&nbsp; &nbsp;"+newscontent; 
			      }
		   } 
		   //alert(showNewsList);
		   
		   document.getElementById("showNews").innerHTML = showNewsList;
           //alert("���!");
        } //end 200;
        else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }  
		   
    } //end 400;
}
</script>
</head>
<!-- <body onload="getNews()">-->
<body onload="">

	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		bgcolor="2d6094">
		<tr>
			<td height="3"></td>
		</tr>
		<tr>
			<td valign="top">

			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				
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
											<td bgcolor="cbcbcb">

											<table width="100%" border="0" cellspacing="1"
												cellpadding="0" class="STYLE5">
												<tr>
												  <td width="100%" height="24" align="left" valign="middle" bgcolor="#F2F2F2">
													<br>
													<br>
													<br>
													<s:property value="t_news.title" />
													<br>
													<s:property value="t_news.content" />
													
													 <s:if test="'${t_news.code}' ==''">
										                 </s:if>
										                 <s:elseif  test="'${t_news.code}' ==null">
										                 </s:elseif >
										                 <s:else>
										                 	<img src='<%=basePath %>NewsImage?fileName=${t_news.code}&filePath=${t_news.tel}'   />				            						                 
										                 </s:else>
										                 <br>
													<div id="showNews"> 
													
													</div>
													<br>
                                                    <br>
													<br>
													<br>
												  </td>
												</tr>
										        <tr>
													<td width="100%" height="24" align="center" valign="middle" bgcolor="#F2F2F2">
													  <br>
													  <a href="#" onclick="window.close()">�������رա����� </a>
													  <br><br>
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


</body>
</html>
