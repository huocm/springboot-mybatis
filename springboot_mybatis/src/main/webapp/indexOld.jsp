<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>
<%
String path2 = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path2+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>金程健康_全方位健康管理解决服务商</title> 
<meta name="keywords" content="体检,金程健康体检,体检中心,健康体检,健康管理,金程健康" /> 
<meta name="description" content="金程健康体检中心是全国领先的体检中心，是健康体检、健康促进、就医保障和私人保健医生等健康管理服务的集成商;提供健康体检(男体检/女性体检)、健康管理、企业员工体检等全方位健康管理服务。" />
		<script type="text/javascript" charset="utf-8">
		function change(){
				var main=document.getElementById("banner");
				var winH=document.documentElement.clientWidth;
				var divH=1600;
				var fh=(winH-divH)/2;
				main.style.marginLeft=fh+'px';
			}
			window.onload=change;
			window.onresize=change;  
		</script>
    </head>
    <body  >
    <div class="container">
    
 	<%@include file="header.jsp" %>	
<script type="text/javascript" src="js/sub_js/jquery.lazyload.js"></script>
<script type="text/javascript">
	$(document).ready(
	function($){
	$("img").lazyload({
		 //threshold : 200 ,
	     placeholder : "images/sub_images/grey.gif", //加载图片前的占位图片
	     effect      : "fadeIn" //加载图片使用的效果(淡入)
	});
	});
</script>
            
        <div class="banner" id="banner">
		  <div id="yc-mod-slider">
		    <div class="wrapper">
              <div id="slideshow" class="box_skitter fn-clear">
                <ul style="list-style:none;">
                                    <li><img  class="cubeRandom" src="<%=basePath %>uploads/product/20140809/1.jpg" width="1600" height="400" /></li>
									<li><img  class="cubeRandom" src="<%=basePath %>uploads/product/20140809/2.jpg" width="1600" height="400" /></li>
				                    <li><img  class="cubeRandom" src="<%=basePath %>uploads/product/20140809/3.jpg" width="1600" height="400" /></li>
				                    <li><img  class="cubeRandom" src="<%=basePath %>uploads/product/20140809/4.jpg" width="1600" height="400" /></li>
				                    <li><img  class="cubeRandom" src="<%=basePath %>uploads/product/20140809/5.jpg" width="1600" height="400" /></li>
				                    <li><img  class="cubeRandom" src="<%=basePath %>uploads/product/20140809/6.jpg" width="1600" height="400" /></li>
                </ul>
              </div>
		      <script type="text/javascript" src="<%=basePath %>js/sub_js/slideshow.js"></script>
            </div>
		  </div>        
        </div>
        
        <div class="banner_bott_bg">	
        </div>
        <div id="clear"></div>
		<div class="bara">
			<div class="bar">
							<a href="<%=basePath %>aboutus.jsp?id=2"></a>
							<a href="<%=basePath %>aboutus.jsp?id=3"></a>
							<a href="<%=basePath %>aboutus.jsp?id=4"></a>
							<a href="<%=basePath %>aboutus.jsp?id=5"></a>
							<a href="<%=basePath %>aboutus.jsp?id=6"></a>
							<a href="<%=basePath %>aboutus.jsp?id=7"></a>
						<a href="#" style="width:110px"></a>
			<a href="<%=basePath %>gryyFind.action" style="width:150px"></a>			</div>
		</div>
        <div class="s_container">
            <div class="midd1 l_f mg">
                <div class="news">
                    <h2><span style=" color:#57b14e">我们的服务</span><a href="<%=basePath%>gryyFind.action"></a></h2>
                    <div class="news_list">
						<div class="news_list_son">
							<img src="<%=basePath %>images/sub_images/map.jpg" style="padding-left:5px"/>
							<dl>
								<dt>全方位的医疗解决方案</dt>
								<dd>借鉴国外先进的健康管理理念，针对大众对健康服务的需求...</dd>
							</dl>
							<div id="clear"></div>
							<div class="hospital">
								<ul class="tijian health" style="list-style:none;">
																	<li><a href="<%=basePath %>medical.jsp?id=1">入职体检</a></li>
																	<li><a href="<%=basePath %>medical.jsp?id=2">专项体检</a></li>
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
																		<li><a href="<%=basePath%>vip.jsp">vip专区</a></li>
																	
								</ul>


							</div>
                        </div>
                    </div>
                </div>
                <div class="news_bott_bg">
                </div>
            </div>

<script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
<script language="JavaScript"> 
//请求函数
function getNews(){
        //URL未尾要加个随机数，以免请求不能再次提交, encodeURI(encodeURI(hiddenValue)) 与后面java类中2次处理对应，防止ajax传递中文乱码
    var url = '<%=basePath %>T_newsFindList.action';
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name; tel为唯一随机数，存入后台表中，下面异步轮询去后台取值就是根据tel值去取的。
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT", getNewsResults );
}                                                                                                                                                                                                                                                                                                              
       
//添加从后台取到的咨询返回回答信息到信息显示区域，显示在信息显示区域。      
function getNewsResults(){
  //alert("------进入getNewsResults------");
  if( http_request.readyState == 4) {
     // 信息已经成功返回，开始处理信息
     if(http_request.status == 200) {                
           //var returnMessage = http_request.responseText;  
    	   var showNews = document.getElementById("showNews");
           var showNewsList = "";

           var returnMessage = http_request.responseXML.getElementsByTagName("result");
           //alert(returnMessage.length);
 
 		   for(var i = 0; i < returnMessage.length; i++) {
			      if(returnMessage!=null&&returnMessage.length!=0){	
			    	  var newsid = returnMessage[i].getAttribute("id");
			    	  var newstitle = returnMessage[i].firstChild.nodeValue ;
			    	  showNewsList = showNewsList +"<li><a href='<%=basePath%>jsz.jsp?id="+newsid+"' target='blank'>"+newstitle+"</a></li>";			    	  
			      }
		   } 
		   //alert(showNewsList);
		   
		   document.getElementById("showNews").innerHTML = showNewsList;
           //alert("完毕!");
        } //end 200;
        else { //页面不正常
            alert('您所请求的页面有异常');
        }  
		   
    } //end 400;
}
</script>
            
            <div class="midd1 l_f">
                <div class="news">
                    <h2><span>新闻动态</span><a href="#"></a></h2>
                    <div class="news_list">
						<div class="news_list_son">
							<a href="#" ><img src="<%=basePath %>uploads/product/20140809/14062683877804_s.jpg" class="mg_left" width="107" height="66"/></a>
							<dl>
								<a href="#" ><dt>健康大讲堂</dt>
								<dd>.....</dd></a>
							</dl>
							<div id="clear"></div>
							<ul  class="detailed" style="list-style:none;">
							<div id="showNews"></div>
															<!-- <li><span>06-25</span><a href="<%=basePath %>jsz.jsp?id=4&nid=856">金程健康开展健康大讲堂</a></li>
															<li><span>06-11</span><a href="<%=basePath %>jsz.jsp?id=4&nid=791">健康沙龙</a></li>
															<li><span>05-06</span><a href="<%=basePath %>jsz.jsp?id=4&nid=766">公告！公告！</a></li>
															<li><span>04-27</span><a href="<%=basePath %>jsz.jsp?id=4&nid=723">中药讲座和膏方、调理服务</a></li>
															<li><span>03-11</span><a href="<%=basePath %>jsz.jsp?id=4&nid=710">金程健康讲座走进大学</a></li>
															<li><span>02-25</span><a href="<%=basePath %>jsz.jsp?id=4&nid=707">金程专题体检门店达200余家</a></li>
								 -->
							</ul>
						</div>
                    </div>
                </div>
                <div class="news_bott_bg">
                </div>
            </div>
            
            <div class="midd1 r_f">
                <div class="news">
                    <h2><span>合作机构</span><a href="<%=basePath %>aboutus.jsp?id=9"></a></h2>
                    <div class="news_list">
                    	<div class="small_banner">
							<a href="aboutus.jsp?id=9"><img src="<%=basePath %>images/sub_images/small_banner1.jpg" style="float:left;margin-bottom:10px;"/></a>
														<a href="http://www.huashan.org.cn/" target="_blank"><img class="panner" src="<%=basePath %>uploads/product/20140809/13723252663785.jpg" style="float:left;margin-bottom:10px;margin-left:12px;border:#DCDCDC solid 1px" width="144" height="41"/></a>
														<a href="http://www.6thhosp.com/1.asp" target="_blank"><img class="panner" src="<%=basePath %>uploads/product/20140809/13723212333908.jpg" style="float:left;margin-bottom:10px;margin-left:12px;border:#DCDCDC solid 1px" width="144" height="41"/></a>
														<a href="http://www.jingkang.net.cn/" target="_blank"><img class="panner" src="<%=basePath %>uploads/product/20140809/13723213161334.jpg" style="float:left;margin-bottom:10px;margin-left:12px;border:#DCDCDC solid 1px" width="144" height="41"/></a>
														<a href="http://www.health-100.cn/" target="_blank"><img class="panner" src="<%=basePath %>uploads/product/20140809/13723213785272.jpg" style="float:left;margin-bottom:10px;margin-left:12px;border:#DCDCDC solid 1px" width="144" height="41"/></a>
														<a href="http://www.ciming.com/" target="_blank"><img class="panner" src="<%=basePath %>uploads/product/20140809/13723214799147.jpg" style="float:left;margin-bottom:10px;margin-left:12px;border:#DCDCDC solid 1px" width="144" height="41"/></a>
														<a href="http://www.rich-healthcare.com/" target="_blank"><img class="panner" src="<%=basePath %>uploads/product/20140809/13723215474087.jpg" style="float:left;margin-bottom:10px;margin-left:12px;border:#DCDCDC solid 1px" width="144" height="41"/></a>
					  </div>
                    </div>
                </div>
                <script type="text/javascript">
                $(".panner:even").removeAttr('style','margin-left:12px')
                </script>
                <div class="news_bott_bg">
                </div>
            </div>
			<div id="clear"></div>
			<div class="midd_bott">
					<div class="midd2 bgd1">
						<h2><span><a href="<%=basePath %>crops1.jsp"  target="_blank">健康食品服务</a></span></h2>
						<span><a href="<%=basePath %>crops1.jsp"">金程健康开办了自主品牌800余亩有机农场，为客户提供更好的健康服务！</a></span>
					</div>
					<div class="midd2 bgd2">
						<h2><span><a href="<%=basePath %>consult.jsp">健康资讯</a></span></h2>
						<span><a href="<%=basePath %>consult.jsp">更多权威的内容，丰富的资讯尽在健康资讯中心</a></span>
					</div>
					<div class="midd2 bgd3" style="float:right;">
						<h2><span><a href="<%=basePath %>aboutus.jsp?id=2">关于我们</a></span></h2>
						<span><a href="<%=basePath %>aboutus.jsp?id=2">让每位朋友展现出健康的微笑让每次关心传递到世界</a></span>
					</div>
		  </div>
            <div id="clear"></div>
        </div>
		
	</div>
	<div id="clear"></div>
 	<%@include file="footer.jsp" %>	
	
    </div>
    </body>
</html>	
<script>
getNews();
</script>