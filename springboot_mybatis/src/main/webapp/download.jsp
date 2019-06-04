<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>
<%//@include file="sessionCustomerValidate.jsp" %>
<%@include file="taglibs.jsp" %>
<%
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>金程健康_健康体检_全方位健康管理解决服务商</title>
<meta name="keywords" content="体检,金程健康体检,体检中心,健康体检,健康管理,金程健康" />
<meta name="description" content="金程健康体检中心是全国领先的体检中心，是健康体检、健康促进、就医保障和私人保健医生等健康管理服务的集成商;提供健康体检(男体检/女性体检)、健康管理、企业员工体检等全方位健康管理服务。" />

		<link href="css/sub_css/jincheng.css" rel="stylesheet" type="text/css"/>
		<link href="css/sub_css/reservationform.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="content-type" content="text/html;charset=GBK"/>
   

    </head>
	
    <body>
       
        <%@include file="header.jsp" %>	
        
		<div class="list_banner" id="list_banner">
			<img src="<%=basePath %>images/sub_images/nban7.jpg"/>
		</div>
		<div class="list_banner_bg">
			<span class="home"><a href="<%=basePath%>index.jsp">首页</a>><a href="<%=basePath%>tjbgxzFind.action">会员专区</a>><a>体检报告下载</a></span>
			<div class="midd">

				<div class="midd_lef">

					<h2>会员专区</h2>
					<div class="list_hr" style="float:left;">
					</div>

					<div class="lis">
											<span><a href="<%=basePath%>gryyFind.action">在线预约</a></span>
											<span><a href="<%=basePath%>tjbgxzFind.action">体检报告下载</a></span>
											<span><a href="<%=basePath%>vip.jsp">VIP专享服务</a></span>
					
					</div>
					<div class="list_hr2" style="float:right;">

					</div>
					<div id="clear"></div>
				</div>
				<div class="midd_right">
					<!-- -->
					<div class="information">
					<h2>我的体检报告</h2>
					<div class="reservationForm">
<%
 if(request.getSession().getAttribute("flag")==null||request.getSession().getAttribute("flag").equals("")){
        	  //未登录
 %>
						   <ul>
							    <p class=" font-16 font-color-444 font-lh30"><br>请先登录，然后再使用该功能！<br></p>
						    </ul>  
         <%
          }else{
         %>     
         					 <ul>
							    <li class="width150px bold">姓&nbsp;&nbsp;名</li>
								<li class="width170px bold">体检报告生成时间</li>
								<li class="width220px bold">体检机构</li>
								<li class="width120px bold">操作（下载）</li>
						    </ul>
						   
                    <s:iterator value="paginationSupport.items" status="stuts">
							<ul>
							    <li class="width150px"> <s:property value="staffname" />  </li>
								<li class="width170px">  <s:date name="inserttime" nice="false" format="yyyy-MM-dd" />  </li>
								<li class="width220px">  ${company }  </li>
								<li class="width120px">  <a href='<%=basePath %>fileDownload?fileName=${imagename}' target="_blank"><img src='<%= basePath %>images/xiazai.png' border="0" alt="下载" title="下载"  height="15" >下载</a>&nbsp;  </li>
						    </ul>
					 </s:iterator>		
			
 <% }%> 						    
						    
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
