<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK"   %>
<%//@include file="../sessionCustomerValidate.jsp" %>
<%//@include file="../../taglibs.jsp" %>

<%@ page import="java.util.*"%>
<%@ page import="com.common.servlet.CounterListener"%>
<%@ page import="com.common.servlet.AttributeListener"%>
<%@ page import="com.common.app.sign.domain.T_user_detail"%>


<%
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title></title>
		     <script language="JavaScript" src="<%= basePath2 %>/js/myAjax.js" ></script>
		     
		     <script type="text/javascript" src="<%=basePath2 %>js/jquery-1.6.min.js"></script>   
		
    </head>

<script type="text/javascript" language="javascript">                                                                                                                                                                                                                                                                                                                                                                                                                                                          
function clearHis(){
	document.getElementById("showTable").innerHTML="";
	
}
//初始化时滚动条自动滚动到底部
$(document).ready(function (){
	var div = document.getElementById('chat_mess');
	//div.scrollTop = div.scrollHeight; 
});

//发送信息时，首先把滚动条滚到底部
function sendMess(){   
    
    //显示自己信息到显示区域
	showSelfMess();
	//div.scrollTop = div.scrollHeight;  //滚动条自动滚动到最下面。
    
	send();
}

//添加自己发送的信息到信息显示区域，然后再发送给服务器，再从服务器获取最新的返回的信息，显示在信息显示区域。      
function showSelfMess(){
       var myDate = new Date();
	   var hours =myDate.getHours();       //获取当前小时数(0-23)
	   var minutes =myDate.getMinutes();     //获取当前分钟数(0-59)
	   var seconds =myDate.getSeconds();     //获取当前秒数(0-59) 
	   //var div = document.getElementById('chat_mess');
	   var showTime =  hours +":"+ minutes +":"+ seconds 
	
	   //先插入自己填写的信息和时间戳到显示区域
       var tr1 = document.getElementById("showTable").insertRow();
       index= showTable.rows.length;
       //alert(index);
       var name="name"+index; 
       var td1 = tr1.insertCell();
       td1.width = "100%";
       td1.align = "left";
       td1.innerHTML="<font color='blue'>（我）" + showTime+"</font>";    
       index++;
       
       //然后再显示 发送的内容到显示区域。
       var tr2 = document.getElementById("showTable").insertRow();
       index= showTable.rows.length;
       //alert(index);
       var name2="name"+index; 
       var td2 = tr2.insertCell();
       td2.width = "100%";
       td2.align = "left";
       td2.innerHTML = "<font color='blue'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + document.getElementById('say').value + "</font>"    
       index++;          
}
  
//请求函数
function send(){
    //设置咨询问题唯一talkid值到隐藏域。后面getcontent值就是根据唯一talkid到后台取 咨询问题答复内容。
    var say = document.getElementById("say").value;
    var myDate = new Date();
 	var hours =myDate.getHours();       //获取当前小时数(0-23)
	var minutes =myDate.getMinutes();     //获取当前分钟数(0-59)
	var seconds =myDate.getSeconds();     //获取当前秒数(0-59) 
	var vtalkid = Math.random() + seconds;   
    //alert("------自动生成的talkid="+vtalkid);
    $("#talkid").val(vtalkid);  
    //alert("------取得自动生成的talkid="+$("#talkid").val());
    
    //var encodesay = encodeURI(encodeURI(say));
    //alert(say);
    //URL未尾要加个随机数，以免请求不能再次提交, encodeURI(encodeURI(hiddenValue)) 与后面java类中2次处理对应，防止ajax传递中文乱码
    var url = '<%=basePath2 %>T_receiveAsk.action';
    //alert(url);
    //要提交到服务器的数据
    var content ="say="+ encodeURI(encodeURI(say))+"&tel="+vtalkid; // "userName=" + name; tel为唯一随机数，存入后台表中，下面异步轮询去后台取值就是根据tel值去取的。
    //alert(url + content);
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT","" );
    //把输入框中的内容置空
    $("#say").val("");
    
    //设置 returnStatus 回值状态为=‘0’，因为重新发起了新的问题，所以需要重置为0
    $("#returnStatus").val("0");
}                                                                                                                                                                                                                                                                                                              


function getContent(){   
    var vreturnStatus = $("#returnStatus").val();
    //alert("------getContent vreturnStatus="+vreturnStatus); 
    //alert("------getContent talkid="+$("#talkid").val()); 
    //alert("vreturnStatus==0是:"+(vreturnStatus=="0") )
    //如果返回值状态为=‘0’，说明还没有取得返回值，需要轮训去后台取答复值，否则如果returnStatus=‘1’；则不去后台轮训了，直到有新的咨询问题发出，才会改变返回状态值为=‘0’。
	if(vreturnStatus=="0"){  
	    //alert("去后台查询是否有回复咨询！");                                                                                                                           
		var url = "<%=basePath2 %>T_receiveAskReturn.action?talkid="+document.getElementById("talkid").value;
		content ="";
		//alert(url);
		sendRequest("POST",url,content,"TEXT",  showReturnMess );
		
		//$.ajax({                                                                                                                                                         
		//  type: "POST",                                                                                                                                                  
		//  url: "<%=basePath2 %>T_receiveAskReturn.action?talkid="+$("#talkid").val(),                                                                                                                                           
		//  success: function(msg){  
		//	  alert(msg);                                                                                                                                      
		//	  //$("#chat_mess").html(msg); 
		//	  showReturnMess(msg);                                                                                                                                      
		//  }                                                                                                                                                              
		// });                                                                                                                                                              
	}
	//后面验证后注视掉
	else{
		//alert("returnStatus返回值状态为=‘1’,已经取得答复值，所以不需要再去后台取值！");
	}                                                                                                                                                                
}    
       
//添加从后台取到的咨询返回回答信息到信息显示区域，显示在信息显示区域。      
function showReturnMess(){
  //alert("------进入showReturnMess------");
  if( http_request.readyState == 4) {
     // 信息已经成功返回，开始处理信息
     if(http_request.status == 200) {                
         
           //var returnMessage = http_request.responseText;
           var returnMessage = http_request.responseXML.getElementsByTagName("result");
           //alert("------returnMessage="+returnMessage);
		   //alert("------returnMessage.length="+returnMessage.length);
		   for(var i = 0; i < returnMessage.length; i++) {
			      if(returnMessage!=null&&returnMessage.length!=0){			       
				        //如果取得的返回值不为空，说明后台客服人员已经答复，则标记 答复状态为=‘1’，send咨询信息前，默认值为=‘0’；   
				        var vreturnStatus = $("#returnStatus").val("1"); 
				        var myDate = new Date();
						var hours =myDate.getHours();       //获取当前小时数(0-23)
						var minutes =myDate.getMinutes();     //获取当前分钟数(0-59)
						var seconds =myDate.getSeconds();     //获取当前秒数(0-59) 
						var div = document.getElementById('chat_mess');
						var showTime =  hours +":"+ minutes +":"+ seconds 
				       
				       //然后再显示 发送的内容到显示区域。
				       var tr3 = document.getElementById("showTable").insertRow();
				       index= showTable.rows.length;
				       //alert(index);
				       var name3="name"+index; 
				       var td3 = tr3.insertCell();
				       td3.width = "100%";
				       td3.align = "left";
				       td3.innerHTML = "<font color='green'>" + returnMessage[i].getAttribute("id") + "（客服答复）"+ showTime+"</font>"    
				       index++; 
				       
				       //然后再显示 发送的内容到显示区域。
				       var tr4 = document.getElementById("showTable").insertRow();
				       index= showTable.rows.length;
				       //alert(index);
				       var name4="name"+index; 
				       var td4 = tr4.insertCell();
				       td4.width = "100%";
				       td4.align = "left";
				       td4.innerHTML = "<font color='green'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + returnMessage[i].firstChild.nodeValue + "</font>"    
				       index++; 
			    } //end if;      
            } //end for; 
            //alert("完毕!");
        } //end 200;
        else { //页面不正常
            alert('您所请求的页面有异常');
        }  
		   
    } //end 400;
}

//***********************************后台取 咨询答复 开始*****************************
//每5秒钟，从后台读取一次信息                                                                                                                                                   
window.setInterval(function(){getContent();},5000);                                                                                                 
       
//***************************************后台取 咨询答复 完毕*************************


</script>    
    <body>

    	<%@include file="header.jsp" %>		
    		
<div class="list_banner" id="list_banner">
			<img src="images/sub_images/nban8.jpg"/>
		</div>
		<div class="list_banner_bg">
			<span class="home"><a href="<%=basePath2%>index.jsp">首页</a>><a href="<%=basePath2%>consult.jsp">在线咨询</a>><a>咨询金程</a></span>
			<div class="midd">

				<div class="midd_lef">

					<h2>在线咨询</h2>
					<div class="list_hr" style="float:left;">
					</div>

					<div class="lis">
											<span><a href="<%=basePath2%>consult.jsp">在线咨询</a></span>
										<!--	<span><a href="medical.php?id=4">历史咨询记录</a></span>-->
					
					</div>
					<div class="list_hr2" style="float:right;">

					</div>
					<div id="clear"></div>
				</div>
				<div class="midd_right">
					<!-- -->
					<div class="consult">
					    <div class="consult_title">在线咨询</div>
						<div class="consult_con">
						    <!--    -->
						    <div class="consult_con_1">
							    <div class="consult_con_1_l">服务时间段&nbsp;</div>
								<div class="consult_con_1_r">欢迎前来咨询，咨询服务时间段：9:00-17:30</div>
							</div>
							
							<div id="clear"></div>
							<div class="consult_con_2">
							    <div class="consult_con_2_l">交谈记录&nbsp;</div>
								<div class="consult_con_2_r">
								
										<table id="showTable" border="0">
														<tr>
														    <td class="title" width="100%" nowrap>
														    欢迎您前来咨询！
													     <input type="hidden" id="returnStatus" name="returnStatus"  value="0" />
                                                         <input type="hidden"  id="talkid" name="talkid"  value="" />
														    </td>
														 </tr>
													
									  </table>
								</div>
								
							</div>
							<div id="clear"></div>
							<div class="consult_con_3">
							    <div class="consult_con_3_l">咨询内容&nbsp;</div>
								<div class="consult_con_3_r">
								    <textarea   id="say"	name="say"   rows="8" cols="65">输入您要咨询的内容。</textarea>
									&nbsp;&nbsp; 
									<!-- 
									<input type="button" name="清除历史记录" value="清除历史记录" onclick="clearHis()" >
									 -->
									<br>&nbsp;&nbsp;   (每次最多只能输入100个汉字)
								</div>
							</div>
							<div id="clear"></div>
							<div class="consult_b">
							<input type="image" src="<%=basePath %>images/sub_images/btn_fs.png"   onClick="sendMess()" />
							</div>
						</div>
					</div>
				</div>
				<div id="clear"></div>
			</div>
			<div id="clear"></div>
			<div class="height30px"></div>
		</div>
		<div id="clear"></div>
  	    <%@include file="footer.jsp" %>			
	
    </div>
    </body>
</html>		