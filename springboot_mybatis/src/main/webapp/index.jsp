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
		<title>金程健康_全方位健康管理解决服务商</title> 
<meta name="keywords" content="体检,金程健康体检,体检中心,健康体检,健康管理,金程健康" /> 
<meta name="description" content="金程健康体检中心是全国领先的体检中心，是健康体检、健康促进、就医保障和私人保健医生等健康管理服务的集成商;提供健康体检(男体检/女性体检)、健康管理、企业员工体检等全方位健康管理服务。" />
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

		//会员以实物卡号方式登录
		 function checkMemberCard(){
			        //alert("登录验证开始");
		            var membernameCard = $("#membernameCard").val();
		            if (membernameCard == ''||membernameCard=="输入登录账号") {
		                alert("登录账号不能为空!");
		                $("#membernameCard").focus();
		                return false;
		            }
		            var memberpasswordCard = $("#memberpasswordCard").val();
		            if (memberpasswordCard == ''||memberpasswordCard=="输入密码") {
		                alert("密码不能为空!");
		                $("#memberpasswordCard").focus();
		                return false;
		            }

		            //var yzm = $("#yzm").val();
		            //alert(yzm);
		            //if (yzm == '') {
		            //    alert("验证码不能为空!");
		            //    $("#yzm").focus();
		            //    return false;
		            //}
		            
		            form1.action="<%=basePath%>syMemberCardLogin.action?flag=member&type=card";
		            //alert("------------111111111111--------------------");
		            form1.submit();
		            //alert("------------222222222222222--------------------");
		  } //end checkCustomer;    
		    

//提示操作结果
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
					<a href="<%=basePath %>login2.jsp" target="_self">&nbsp;企业客户登录</a> &nbsp;|&nbsp;
					<a href="<%=basePath %>login.jsp" target="_self">&nbsp;体检卡入口</a> &nbsp;|&nbsp;
					<a href="<%=basePath %>login4.jsp" target="_self">&nbsp;企业HR入口</a> &nbsp;|&nbsp;
					
		<%}else{ %>
					
					 您好，<%=request.getSession().getAttribute("customerName") %>！
					<a href="<%=basePath %>signoffAction.action" target="_self">&nbsp; 安全退出  &nbsp;|&nbsp;</a>
					<a href="<%=basePath %>changePassword2.jsp" target="_self">&nbsp; 修改密码  &nbsp;|&nbsp;</a>
		<%} %>
					<a href=# onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=basePath %>');">&nbsp;设为首页&nbsp;&nbsp;|&nbsp;</a>
					<a href="javascript:window.external.AddFavorite('<%=basePath %>','金程健康')">&nbsp;收藏本站&nbsp;&nbsp;|&nbsp;</a>
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
            	<li><a href="<%=basePath%>index.jsp" style="height:48px;line-height:48px;">首页</a></li>								
                <li><a href="<%=basePath%>medical.jsp" style="height:48px;line-height:48px;">健康体检</a>
					<ul>
											<li><a href="<%=basePath%>medical.jsp?id=1"><span>入职体检</span></a></li>
									
											<li><a href="<%=basePath%>medical.jsp?id=3"><span>企业福利体检</span></a></li>
											<li><a href="<%=basePath%>medical.jsp?id=4"><span>高端体检</span></a></li>
											<li><a href="<%=basePath%>medical.jsp?id=5"><span>金程健康体检卡</span></a></li>
											
											<li><a href="<%=basePath%>medical.jsp?id=7"><span>基因检测</span></a></li>
						
					</ul>
				</li>								
                <li><a href="<%=basePath%>management.jsp?id=1" style="height:48px;line-height:48px;">健康管理</a>
                	<ul>
												<li><a href="<%=basePath%>management.jsp?id=1"><span>健康档案</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=2&cid=1"><span>健康评估</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=3"><span>健康干预</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=4"><span>健康教育</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=5"><span>健康咨询</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=6"><span>私人医生</span></a></li>
											</ul>
                </li>
                <li><a href="<%=basePath%>jkzx.action?newstype=1" style="height:48px;line-height:48px;">健康在线</a>
					<ul>
												<li><a href="<%=basePath%>jkzx.action?newstype=1"><span>关于健康</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=2"><span>健康咨询</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=3"><span>健康养生</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=4"><span>行业动态</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=5"><span>健康食谱</span></a></li>
												
											</ul>
				</li>

                <li><a href="<%=basePath%>crops1.jsp" style="height:48px;line-height:48px;">绿色农产品</a>
                	<ul>
												<li><a href="<%=basePath%>crops1.jsp"><span>绿色大米</span></a></li>
												
											</ul>
                </li>
                <li><a href="<%=basePath%>aboutus.jsp" style="height:48px;line-height:48px;">关于金程</a>
					<ul>
											<li><a href="<%=basePath %>aboutus.jsp?id=1"><span>公司简介</span></a></li>
											<li><a href="<%=basePath %>aboutus.jsp?id=9"><span>合作机构</span></a></li>

											<li><a href="<%=basePath %>aboutus.jsp?id=4"><span>服务优势</span></a></li>
											<li><a href="<%=basePath %>aboutus.jsp?id=5"><span>资源优势</span></a></li>
											<li><a href="<%=basePath %>aboutus.jsp?id=6"><span>系统平台</span></a></li>
			
											<li><a href="<%=basePath %>aboutus.jsp?id=10"><span>人才招聘</span></a></li>																	
											<li><a href="<%=basePath %>aboutus.jsp?id=8"><span>联系我们</span></a></li>
					</ul>
				</li>
                <li><a href="<%=basePath%>gryyFind.action" style="height:48px;line-height:48px;">会员专区</a>
                	<ul>
												<li><a href="<%=basePath%>gryyFind.action"><span>在线预约</span></a></li>
												<li><a href="<%=basePath%>tjbgxzFind.action"><span>体检报告下载</span></a></li>
												<li><a href="<%=basePath%>vip.jsp?id=4"><span>VIP专享服务</span></a></li>
											</ul>
                </li>
				<li><a href="<%=basePath%>consult.jsp" style="height:48px;line-height:48px;">在线咨询</a>
                </li>
            </ul>
        </div>
        
        
        <div id="clear"></div>
       <div class="s_container">
	   <div class="container_left">
          <div class="login_table">
            <div class="table1" >
            <form name="form1"   method="post"> 
            <div style="float:left; width:115px; line-height:30px;height:30px;text-align:center;color:#5ca740"><strong><a onclick="show(1)" class="a_style">个人登录</a></strong></div>
            <div style="float:right;width:120px; line-height:25px; height:25px;text-align:center;color:#5ca740;  border:1px solid #dedfde;vertical-align: middle; border-top:medium none; border-right:medium none;"><a class="a_style" onclick="show(2)">企业/HR登录</a></div>
             <div id="clear"></div>
            <input type="text"  class="text" name="membernameCard"  maxlength="20"  id ="membernameCard"  onfocus="if(value=='输入登录账号'){this.style.color='#000';value=''}" onblur="if(value==''){this.style.color='#999';value='输入登录账号'}"" value="输入登录账号"/>
            <input  type="text" class="text" name="memberpasswordCard"   id = "memberpasswordCard"   onfocus="if(value=='输入密码'){this.style.color='#000';value=''}" onblur="if(value==''){this.style.color='#999';value='输入密码'}"" value="输入密码"/>
            
            <p style="margin-top:20px; margin-left:5px;"> <input  type="checkbox" value="自动登录"/>&nbsp;&nbsp;&nbsp;自动登录&nbsp;&nbsp;&nbsp; <a href="#" style="color:#308baa">忘记密码？</a></p>
             <!-- 
             <img name="" value=""   onclick=" checkMemberCard()"  src="<%=basePath %>images/sub_images/submit_button.png" style="-moz-opacity:1; filter:alpha(opacity=100);cursor:hand;" 
	                        onmouseover="this.style.MozOpacity=0.5;this.filters.alpha.opacity=50"
	                        onmouseout="this.style.MozOpacity=1;this.filters.alpha.opacity=100" />
	          -->           
            <img name="" value=""  onclick=" checkMemberCard()"  class="login_button"  src="images/sub_images/submit_button.png">
             </form>  
            </div>
			<div class="table2" style="display:none">
            <div style="border:1px solid #dedfde;border-top:medium none; border-left:medium none;float:left; width:115px; line-height:30px;height:30px;text-align:center;color:#5ca740"><a class="a_style" onclick="show(1)">个人登录</a></div>
            <div style="float:right;width:120px; line-height:25px; height:25px;text-align:center;color:#5ca740;  vertical-align: middle;" ><a onclick="show(2)" class="a_style"><strong>企业/HR登录</strong></a></div>
             <div id="clear"></div>
             <div style="padding:8px; margin-top:30px;">
                <a href="<%=basePath %>login2.jsp"><image  src="images/sub_images/hr_login.png"></a>
             	<a href="<%=basePath %>login4.jsp"><image style="margin-top:20px;"  src="images/sub_images/company_login.png"></a>
             </div>
            <p style="margin-top:10px; margin-left:5px; text-align:right"> <a href="#" style="color:#308baa">忘记密码？</a></p>

            </div>
          </div>
          <div class="call_table">
            <br>
          	   <font class="container_news_dongtai">
          	      <a href="<%=basePath %>loginCheck.action"> <h3>个人在线预约 </h3></a>
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
                      关于健康
        </strong>
        </span>
        <p class="p_indent">
            <div id="show1" align="left">
            
                    <!-- -->
                                                                  健康是指一个人在身体、精神和社会等方面都处于良好的状态。传统的健康观是"无病即健康"，现代人的健康观是整体健康，世界卫生组织提出"健康不仅是躯体没有疾病，还要具备心理健康、社会适应良好和有道德"。因此，现代人的健康内容包括：躯体健康、心理健康、心灵健康、社会健康、智力健康、道德健康、环境健康等。
             </div> 
         </p>           
     </div>
     
	   <div class="container_health_consultation"> 
	   <a href="<%=basePath %>jkzx.action?newstype=2"><img src="images/sub_images/13728364497608.jpg"/></a>
	   &nbsp;&nbsp;&nbsp;
	   <strong>健康咨询 </strong>
       <p class="p_indent">
          <div id="show2"  align="left">
       
                    <!-- -->
                                                         健康是指一个人在身体、精神和社会等方面都处于良好的状态。传统的健康观是"无病即健康"，现代人的健康观是整体健康，世界卫生组织提出"健康不仅是躯体没有疾病，还要具备心理健康、社会适应良好和有道德"。因此，现代人的健康内容包括：躯体健康、心理健康、心灵健康、社会健康、智力健康、道德健康、环境健康等。
	      </div>
	     </p>
	   </div>
	               
	   <div class="container_health_body"> 
	   <a href="<%=basePath %>jkzx.action?newstype=3">
	   <img src="images/sub_images/13728365222057.jpg" /></a>&nbsp;&nbsp;&nbsp;
	   <strong> 健康养生  </strong>
       <p class="p_indent">
	       <div id="show3"  align="left">
	       
	                    <!-- -->
	                    健康是指一个人在身体、精神和社会等方面都处于良好的状态。传统的健康观是"无病即健康"，现代人的健康观是整体健康，世界卫生组织提出"健康不仅是躯体没有疾病，还要具备心理健康、社会适应良好和有道德"。因此，现代人的健康内容包括：躯体健康、心理健康、心灵健康、社会健康、智力健康、道德健康、环境健康等。健康是人的基本权利
	       </div>
       </p>
       </div>
       <div id="clear"></div>

 <div class="container_news_dongtai">
     <div style="float:left; width:200px;">
     <h3> 行业动态   </h3>
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
          <h3>健康食谱</h3>
          <a href="<%=basePath %>jkzx.action?newstype=5"><img class="img_style" src="images/sub_images/ys_t.png"/></a>
          </div>
         <div style="float:left; margin-left:20px;margin-top:20px;text-align:left">
         <ol>
          <div id="show5"  align="left"></div>
          
          <!--  
          <li><a href="#">"美年大健康.完美中国.勇之队"宣告启程</a></li>
          <li><a href="#"> 践行中国体检行业领导者的责任 ——"美年大健康关爱基金"正式启动</a></li>
          <li><a href="#">"用心服务，健康每年" ——美年大健康产业集团2014半年度工作会议于西安圆满落幕</a></li>
          <li><a href="#">寻找健康大潮下的创业之路</a></li>
          <li><a href="#">"美年大健康.完美中国.勇之队"宣告启程</a></li>
          <li><a href="#"> 践行中国体检行业领导者的责任 ——"美年大健康关爱基金"正式启动</a></li>
          <li><a href="#">"用心服务，健康每年" ——美年大健康产业集团2014半年度工作会议于西安圆满落幕</a></li>
          <li><a href="#">寻找健康大潮下的创业之路</a></li>
          -->
          </ol>
          </div>
	   </div>

<script language="JavaScript"> 
//请求函数
function getNews(){
    //URL未尾要加个随机数，以免请求不能再次提交, encodeURI(encodeURI(hiddenValue)) 与后面java类中2次处理对应，防止ajax传递中文乱码
    //var url = '<%=basePath %>T_newsFindList.action?time='+Math.random()+'&newstype='+newstype;
    var url = '<%=basePath %>T_newsFindList.action?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name; tel为唯一随机数，存入后台表中，下面异步轮询去后台取值就是根据tel值去取的。
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT", getNewsResults1 );	
        
}                 

//rs1: 添加从后台取到的咨询返回回答信息到信息显示区域，显示在信息显示区域。      
function getNewsResults1(){
  //alert("------进入getNewsResults------");
  if( http_request.readyState == 4) {
     // 信息已经成功返回，开始处理信息
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
		   
		   //alert("完毕!");
        } //end 200;
        else { //页面不正常
            alert('您所请求的页面有异常');
        }  
		   
    } //end 400;
}
</script>
<script>
getNews();
</script>	   
	   
	   <div class="container_buttom"> 
           <div class="container_buttom_left">
           <h3>关于我们</h3>
           <p class="p_indent">上海金程健康管理有限公司成立于2012年，是一家以"专业、专注、专享"为理念的第三方健康管理公司。公司坚持以客户为导向，提供个性化的体检服务、健康管理档案、健康讲座、中医会诊、绿色就医通道、还提供绿色健康食品和特色保险产品。金程健康，旨在为客户提供全方位的健康管理服务。"金程健康，相伴一生。"</p>
           </div>
           <div class="container_buttom_middle"><h3>我们的服务</h3>

							<div class="hospital">
								<ul class="tijian health" style="list-style:none;">
																	<li><a href="<%=basePath %>medical.jsp?id=1">入职体检</a></li>
																	<li><a href="<%=basePath %>medical.jsp?id=7">基因检测</a></li>
																	<li><a href="<%=basePath %>medical.jsp?id=3">企业福利体检</a></li>
																	<li><a href="<%=basePath %>medical.jsp?id=4">高端体检</a></li>
																	
								</ul>
								<div class="line">
							</div>
								<ul class="guanli health" style="list-style:none;">
																		<li><a href="<%=basePath %>management.jsp?id=1">健康档案</a></li>
																		<li><a href="<%=basePath %>management.jsp?id=2&cid=1">健康评估</a></li>
																		<li><a href="<%=basePath %>management.jsp?id=3">健康干预</a></li>
																		<li><a href="<%=basePath %>management.jsp?id=4">健康教育</a></li>
																	
								</ul>
								<div class="line">
							</div>
								<ul class="xiezhu health" style="list-style:none;">
																		<li><a href="<%=basePath%>gryyFind.action">在线预约</a></li>
																		<li><a href="<%=basePath%>tjbgxzFind.action">报告下载</a></li>
																		<li><a href="<%=basePath%>crops1.jsp">绿色农产品</a></li>
																		<li><a href="<%=basePath%>vip.jsp">会员专区</a></li>
																	
								</ul>
           </div></div>
           <div class="container_buttom_right"><h3><a href="<%=basePath %>aboutus.jsp?id=9">合作伙伴</a></h3>
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
                        <a href="<%=basePath%>aboutus.jsp?id=1">关于我们</a>&nbsp;|
                        <a href="<%=basePath%>aboutus.jsp?id=9">友情链接</a>&nbsp;|
                        <a href="<%=basePath%>aboutus.jsp?id=10">诚聘英才</a>&nbsp;|
                        <!-- <a href="appointment.php">企业客户预约专区</a>&nbsp;| -->
                        <a href="<%=basePath%>aboutus.jsp?id=8">联系我们</a>&nbsp;||
                    </div>
                    <a href="#"><span></span></a>
                    <div id="clear"></div>
                   copyright@2014上海金程健康管理有限公司 沪ICP备10030 号
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
