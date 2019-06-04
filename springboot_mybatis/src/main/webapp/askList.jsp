<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<!--   <META http-equiv="X-UA-Compatible" content="IE=8" /> 因为marquee在ie8下面不会执行，所以只能用ie7-->
     <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
     
     <link rel="stylesheet"  href="<%=basePath %>css/style.css"  type="text/css">
     <script language="JavaScript" src="<%=basePath %>js/global.js" ></script>
     <script language="JavaScript" src="<%=basePath %>jscript/date.js" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
     <script type="text/javascript" src="<%=basePath %>js/jquery-1.6.min.js"></script> 

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>金程健康</title>
</head>

<script type="text/javascript" language="javascript">   

//每5秒钟，从后台读取一次信息                                                                                                                                                   
//暂时注视掉，以便观察log输出，后面放开。
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
                                                               
//添加从后台取到的咨询返回回答信息到信息显示区域，显示在信息显示区域。      
function showReturnMess(){
  if( http_request.readyState == 4) {
     // 信息已经成功返回，开始处理信息
     if(http_request.status == 200) { 
           //alert(http_request.responseText);               
		   document.getElementById("content").innerHTML =  http_request.responseText   
        } //end 200; 
		   
    } //end 400;
}                                                                                                
   
//模拟mqrquee效果，在ifream中上下滚动
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

