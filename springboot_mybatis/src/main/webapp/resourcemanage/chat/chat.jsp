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
<title>��ѯ</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
     <script type="text/javascript" src="<%=basePath %>js/jquery-1.6.min.js"></script>     

<html>
<head>
<script type="text/javascript" language="javascript">                                                                                                                                                                                                                                                                                                                                                                                                                                                          

//��ʼ��ʱ�������Զ��������ײ�
$(document).ready(function (){
	var div = document.getElementById('chat_mess');
	//div.scrollTop = div.scrollHeight; 
});

//������Ϣʱ�����Ȱѹ����������ײ�
function sendMess(){   
    
    //��ʾ�Լ���Ϣ����ʾ����
	showSelfMess();
	//div.scrollTop = div.scrollHeight;  //�������Զ������������档
    
	send();
}

//����Լ����͵���Ϣ����Ϣ��ʾ����Ȼ���ٷ��͸����������ٴӷ�������ȡ���µķ��ص���Ϣ����ʾ����Ϣ��ʾ����      
function showSelfMess(){
       var myDate = new Date();
	   var hours =myDate.getHours();       //��ȡ��ǰСʱ��(0-23)
	   var minutes =myDate.getMinutes();     //��ȡ��ǰ������(0-59)
	   var seconds =myDate.getSeconds();     //��ȡ��ǰ����(0-59) 
	   //var div = document.getElementById('chat_mess');
	   var showTime =  hours +":"+ minutes +":"+ seconds 
	
	   //�Ȳ����Լ���д����Ϣ��ʱ�������ʾ����
       var tr1 = document.getElementById("showTable").insertRow();
       index= showTable.rows.length;
       //alert(index);
       var name="name"+index; 
       var td1 = tr1.insertCell();
       td1.width = "100%";
       td1.align = "left";
       td1.innerHTML="<font color='blue'>���ң�" + showTime+"</font>";    
       index++;
       
       //Ȼ������ʾ ���͵����ݵ���ʾ����
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
  
//������
function send(){
    //������ѯ����Ψһtalkidֵ�������򡣺���getcontentֵ���Ǹ���Ψһtalkid����̨ȡ ��ѯ��������ݡ�
    var say = document.getElementById("say").value;
    var myDate = new Date();
 	var hours =myDate.getHours();       //��ȡ��ǰСʱ��(0-23)
	var minutes =myDate.getMinutes();     //��ȡ��ǰ������(0-59)
	var seconds =myDate.getSeconds();     //��ȡ��ǰ����(0-59) 
	var vtalkid = Math.random() + seconds;   
    //alert("------�Զ����ɵ�talkid="+vtalkid);
    $("#talkid").val(vtalkid);  
    //alert("------ȡ���Զ����ɵ�talkid="+$("#talkid").val());
    
    //var encodesay = encodeURI(encodeURI(say));
    //alert(say);
    //URLδβҪ�Ӹ�������������������ٴ��ύ, encodeURI(encodeURI(hiddenValue)) �����java����2�δ����Ӧ����ֹajax������������
    var url = '<%=basePath %>T_receiveAsk.action';
    //alert(url);
    //Ҫ�ύ��������������
    var content ="say="+ encodeURI(encodeURI(say))+"&tel="+vtalkid; // "userName=" + name; telΪΨһ������������̨���У������첽��ѯȥ��̨ȡֵ���Ǹ���telֵȥȡ�ġ�
    //alert(url + content);
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT","" );
    //��������е������ÿ�
    $("#say").val("");
    
    //���� returnStatus ��ֵ״̬Ϊ=��0������Ϊ���·������µ����⣬������Ҫ����Ϊ0
    $("#returnStatus").val("0");
}                                                                                                                                                                                                                                                                                                              

//***********************************��̨ȡ ��ѯ�� ��ʼ*****************************
//ÿ5���ӣ��Ӻ�̨��ȡһ����Ϣ                                                                                                                                                   
window.setInterval(function(){getContent();},5000);                                                                                                 
                                                                                                                                                                                                                                                                                                                       
function getContent(){   
    var vreturnStatus = $("#returnStatus").val();
    //alert("------getContent vreturnStatus="+vreturnStatus); 
    //alert("------getContent talkid="+$("#talkid").val()); 
    //alert("vreturnStatus==0��:"+(vreturnStatus=="0") )
    //�������ֵ״̬Ϊ=��0����˵����û��ȡ�÷���ֵ����Ҫ��ѵȥ��̨ȡ��ֵ���������returnStatus=��1������ȥ��̨��ѵ�ˣ�ֱ�����µ���ѯ���ⷢ�����Ż�ı䷵��״ֵ̬Ϊ=��0����
	if(vreturnStatus=="0"){  
	    //alert("ȥ��̨��ѯ�Ƿ��лظ���ѯ��");                                                                                                                           
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
	//������֤��ע�ӵ�
	else{
		//alert("returnStatus����ֵ״̬Ϊ=��1��,�Ѿ�ȡ�ô�ֵ�����Բ���Ҫ��ȥ��̨ȡֵ��");
	}                                                                                                                                                                
}    
       
//��ӴӺ�̨ȡ������ѯ���ػش���Ϣ����Ϣ��ʾ������ʾ����Ϣ��ʾ����      
function showReturnMess(){
  //alert("------����showReturnMess------");
  if( http_request.readyState == 4) {
     // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
     if(http_request.status == 200) {                
         
           //var returnMessage = http_request.responseText;
           var returnMessage = http_request.responseXML.getElementsByTagName("result");
           //alert("------returnMessage="+returnMessage);
		   //alert("------returnMessage.length="+returnMessage.length);
		   for(var i = 0; i < returnMessage.length; i++) {
			      if(returnMessage!=null&&returnMessage.length!=0){			       
				        //���ȡ�õķ���ֵ��Ϊ�գ�˵����̨�ͷ���Ա�Ѿ��𸴣����� ��״̬Ϊ=��1����send��ѯ��Ϣǰ��Ĭ��ֵΪ=��0����   
				        var vreturnStatus = $("#returnStatus").val("1"); 
				        var myDate = new Date();
						var hours =myDate.getHours();       //��ȡ��ǰСʱ��(0-23)
						var minutes =myDate.getMinutes();     //��ȡ��ǰ������(0-59)
						var seconds =myDate.getSeconds();     //��ȡ��ǰ����(0-59) 
						var div = document.getElementById('chat_mess');
						var showTime =  hours +":"+ minutes +":"+ seconds 
				       
				       //Ȼ������ʾ ���͵����ݵ���ʾ����
				       var tr3 = document.getElementById("showTable").insertRow();
				       index= showTable.rows.length;
				       //alert(index);
				       var name3="name"+index; 
				       var td3 = tr3.insertCell();
				       td3.width = "100%";
				       td3.align = "left";
				       td3.innerHTML = "<font color='green'>" + returnMessage[i].getAttribute("id") + "���ͷ��𸴣�"+ showTime+"</font>"    
				       index++; 
				       
				       //Ȼ������ʾ ���͵����ݵ���ʾ����
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
            //alert("���!");
        } //end 200;
        else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }  
		   
    } //end 400;
}

//***************************************��̨ȡ ��ѯ�� ���*************************                                                                                                                                                                                                                                                                                                                          
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
						class="daohang">����ѯ&gt;&gt; </span></td>
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
														class="daohang">�����ѯ</td>
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
														bgcolor="#F2F2F2">���߿ͷ�</td>
													<td width="80%" align="left" valign="middle"
														bgcolor="#FFFFFF">&nbsp; <!--
					            	<s:textfield  name="users"  id="id"  readonly="true"  /><font color="#FF0000">*</font>					    
							        --> <%
	//�������,�벻Ҫ���ʹ��
	//AttributeListener.reset();
	//��ʾ����
	Map users  = AttributeListener.getOnlineUsers();
	if(users!= null){
		 
	    Iterator it = users.values().iterator();
	    while(it!=null&&it.hasNext()){
			T_user_detail user = (T_user_detail)it.next();
            out.print(user.getUsername()+";");   	
	    }
	    if(it.hasNext()==false){
	    	out.print("�Բ����������пͷ�����æµ֮�У������ĵȴ���лл���ͷ��ϰ�ʱ���:9:00-17:30");	
	    }
	    
	 }
	else{
    	out.print("�Բ����������пͷ�����æµ֮�У������ĵȴ���лл���ͷ��ϰ�ʱ���9:00-17:30");
    }
	%>
													</td>
													<td width="20%" height="24" align="right" valign="middle"
														bgcolor="#F2F2F2">&nbsp;</td>
												</tr>

												<tr>
													<td width="20%" height="24" align="right" valign="middle"
														bgcolor="#F2F2F2">��̸��¼:</td>
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
														    <td class="title" width="100%" nowrap>��ӭ��ǰ����ѯ��</td>
														 </tr>
													
													</table>
													
													</td>
													<td width="20%" height="24" align="right" valign="middle"
														bgcolor="#F2F2F2">&nbsp;</td>
												</tr>
												<tr>
													<td width="20%" height="24" align="right" valign="middle"
														bgcolor="#F2F2F2">��ѯ����:</td>
													<td width="80%" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp;
													   <s:textarea id="say"	name="say" cols="130" rows="3" /><a href="#">��ʷ��ѯ��¼</a>
													</td>
													<td width="20%" height="24" align="right" valign="middle"
														bgcolor="#F2F2F2">&nbsp;</td>
												</tr>
												<tr align="center">
													<td height="48" bgcolor="#F2F2F2" colspan="4"><input
														type="button" class="btn" value="    ����    " name="B1"
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
