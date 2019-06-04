<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head><link href="<%=basePath %>css/public.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/page.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath %>js/jquery-1.6.min.js" type="text/javascript"></script>
    
<title>意见反馈-健康管理软件,健康管理系统,健康管理平台,健康管理-上海金程健康管理有限公司</title>
<meta name="Keywords" content="上海金程健康管理,健康管理软件,健康管理系统,健康管理服务平台,上海健康管理系统,上海健康管理软件,上海健康管理系统,上海健康管理软件,健康管理,一站式健康管理平台,健康档案服务,建议,意见反馈"/>

<meta name="Description" content="金程是国内最早运用现代信息技术与医疗技术的健康管理机构，是国内现代健康科技领先的健康管理服务平台商。多年来一直专注于健康管理行业，通过创新健康管理技术与方式、整合行业资源、丰富健康管理产品与服务来满足广大群众的健康管理的需求，满足医疗机构、保险等金融机构及其他企业团体为客户提供更多增值服务的需求，助力国民实现健康自由。"/>
    <style type="text/css">
        #nav ul li a#page2 /*  此处pagex 与菜单中定义的要对应*/
        {
            -webkit-box-shadow: 3px 3px 5px #333;
            box-shadow: 3px -3px 5px #333;
            height: 35px;
            padding-top: 12px;
            background-color: #008000;  /*  原为00a0e9*/
            margin-top: 3px;
        }
        td
        {
            padding: 5px 0;
            line-height: 30px;
        }
    </style>

    <!--[if IE 6]>
    <script src="/js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
       EvPNG.fix('div, ul, img, li, input'); 
    </script>
    <![endif]-->
<title>

</title></head>
<body> 
    <!-- 登录、退出、登录后用户名显示 -->
    <div id="topNav" class="h-30 bg-f0f0f0">
         <%@include file="banner.jsp" %>   
    </div>      
    <!-- logo -->
    <div id="header" class="w-1200">
        <img src="<%=basePath %>images/logo.png" class="float-l" />
    </div>
    
    <!-- 导航菜单 -->
    <div id="nav" class="relative w-1200">
 		<%@include file="header.jsp" %>  
    </div>
    
    <!-- 
    <div class="h-20">
    </div>
     -->
    <div id="dcontent" class="w-1200 m-b20 align-l" style="">
    <table>
    	<tr>
        	<td colspan="2"> 
        		<img src="<%=basePath %>images/gslxfs.png" width="1024"/>
    		</td>
    	</tr>

    	<tr>
        	<td><img src="<%=basePath %>images/gskh.png" width="512"  height="650" /></td>
        	<td><img src="<%=basePath %>images/gshzhb.png" width="512"  height="650" /></td>
    	</tr>

        
    </table>       
        <dl class="m-b20">
            <!-- <img src="<%=basePath %>images/aboutUs.jpg" width="1024"/> -->
           
            <!--  <dt class="font-lh30 font-color-444">公司总部：</dt>
            <dd class="font-lh25">
                上海金程健康管理有限公司<br />
                地 址：上海静安区延平路121号三和大厦21楼D<br />
                邮 编：200040<br />
                客服热线：400-xxx-xxx<br />
                电 话：021-xxx xxxx<br />
                传 真：020-xxx xxxx<br />             
                <span style="color:#f00;">具体负责人：张经理；手机：；QQ：</span>
            </dd>-->
        </dl>
        <!--
        <table cellpadding="0" cellspacing="0" border="0">
            <tr> 
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;上海金程健康管理有限公司是一家从事保健养生咨询、健康咨询、健康评估等健康综合服务的第三方健康管理公司。<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“金色前程，健康一生”，进入21世纪，“有病早治、无病预防”的健康理念逐渐深入人心，从“患病求医”向“健康管理”的转变也已经成为现在世界医疗卫生体系的中心思想，在此背景下，国内最大的健康管理公司---上海金程健康管理有限公司应运而生。为了更好的实现国民健康的标准，我们结合了国内外先进的健康管理理念，整合了丰厚的医疗资源，提供了尖端的医疗技术、先进的检查方法、有序的健康管理模式、全面系统的健康管理。这为我们今后为国民做健康管理奠定了基础。我们坚持认为，健康管理需要一个长期的、有序的规范管理，是基于个人健康档案基础上的个体化健康事务管理服务，是建立在现代营养学和信息化管理技术模式上，从社会、心理、环境、营养、运动的角度来对每个人进行全面的健康保障服务。体检是健康管理的基础，健康评估是健康管理的重点，健康干预是健康管理的核心。一直以来的管理经验让我们深切体会到，给客户提供专业化的服务是我们成长的立足之本，因此，金程开展了全方位的健康管理服务：健康体检、检后解读、健康讲座、绿色就医通道、健康数据管理、健康保险的基础之上新增加了健康饮食管理、健康中医管理、健康运动管理、健康基因管理和健康心理管理。我们将以更加专业、全面的服务把“健康管理”的口号落实着地，真正做到“健康体检、健康管理一体化”，为您的健康尽我们的最大努力。                    
                </td>
            </tr>
        
        </table>-->
    </div>
    
    <div id="nav" class="relative w-1200">
 		<%@include file="footer.jsp" %>
    </div>  
 
 </body>
</html>
