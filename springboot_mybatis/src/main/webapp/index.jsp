<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>
<%//@include file="sessionValidate.jsp" %>
<%@include file="taglibs.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>��̽���_ȫ��λ����������������</title> 
<meta name="keywords" content="���,��̽������,�������,�������,��������,��̽���" /> 
<meta name="description" content="��̽������������ȫ�����ȵ�������ģ��ǽ�����졢�����ٽ�����ҽ���Ϻ�˽�˱���ҽ���Ƚ����������ļ�����;�ṩ�������(�����/Ů�����)������������ҵԱ������ȫ��λ�����������" />
<link href="css/sub_css/jincheng.css" rel="stylesheet" type="text/css"/>
<link href="css/sub_css/index.css" rel="stylesheet" type="text/css"/>
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<script type="text/javascript" src="<%=basePath %>js/sub_js/jquery-1.4.2.min.js"></script>
<script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>

<script language="JavaScript"> 
		function show(a)
		{   
			$(".table"+a).show();
			if(a==1)
			{
				$(".table2").hide();
			}
			else{
				$(".table1").hide();
				}
		}

		//��Ա��ʵ�￨�ŷ�ʽ��¼
		 function checkMemberCard(){
			        //alert("��¼��֤��ʼ");
		            var membernameCard = $("#membernameCard").val();
		            if (membernameCard == ''||membernameCard=="�����¼�˺�") {
		                alert("��¼�˺Ų���Ϊ��!");
		                $("#membernameCard").focus();
		                return false;
		            }
		            var memberpasswordCard = $("#memberpasswordCard").val();
		            if (memberpasswordCard == ''||memberpasswordCard=="��������") {
		                alert("���벻��Ϊ��!");
		                $("#memberpasswordCard").focus();
		                return false;
		            }

		            //var yzm = $("#yzm").val();
		            //alert(yzm);
		            //if (yzm == '') {
		            //    alert("��֤�벻��Ϊ��!");
		            //    $("#yzm").focus();
		            //    return false;
		            //}
		            
		            form1.action="<%=basePath%>syMemberCardLogin.action?flag=member&type=card";
		            //alert("------------111111111111--------------------");
		            form1.submit();
		            //alert("------------222222222222222--------------------");
		  } //end checkCustomer;    
		    

//��ʾ�������
		var vmessage ="<s:property value='message' />";
		if(vmessage!=""){
		    alert(vmessage);
		}
		</script> 
    </head>
    <body >
    <div class="container">
         
<div class="header">
        	<div class="header_son">
            	<div class="logo">
					<a href="<%=basePath%>index.jsp"><img src="<%=basePath%>images/sub_images/logo3.png" /></a>
                </div>
                
                <div class="logo_right">
                	    <!--
                	     <a href="<%=basePath %>zzjsz.jsp"   target="_blank" class="eng">English</a>
                	-->
                	<div class="language">
		<%if(request.getSession().getAttribute("customerName")==null&&request.getSession().getAttribute("userName")==null){ %>
					<a href="<%=basePath %>login2.jsp" target="_self">&nbsp;��ҵ�ͻ���¼</a> &nbsp;|&nbsp;
					<a href="<%=basePath %>login.jsp" target="_self">&nbsp;��쿨���</a> &nbsp;|&nbsp;
					<a href="<%=basePath %>login4.jsp" target="_self">&nbsp;��ҵHR���</a> &nbsp;|&nbsp;
					
		<%}else{ %>
					
					 ���ã�<%=request.getSession().getAttribute("customerName") %>��
					<a href="<%=basePath %>signoffAction.action" target="_self">&nbsp; ��ȫ�˳�  &nbsp;|&nbsp;</a>
					<a href="<%=basePath %>changePassword2.jsp" target="_self">&nbsp; �޸�����  &nbsp;|&nbsp;</a>
		<%} %>
					<a href=# onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=basePath %>');">&nbsp;��Ϊ��ҳ&nbsp;&nbsp;|&nbsp;</a>
					<a href="javascript:window.external.AddFavorite('<%=basePath %>','��̽���')">&nbsp;�ղر�վ&nbsp;&nbsp;|&nbsp;</a>
					<a href="<%=basePath %>zzjsz.jsp"   target="_blank" >&nbsp;English&nbsp;</a>
                    </div>
                  
                    <img src="images/sub_images/tel.png"/ style=" margin-top:5px;">
                </div>
            </div>
        </div>
        <div class="banner" id="banner">
	
		
              <div id="box" >
                <ul id="list" >
                                    <li><a href="#"><img  src="uploads/product/20140809/1.jpg" width="1600" height="400" /></a></li>
									<li><a href="#"><img  src="uploads/product/20140809/2.jpg" width="1600" height="400" /></a></li>
				                    <li><a href="#"><img  src="uploads/product/20140809/3.jpg" width="1600" height="400" /></a></li>
				                    <li><a href="#"><img  src="uploads/product/20140809/4.jpg" width="1600" height="400" /></a></li>
				                    <li><a href="#"><img  src="uploads/product/20140809/5.jpg" width="1600" height="400" /></a></li>
				                    <li><a href="#"><img  src="uploads/product/20140809/6.jpg" width="1600" height="400" /></a></li>
                </ul>
					<ul id="num">
		<li class="active">1</li>
		<li>2</li>
		<li>3</li>
		<li>4</li>
		<li>5</li>	
		<li>6</li>		
	</ul>
              </div>
		      <script type="text/javascript" src="js/sub_js/myjs.js"></script>
            
       
        </div>
                
                <div class="navi menu">
		
        	<ul class="w" style="list-style:none;">
            	<li><a href="<%=basePath%>index.jsp" style="height:48px;line-height:48px;">��ҳ</a></li>								
                <li><a href="<%=basePath%>medical.jsp" style="height:48px;line-height:48px;">�������</a>
					<ul>
											<li><a href="<%=basePath%>medical.jsp?id=1"><span>��ְ���</span></a></li>
									
											<li><a href="<%=basePath%>medical.jsp?id=3"><span>��ҵ�������</span></a></li>
											<li><a href="<%=basePath%>medical.jsp?id=4"><span>�߶����</span></a></li>
											<li><a href="<%=basePath%>medical.jsp?id=5"><span>��̽�����쿨</span></a></li>
											
											<li><a href="<%=basePath%>medical.jsp?id=7"><span>������</span></a></li>
						
					</ul>
				</li>								
                <li><a href="<%=basePath%>management.jsp?id=1" style="height:48px;line-height:48px;">��������</a>
                	<ul>
												<li><a href="<%=basePath%>management.jsp?id=1"><span>��������</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=2&cid=1"><span>��������</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=3"><span>������Ԥ</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=4"><span>��������</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=5"><span>������ѯ</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=6"><span>˽��ҽ��</span></a></li>
											</ul>
                </li>
                <li><a href="<%=basePath%>jkzx.action?newstype=1" style="height:48px;line-height:48px;">��������</a>
					<ul>
												<li><a href="<%=basePath%>jkzx.action?newstype=1"><span>���ڽ���</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=2"><span>������ѯ</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=3"><span>��������</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=4"><span>��ҵ��̬</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=5"><span>����ʳ��</span></a></li>
												
											</ul>
				</li>

                <li><a href="<%=basePath%>crops1.jsp" style="height:48px;line-height:48px;">��ɫũ��Ʒ</a>
                	<ul>
												<li><a href="<%=basePath%>crops1.jsp"><span>��ɫ����</span></a></li>
												
											</ul>
                </li>
                <li><a href="<%=basePath%>aboutus.jsp" style="height:48px;line-height:48px;">���ڽ��</a>
					<ul>
											<li><a href="<%=basePath %>aboutus.jsp?id=1"><span>��˾���</span></a></li>
											<li><a href="<%=basePath %>aboutus.jsp?id=9"><span>��������</span></a></li>

											<li><a href="<%=basePath %>aboutus.jsp?id=4"><span>��������</span></a></li>
											<li><a href="<%=basePath %>aboutus.jsp?id=5"><span>��Դ����</span></a></li>
											<li><a href="<%=basePath %>aboutus.jsp?id=6"><span>ϵͳƽ̨</span></a></li>
			
											<li><a href="<%=basePath %>aboutus.jsp?id=10"><span>�˲���Ƹ</span></a></li>																	
											<li><a href="<%=basePath %>aboutus.jsp?id=8"><span>��ϵ����</span></a></li>
					</ul>
				</li>
                <li><a href="<%=basePath%>gryyFind.action" style="height:48px;line-height:48px;">��Աר��</a>
                	<ul>
												<li><a href="<%=basePath%>gryyFind.action"><span>����ԤԼ</span></a></li>
												<li><a href="<%=basePath%>tjbgxzFind.action"><span>��챨������</span></a></li>
												<li><a href="<%=basePath%>vip.jsp?id=4"><span>VIPר�����</span></a></li>
											</ul>
                </li>
				<li><a href="<%=basePath%>consult.jsp" style="height:48px;line-height:48px;">������ѯ</a>
                </li>
            </ul>
        </div>
        
        
        <div id="clear"></div>
       <div class="s_container">
	   <div class="container_left">
          <div class="login_table">
            <div class="table1" >
            <form name="form1"   method="post"> 
            <div style="float:left; width:115px; line-height:30px;height:30px;text-align:center;color:#5ca740"><strong><a onclick="show(1)" class="a_style">���˵�¼</a></strong></div>
            <div style="float:right;width:120px; line-height:25px; height:25px;text-align:center;color:#5ca740;  border:1px solid #dedfde;vertical-align: middle; border-top:medium none; border-right:medium none;"><a class="a_style" onclick="show(2)">��ҵ/HR��¼</a></div>
             <div id="clear"></div>
            <input type="text"  class="text" name="membernameCard"  maxlength="20"  id ="membernameCard"  onfocus="if(value=='�����¼�˺�'){this.style.color='#000';value=''}" onblur="if(value==''){this.style.color='#999';value='�����¼�˺�'}"" value="�����¼�˺�"/>
            <input  type="text" class="text" name="memberpasswordCard"   id = "memberpasswordCard"   onfocus="if(value=='��������'){this.style.color='#000';value=''}" onblur="if(value==''){this.style.color='#999';value='��������'}"" value="��������"/>
            
            <p style="margin-top:20px; margin-left:5px;"> <input  type="checkbox" value="�Զ���¼"/>&nbsp;&nbsp;&nbsp;�Զ���¼&nbsp;&nbsp;&nbsp; <a href="#" style="color:#308baa">�������룿</a></p>
             <!-- 
             <img name="" value=""   onclick=" checkMemberCard()"  src="<%=basePath %>images/sub_images/submit_button.png" style="-moz-opacity:1; filter:alpha(opacity=100);cursor:hand;" 
	                        onmouseover="this.style.MozOpacity=0.5;this.filters.alpha.opacity=50"
	                        onmouseout="this.style.MozOpacity=1;this.filters.alpha.opacity=100" />
	          -->           
            <img name="" value=""  onclick=" checkMemberCard()"  class="login_button"  src="images/sub_images/submit_button.png">
             </form>  
            </div>
			<div class="table2" style="display:none">
            <div style="border:1px solid #dedfde;border-top:medium none; border-left:medium none;float:left; width:115px; line-height:30px;height:30px;text-align:center;color:#5ca740"><a class="a_style" onclick="show(1)">���˵�¼</a></div>
            <div style="float:right;width:120px; line-height:25px; height:25px;text-align:center;color:#5ca740;  vertical-align: middle;" ><a onclick="show(2)" class="a_style"><strong>��ҵ/HR��¼</strong></a></div>
             <div id="clear"></div>
             <div style="padding:8px; margin-top:30px;">
                <a href="<%=basePath %>login2.jsp"><image  src="images/sub_images/hr_login.png"></a>
             	<a href="<%=basePath %>login4.jsp"><image style="margin-top:20px;"  src="images/sub_images/company_login.png"></a>
             </div>
            <p style="margin-top:10px; margin-left:5px; text-align:right"> <a href="#" style="color:#308baa">�������룿</a></p>

            </div>
          </div>
          <div class="call_table">
            <br>
          	   <font class="container_news_dongtai">
          	      <a href="<%=basePath %>loginCheck.action"> <h3>��������ԤԼ </h3></a>
          	   </font> 
          	<!--<img src="images/sub_images/call_number.jpg" /> -->
          	<a href="<%=basePath %>loginCheck.action"><img src="images/sub_images/call_number.jpg" /></a>
          	
          </div>
           <!--
          <div class="call_table">
          	<a href="<%=basePath %>loginCheck.action"><img src="images/sub_images/call_number.jpg" /></a>
          </div>
           
          <div class="container_connect"><a href="<%=basePath %>consult.jsp"><img src="images/sub_images/connect.png" /></a></div>
         -->
       </div>
	   <div class="container_right">
	   <div class="container_about_health">
        <a href="<%=basePath %>jkzx.action?newstype=1"><img src="images/sub_images/13728364327526.jpg" /></a>&nbsp;&nbsp;&nbsp;
        <strong>
                      ���ڽ���
        </strong>
        </span>
        <p class="p_indent">
            <div id="show1" align="left">
            
                    <!-- -->
                                                                  ������ָһ���������塢��������ȷ��涼�������õ�״̬����ͳ�Ľ�������"�޲�������"���ִ��˵Ľ����������彡��������������֯���"��������������û�м�������Ҫ�߱��������������Ӧ���ú��е���"����ˣ��ִ��˵Ľ������ݰ��������彡���������������齡������ὡ�����������������½��������������ȡ�
             </div> 
         </p>           
     </div>
     
	   <div class="container_health_consultation"> 
	   <a href="<%=basePath %>jkzx.action?newstype=2"><img src="images/sub_images/13728364497608.jpg"/></a>
	   &nbsp;&nbsp;&nbsp;
	   <strong>������ѯ </strong>
       <p class="p_indent">
          <div id="show2"  align="left">
       
                    <!-- -->
                                                         ������ָһ���������塢��������ȷ��涼�������õ�״̬����ͳ�Ľ�������"�޲�������"���ִ��˵Ľ����������彡��������������֯���"��������������û�м�������Ҫ�߱��������������Ӧ���ú��е���"����ˣ��ִ��˵Ľ������ݰ��������彡���������������齡������ὡ�����������������½��������������ȡ�
	      </div>
	     </p>
	   </div>
	               
	   <div class="container_health_body"> 
	   <a href="<%=basePath %>jkzx.action?newstype=3">
	   <img src="images/sub_images/13728365222057.jpg" /></a>&nbsp;&nbsp;&nbsp;
	   <strong> ��������  </strong>
       <p class="p_indent">
	       <div id="show3"  align="left">
	       
	                    <!-- -->
	                    ������ָһ���������塢��������ȷ��涼�������õ�״̬����ͳ�Ľ�������"�޲�������"���ִ��˵Ľ����������彡��������������֯���"��������������û�м�������Ҫ�߱��������������Ӧ���ú��е���"����ˣ��ִ��˵Ľ������ݰ��������彡���������������齡������ὡ�����������������½��������������ȡ��������˵Ļ���Ȩ��
	       </div>
       </p>
       </div>
       <div id="clear"></div>

 <div class="container_news_dongtai">
     <div style="float:left; width:200px;">
     <h3> ��ҵ��̬   </h3>
          <a href="<%=basePath %>jkzx.action?newstype=4">
          <img class="img_style" src="images/sub_images/news_t.png" />
          </a>
     </div>
         <div style="float:left;margin-left:20px; margin-top:20px;text-align:left">
         <ol>
          	<div id="show4"  align="left"></div>
        
          </ol>
          </div>
 </div>

          <div class="container_yangshen_serverce">
          <div style="float:left; width:200px;">
          <h3>����ʳ��</h3>
          <a href="<%=basePath %>jkzx.action?newstype=5"><img class="img_style" src="images/sub_images/ys_t.png"/></a>
          </div>
         <div style="float:left; margin-left:20px;margin-top:20px;text-align:left">
         <ol>
          <div id="show5"  align="left"></div>
          
          <!--  
          <li><a href="#">"����󽡿�.�����й�.��֮��"��������</a></li>
          <li><a href="#"> �����й������ҵ�쵼�ߵ����� ����"����󽡿��ذ�����"��ʽ����</a></li>
          <li><a href="#">"���ķ��񣬽���ÿ��" ��������󽡿���ҵ����2014����ȹ�������������Բ����Ļ</a></li>
          <li><a href="#">Ѱ�ҽ������µĴ�ҵ֮·</a></li>
          <li><a href="#">"����󽡿�.�����й�.��֮��"��������</a></li>
          <li><a href="#"> �����й������ҵ�쵼�ߵ����� ����"����󽡿��ذ�����"��ʽ����</a></li>
          <li><a href="#">"���ķ��񣬽���ÿ��" ��������󽡿���ҵ����2014����ȹ�������������Բ����Ļ</a></li>
          <li><a href="#">Ѱ�ҽ������µĴ�ҵ֮·</a></li>
          -->
          </ol>
          </div>
	   </div>

<script language="JavaScript"> 
//������
function getNews(){
    //URLδβҪ�Ӹ�������������������ٴ��ύ, encodeURI(encodeURI(hiddenValue)) �����java����2�δ����Ӧ����ֹajax������������
    //var url = '<%=basePath %>T_newsFindList.action?time='+Math.random()+'&newstype='+newstype;
    var url = '<%=basePath %>T_newsFindList.action?time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content =""; // "userName=" + name; telΪΨһ������������̨���У������첽��ѯȥ��̨ȡֵ���Ǹ���telֵȥȡ�ġ�
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT", getNewsResults1 );	
        
}                 

//rs1: ��ӴӺ�̨ȡ������ѯ���ػش���Ϣ����Ϣ��ʾ������ʾ����Ϣ��ʾ����      
function getNewsResults1(){
  //alert("------����getNewsResults------");
  if( http_request.readyState == 4) {
     // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
     if(http_request.status == 200) {                
           //var returnMessage = http_request.responseText;  
    	   //var show1 = document.getElementById("show1");
           var show1NewsList = "";
           var show2NewsList = "";
           var show3NewsList = "";
           var show4NewsList = "";
           var show5NewsList = "";

           var returnMessage = http_request.responseXML.getElementsByTagName("result");
           //alert(returnMessage.length);
 
 		   for(var i = 0; i < returnMessage.length; i++) {
			      if(returnMessage!=null&&returnMessage.length!=0){	
			    	  var newstype= returnMessage[i].getAttribute("newstype");
			    	  var newsid = returnMessage[i].getAttribute("id");
			    	  var newstitle = returnMessage[i].getAttribute("title") ;
			    	  //alert(newstitle+';'+newstype);
			    	  var content = returnMessage[i].firstChild.nodeValue ;
			    	  if(newstype=='1'){
			    	  	show1NewsList = show1NewsList +"<li><a href='<%=basePath%>syFindById.action?newstype=1&id="+newsid+"' target='blank'>"+newstitle+"</a></li>";			    	  
			          }
			    	  else if(newstype=='2'){
				    	  	show2NewsList = show2NewsList +"<li><a href='<%=basePath%>syFindById.action?newstype=2&id="+newsid+"' target='blank'>"+newstitle+"</a></li>";			    	  
				      }
			    	  else if(newstype=='3'){
				    	  	show3NewsList = show3NewsList +"<li><a href='<%=basePath%>syFindById.action?newstype=3&id="+newsid+"' target='blank'>"+newstitle+"</a></li>";			    	  
				      }
			    	  else if(newstype=='4'){
				    	  	show4NewsList = show4NewsList +"<li><a href='<%=basePath%>syFindById.action?newstype=4&id="+newsid+"' target='blank'>"+newstitle+"</a></li>";			    	  
				      }
			    	  else if(newstype=='5'){
				    	  	show5NewsList = show5NewsList +"<li><a href='<%=basePath%>syFindById.action?newstype=5&id="+newsid+"' target='blank'>"+newstitle+"</a></li>";			    	  
				      }
			    	 
			      }
		   } 
		   //alert(showNewsList);
		   
		   document.getElementById("show1").innerHTML = show1NewsList;
		   document.getElementById("show2").innerHTML = show2NewsList;
		   document.getElementById("show3").innerHTML = show3NewsList;
		   document.getElementById("show4").innerHTML = show4NewsList;
		   document.getElementById("show5").innerHTML = show5NewsList;
		   
		   //alert("���!");
        } //end 200;
        else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }  
		   
    } //end 400;
}
</script>
<script>
getNews();
</script>	   
	   
	   <div class="container_buttom"> 
           <div class="container_buttom_left">
           <h3>��������</h3>
           <p class="p_indent">�Ϻ���̽����������޹�˾������2012�꣬��һ����"רҵ��רע��ר��"Ϊ����ĵ�������������˾����˾����Կͻ�Ϊ�����ṩ���Ի��������񡢽�����������������������ҽ�����ɫ��ҽͨ�������ṩ��ɫ����ʳƷ����ɫ���ղ�Ʒ����̽�����ּ��Ϊ�ͻ��ṩȫ��λ�Ľ����������"��̽��������һ����"</p>
           </div>
           <div class="container_buttom_middle"><h3>���ǵķ���</h3>

							<div class="hospital">
								<ul class="tijian health" style="list-style:none;">
																	<li><a href="<%=basePath %>medical.jsp?id=1">��ְ���</a></li>
																	<li><a href="<%=basePath %>medical.jsp?id=7">������</a></li>
																	<li><a href="<%=basePath %>medical.jsp?id=3">��ҵ�������</a></li>
																	<li><a href="<%=basePath %>medical.jsp?id=4">�߶����</a></li>
																	
								</ul>
								<div class="line">
							</div>
								<ul class="guanli health" style="list-style:none;">
																		<li><a href="<%=basePath %>management.jsp?id=1">��������</a></li>
																		<li><a href="<%=basePath %>management.jsp?id=2&cid=1">��������</a></li>
																		<li><a href="<%=basePath %>management.jsp?id=3">������Ԥ</a></li>
																		<li><a href="<%=basePath %>management.jsp?id=4">��������</a></li>
																	
								</ul>
								<div class="line">
							</div>
								<ul class="xiezhu health" style="list-style:none;">
																		<li><a href="<%=basePath%>gryyFind.action">����ԤԼ</a></li>
																		<li><a href="<%=basePath%>tjbgxzFind.action">��������</a></li>
																		<li><a href="<%=basePath%>crops1.jsp">��ɫũ��Ʒ</a></li>
																		<li><a href="<%=basePath%>vip.jsp">��Աר��</a></li>
																	
								</ul>
           </div></div>
           <div class="container_buttom_right"><h3><a href="<%=basePath %>aboutus.jsp?id=9">�������</a></h3>
           <div class="hospitals">
            <ul style="list-style:none" class="compay_img">
            <li><a href="http://www.jingkang.net.cn/" target="_blank"><img src="uploads/product/20140809/13723213161334.jpg" height="40" width="90" /></a></li>
            <li><img src="uploads/product/20140809/13723213785272.jpg" height="40" width="90" /></li>
            <li><a href="http://www.huashan.org.cn/" target="_blank"><img src="uploads/product/20140809/13723252663785.jpg" height="40" width="90"/></a></li>
            <li><img src="uploads/product/20140809/akgb.jpg" height="40" width="90" /></li>
            </ul>
			<ul style="list-style:none" class="compay_img">
            <li><img src="uploads/product/20140809/13723215474087.jpg" height="40" width="90" /></li>
            <li><a href="http://www.ciming.com" target="_blank"><img src="uploads/product/20140809/13723214799147.jpg" height="40" width="90" /></a></li>
            <li><img src="uploads/product/20140809/13723212333908.jpg" height="40" width="90"/></li>
            <li><img src="uploads/product/20140809/rmtj.jpg" height="40" width="90" /></li>
            </ul>
            </div>	  
           </div>
       <div id="clear"></div>
          </div>
	   </div>
	</div>
	<div id="clear"></div>
       <%//@include file="footer.jsp" %>	
       
	<div class="bottom">
        	<div class="bottom_son">
            	<div class="logo2">
                </div>
                <div class="friend" style="font-size:12px">
                	<div class="l_f" >
                        <a href="<%=basePath%>aboutus.jsp?id=1">��������</a>&nbsp;|
                        <a href="<%=basePath%>aboutus.jsp?id=9">��������</a>&nbsp;|
                        <a href="<%=basePath%>aboutus.jsp?id=10">��ƸӢ��</a>&nbsp;|
                        <!-- <a href="appointment.php">��ҵ�ͻ�ԤԼר��</a>&nbsp;| -->
                        <a href="<%=basePath%>aboutus.jsp?id=8">��ϵ����</a>&nbsp;||
                    </div>
                    <a href="#"><span></span></a>
                    <div id="clear"></div>
                   copyright@2014�Ϻ���̽����������޹�˾ ��ICP��10030 ��
                </div>
                <div class="fenxiang">
                   <a href="<%=basePath%>aboutus.jsp?id=8" target="_self"><img src="images/jcewm.png" width="50" height="50" /></a>
                    <a href="<%=basePath%>aboutus.jsp?id=8" target="_self"><img src="images/jcewm2.png"  width="50" height="50" /></a>
                </div>
		
            </div>
	  
        </div>    	
    </div>
    </body>
</html>
