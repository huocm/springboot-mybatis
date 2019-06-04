<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%//@include file="../../sessionValidate.jsp" %>

<%@ page import="java.util.*"%>
<%@ page import="com.common.servlet.CounterListener"%>
<%@ page import="com.common.servlet.AttributeListener"%>
<%@ page import="com.common.app.sign.domain.T_user_detail"%>

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
<title>咨询</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
     <script type="text/javascript" src="<%=basePath %>js/jquery-1.6.min.js"></script>     

<html>
<head>
<script type="text/javascript" language="javascript">                                                                                                                                                                                                                                                                                                                                                                                                                                                          

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
    var url = '<%=basePath %>T_receiveAsk.action';
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

//***********************************后台取 咨询答复 开始*****************************
//每5秒钟，从后台读取一次信息                                                                                                                                                   
window.setInterval(function(){getContent();},5000);                                                                                                 
                                                                                                                                                                                                                                                                                                                       
function getContent(){   
    var vreturnStatus = $("#returnStatus").val();
    //alert("------getContent vreturnStatus="+vreturnStatus); 
    //alert("------getContent talkid="+$("#talkid").val()); 
    //alert("vreturnStatus==0是:"+(vreturnStatus=="0") )
    //如果返回值状态为=‘0’，说明还没有取得返回值，需要轮训去后台取答复值，否则如果returnStatus=‘1’；则不去后台轮训了，直到有新的咨询问题发出，才会改变返回状态值为=‘0’。
	if(vreturnStatus=="0"){  
	    //alert("去后台查询是否有回复咨询！");                                                                                                                           
		var url = "<%=basePath %>T_receiveAskReturn.action?talkid="+$("#talkid").val();
		content ="";
		sendRequest("POST",url,content,"TEXT",  showReturnMess );
		
		//$.ajax({                                                                                                                                                         
		//  type: "POST",                                                                                                                                                  
		//  url: "<%=basePath %>T_receiveAskReturn.action?talkid="+$("#talkid").val(),                                                                                                                                           
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

//***************************************后台取 咨询答复 完毕*************************                                                                                                                                                                                                                                                                                                                          
</script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"
	scroll=yes>

<s:form action="T_bookActionUpdate" theme="simple">
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
						class="daohang">·咨询&gt;&gt; </span></td>
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
														class="daohang">金程咨询</td>
												</tr>
											</table>
											</td>
										</tr>
										<tr>
											<td bgcolor="cbcbcb">

											<table width="100%" border="0" cellspacing="1"
												cellpadding="0" class="STYLE5">
												<tr>
													<td width="20%" height="24" align="right" valign="middle"
														bgcolor="#F2F2F2">在线客服</td>
													<td width="80%" align="left" valign="middle"
														bgcolor="#FFFFFF">&nbsp; <!--
					            	<s:textfield  name="users"  id="id"  readonly="true"  /><font color="#FF0000">*</font>					    
							        --> <%
	//清除所有,请不要随便使用
	//AttributeListener.reset();
	//显示所有
	Map users  = AttributeListener.getOnlineUsers();
	if(users!= null){
		 
	    Iterator it = users.values().iterator();
	    while(it!=null&&it.hasNext()){
			T_user_detail user = (T_user_detail)it.next();
            out.print(user.getUsername()+";");   	
	    }
	    if(it.hasNext()==false){
	    	out.print("对不起，由于所有客服处于忙碌之中，请耐心等待，谢谢！客服上班时间段:9:00-17:30");	
	    }
	    
	 }
	else{
    	out.print("对不起，由于所有客服处于忙碌之中，请耐心等待，谢谢！客服上班时间段9:00-17:30");
    }
	%>
													</td>
													<td width="20%" height="24" align="right" valign="middle"
														bgcolor="#F2F2F2">&nbsp;</td>
												</tr>

												<tr>
													<td width="20%" height="24" align="right" valign="middle"
														bgcolor="#F2F2F2">交谈记录:</td>
													<td width="80%" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp;
														 <!--<s:textarea  id="companyname" name="t_book.companyname"   cols="130" rows="15"/>-->
                                                         <input type="text" id="returnStatus" name="returnStatus"  value="0" />
                                                         <input type="text"  id="talkid" name="talkid"  value="" />
													&nbsp;&nbsp;
													<!-- 
													<div id="chat_mess"
														style="font-size: 12px; overflow: auto; overflow-y: auto; height: 100px; width: 800px; border: 1px solid #CCC; padding: 10px; float: left;">
													</div>
                                                    -->
													
													<table id="showTable" border="0">
														<tr>
														    <td class="title" width="100%" nowrap>欢迎您前来咨询！</td>
														 </tr>
													
													</table>
													
													</td>
													<td width="20%" height="24" align="right" valign="middle"
														bgcolor="#F2F2F2">&nbsp;</td>
												</tr>
												<tr>
													<td width="20%" height="24" align="right" valign="middle"
														bgcolor="#F2F2F2">咨询内容:</td>
													<td width="80%" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp;
													   <s:textarea id="say"	name="say" cols="130" rows="3" /><a href="#">历史咨询记录</a>
													</td>
													<td width="20%" height="24" align="right" valign="middle"
														bgcolor="#F2F2F2">&nbsp;</td>
												</tr>
												<tr align="center">
													<td height="48" bgcolor="#F2F2F2" colspan="4"><input
														type="button" class="btn" value="    发送    " name="B1"
														onClick="sendMess()"></td>
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
