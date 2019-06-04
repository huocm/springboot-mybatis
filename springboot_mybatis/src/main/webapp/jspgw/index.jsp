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
        #nav ul li a#page1 /*  此处pagex 与菜单中定义的要对应*/
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

    <script type="text/javascript">
        function check() {
            var title = $("#tepy").val();
            if (title == '') {
                alert("主题不能为空!");
                return false;
            }
            var name = $("#name").val();
            if (name == '') {
                alert("姓名不能为空!");
                return false;
            }
            var content = $("#content").val();
            if (content == '') {
                alert("内容详情不能为空!");
                return false;
            }
            var checkcode = $("#checkcode").val();
            if (checkcode == '') {
                alert("验证码不能为空!");
                return false;
            }

        }
        //更新验证码
        function changeimg() {
            document.getElementById("codeimg").src = "validcode.aspx?" + Math.random();
        }
    </script>


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
        
    <div id="dcontent" class="w-1200 m-b20 align-l" style="">
       
        <img src="<%=basePath %>images/gsys.png" width="1024"/>        
       
    </div>

    <div id="nav" class="relative w-1200">
 		<%@include file="footer.jsp" %>
    </div> 
 
 </body>
</html>

