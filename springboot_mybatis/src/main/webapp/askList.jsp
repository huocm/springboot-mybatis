<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<!--   <META http-equiv="X-UA-Compatible" content="IE=8" /> ��Ϊmarquee��ie8���治��ִ�У�����ֻ����ie7-->
     <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
     
     <link rel="stylesheet"  href="<%=basePath %>css/style.css"  type="text/css">
     <script language="JavaScript" src="<%=basePath %>js/global.js" ></script>
     <script language="JavaScript" src="<%=basePath %>jscript/date.js" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
     <script type="text/javascript" src="<%=basePath %>js/jquery-1.6.min.js"></script> 

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��̽���</title>
</head>

<script type="text/javascript" language="javascript">   

//ÿ5���ӣ��Ӻ�̨��ȡһ����Ϣ                                                                                                                                                   
//��ʱע�ӵ����Ա�۲�log���������ſ���
//window.setInterval(function(){getContent();},10000);                                                                                                 
                                                                                                                                                                                                                                                                                                                      
function getContent(){ 
                                                                                                                                          
  //$.ajax({                                                                                                                                                         
  //type: "POST",                                                                                                                                                  
  //url: "<%=basePath %>T_showAsk.action",                                                                                                                                            
  //success: function(msg){                                                                                                                                        
  //$("#content").html(msg);                                                                                                                                    
  //}                                                                                                                                                              
  //});
  
  		var url = "<%=basePath %>T_showAsk.action?time="+Math.random();
		var content ="";
		//alert(url);
		sendRequest("POST",url,content,"TEXT",  showReturnMess );	                                                                                                                                                              
} 
                                                               
//��ӴӺ�̨ȡ������ѯ���ػش���Ϣ����Ϣ��ʾ������ʾ����Ϣ��ʾ����      
function showReturnMess(){
  if( http_request.readyState == 4) {
     // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
     if(http_request.status == 200) { 
           //alert(http_request.responseText);               
		   document.getElementById("content").innerHTML =  http_request.responseText   
        } //end 200; 
		   
    } //end 400;
}                                                                                                
   
//ģ��mqrqueeЧ������ifream�����¹���
function xx(){  
var vcontentval = document.getElementById("content");  
	vcontentval.appendChild(vcontentval.firstChild);  
	//container.
}                                
//setInterval("xx()",3000);  


</script>
<body onload="" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"  background="${basePath}images/1_02.gif">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%" height="100%"> 
	
		 <div id="asklist"  class="daohang1" >  
				<ul id="content"  > </ul> 
	     </div>  	
     </td>
   </tr>
</table>		 

</body>
</html>

