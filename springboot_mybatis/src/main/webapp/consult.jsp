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
    var url = '<%=basePath2 %>T_receiveAsk.action';
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


function getContent(){   
    var vreturnStatus = $("#returnStatus").val();
    //alert("------getContent vreturnStatus="+vreturnStatus); 
    //alert("------getContent talkid="+$("#talkid").val()); 
    //alert("vreturnStatus==0��:"+(vreturnStatus=="0") )
    //�������ֵ״̬Ϊ=��0����˵����û��ȡ�÷���ֵ����Ҫ��ѵȥ��̨ȡ��ֵ���������returnStatus=��1������ȥ��̨��ѵ�ˣ�ֱ�����µ���ѯ���ⷢ�����Ż�ı䷵��״ֵ̬Ϊ=��0����
	if(vreturnStatus=="0"){  
	    //alert("ȥ��̨��ѯ�Ƿ��лظ���ѯ��");                                                                                                                           
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

//***********************************��̨ȡ ��ѯ�� ��ʼ*****************************
//ÿ5���ӣ��Ӻ�̨��ȡһ����Ϣ                                                                                                                                                   
window.setInterval(function(){getContent();},5000);                                                                                                 
       
//***************************************��̨ȡ ��ѯ�� ���*************************


</script>    
    <body>

    	<%@include file="header.jsp" %>		
    		
<div class="list_banner" id="list_banner">
			<img src="images/sub_images/nban8.jpg"/>
		</div>
		<div class="list_banner_bg">
			<span class="home"><a href="<%=basePath2%>index.jsp">��ҳ</a>><a href="<%=basePath2%>consult.jsp">������ѯ</a>><a>��ѯ���</a></span>
			<div class="midd">

				<div class="midd_lef">

					<h2>������ѯ</h2>
					<div class="list_hr" style="float:left;">
					</div>

					<div class="lis">
											<span><a href="<%=basePath2%>consult.jsp">������ѯ</a></span>
										<!--	<span><a href="medical.php?id=4">��ʷ��ѯ��¼</a></span>-->
					
					</div>
					<div class="list_hr2" style="float:right;">

					</div>
					<div id="clear"></div>
				</div>
				<div class="midd_right">
					<!-- -->
					<div class="consult">
					    <div class="consult_title">������ѯ</div>
						<div class="consult_con">
						    <!--    -->
						    <div class="consult_con_1">
							    <div class="consult_con_1_l">����ʱ���&nbsp;</div>
								<div class="consult_con_1_r">��ӭǰ����ѯ����ѯ����ʱ��Σ�9:00-17:30</div>
							</div>
							
							<div id="clear"></div>
							<div class="consult_con_2">
							    <div class="consult_con_2_l">��̸��¼&nbsp;</div>
								<div class="consult_con_2_r">
								
										<table id="showTable" border="0">
														<tr>
														    <td class="title" width="100%" nowrap>
														    ��ӭ��ǰ����ѯ��
													     <input type="hidden" id="returnStatus" name="returnStatus"  value="0" />
                                                         <input type="hidden"  id="talkid" name="talkid"  value="" />
														    </td>
														 </tr>
													
									  </table>
								</div>
								
							</div>
							<div id="clear"></div>
							<div class="consult_con_3">
							    <div class="consult_con_3_l">��ѯ����&nbsp;</div>
								<div class="consult_con_3_r">
								    <textarea   id="say"	name="say"   rows="8" cols="65">������Ҫ��ѯ�����ݡ�</textarea>
									&nbsp;&nbsp; 
									<!-- 
									<input type="button" name="�����ʷ��¼" value="�����ʷ��¼" onclick="clearHis()" >
									 -->
									<br>&nbsp;&nbsp;   (ÿ�����ֻ������100������)
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