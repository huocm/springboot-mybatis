<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>
<%
String path2 = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path2+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>��̽���_ȫ��λ����������������</title> 
<meta name="keywords" content="���,��̽������,�������,�������,��������,��̽���" /> 
<meta name="description" content="��̽������������ȫ�����ȵ�������ģ��ǽ�����졢�����ٽ�����ҽ���Ϻ�˽�˱���ҽ���Ƚ����������ļ�����;�ṩ�������(�����/Ů�����)������������ҵԱ������ȫ��λ�����������" />
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
	     placeholder : "images/sub_images/grey.gif", //����ͼƬǰ��ռλͼƬ
	     effect      : "fadeIn" //����ͼƬʹ�õ�Ч��(����)
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
                    <h2><span style=" color:#57b14e">���ǵķ���</span><a href="<%=basePath%>gryyFind.action"></a></h2>
                    <div class="news_list">
						<div class="news_list_son">
							<img src="<%=basePath %>images/sub_images/map.jpg" style="padding-left:5px"/>
							<dl>
								<dt>ȫ��λ��ҽ�ƽ������</dt>
								<dd>��������Ƚ��Ľ������������Դ��ڶԽ������������...</dd>
							</dl>
							<div id="clear"></div>
							<div class="hospital">
								<ul class="tijian health" style="list-style:none;">
																	<li><a href="<%=basePath %>medical.jsp?id=1">��ְ���</a></li>
																	<li><a href="<%=basePath %>medical.jsp?id=2">ר�����</a></li>
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
																		<li><a href="<%=basePath%>vip.jsp">vipר��</a></li>
																	
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
//������
function getNews(){
        //URLδβҪ�Ӹ�������������������ٴ��ύ, encodeURI(encodeURI(hiddenValue)) �����java����2�δ����Ӧ����ֹajax������������
    var url = '<%=basePath %>T_newsFindList.action';
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
			    	  var newstitle = returnMessage[i].firstChild.nodeValue ;
			    	  showNewsList = showNewsList +"<li><a href='<%=basePath%>jsz.jsp?id="+newsid+"' target='blank'>"+newstitle+"</a></li>";			    	  
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
            
            <div class="midd1 l_f">
                <div class="news">
                    <h2><span>���Ŷ�̬</span><a href="#"></a></h2>
                    <div class="news_list">
						<div class="news_list_son">
							<a href="#" ><img src="<%=basePath %>uploads/product/20140809/14062683877804_s.jpg" class="mg_left" width="107" height="66"/></a>
							<dl>
								<a href="#" ><dt>��������</dt>
								<dd>.....</dd></a>
							</dl>
							<div id="clear"></div>
							<ul  class="detailed" style="list-style:none;">
							<div id="showNews"></div>
															<!-- <li><span>06-25</span><a href="<%=basePath %>jsz.jsp?id=4&nid=856">��̽�����չ��������</a></li>
															<li><span>06-11</span><a href="<%=basePath %>jsz.jsp?id=4&nid=791">����ɳ��</a></li>
															<li><span>05-06</span><a href="<%=basePath %>jsz.jsp?id=4&nid=766">���棡���棡</a></li>
															<li><span>04-27</span><a href="<%=basePath %>jsz.jsp?id=4&nid=723">��ҩ�����͸෽���������</a></li>
															<li><span>03-11</span><a href="<%=basePath %>jsz.jsp?id=4&nid=710">��̽��������߽���ѧ</a></li>
															<li><span>02-25</span><a href="<%=basePath %>jsz.jsp?id=4&nid=707">���ר������ŵ��200���</a></li>
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
                    <h2><span>��������</span><a href="<%=basePath %>aboutus.jsp?id=9"></a></h2>
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
						<h2><span><a href="<%=basePath %>crops1.jsp"  target="_blank">����ʳƷ����</a></span></h2>
						<span><a href="<%=basePath %>crops1.jsp"">��̽�������������Ʒ��800��Ķ�л�ũ����Ϊ�ͻ��ṩ���õĽ�������</a></span>
					</div>
					<div class="midd2 bgd2">
						<h2><span><a href="<%=basePath %>consult.jsp">������Ѷ</a></span></h2>
						<span><a href="<%=basePath %>consult.jsp">����Ȩ�������ݣ��ḻ����Ѷ���ڽ�����Ѷ����</a></span>
					</div>
					<div class="midd2 bgd3" style="float:right;">
						<h2><span><a href="<%=basePath %>aboutus.jsp?id=2">��������</a></span></h2>
						<span><a href="<%=basePath %>aboutus.jsp?id=2">��ÿλ����չ�ֳ�������΢Ц��ÿ�ι��Ĵ��ݵ�����</a></span>
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