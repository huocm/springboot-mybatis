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
    
<title>�������-�����������,��������ϵͳ,��������ƽ̨,��������-�Ϻ���̽����������޹�˾</title>
<meta name="Keywords" content="�Ϻ���̽�������,�����������,��������ϵͳ,�����������ƽ̨,�Ϻ���������ϵͳ,�Ϻ������������,�Ϻ���������ϵͳ,�Ϻ������������,��������,һվʽ��������ƽ̨,������������,����,�������"/>

<meta name="Description" content="����ǹ������������ִ���Ϣ������ҽ�Ƽ����Ľ�������������ǹ����ִ������Ƽ����ȵĽ����������ƽ̨�̡�������һֱרע�ڽ���������ҵ��ͨ�����½����������뷽ʽ��������ҵ��Դ���ḻ���������Ʒ�������������Ⱥ�ڵĽ����������������ҽ�ƻ��������յȽ��ڻ�����������ҵ����Ϊ�ͻ��ṩ������ֵ�����������������ʵ�ֽ������ɡ�"/>
    <style type="text/css">
        #nav ul li a#page7 /*  �˴�pagex ��˵��ж����Ҫ��Ӧ*/
        {
            -webkit-box-shadow: 3px 3px 5px #333;
            box-shadow: 3px -3px 5px #333;
            height: 35px;
            padding-top: 12px;
            background-color: #008000;  /*  ԭΪ00a0e9*/
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
    <!-- ��¼���˳�����¼���û�����ʾ -->
    <div id="topNav" class="h-30 bg-f0f0f0">
         <%@include file="banner.jsp" %>   
    </div>    
    <!-- logo -->
    <div id="header" class="w-1200">
        <img src="<%=basePath %>images/logo.png" class="float-l" />
    </div>
    
    <!-- �����˵� -->
    <div id="nav" class="relative w-1200">
 		<%@include file="header.jsp" %>  
    </div>
       
    <div id="dcontent" class="w-1200 m-b20 align-l" style="">
      <img src="<%=basePath %>images/taocanka.png" width="1024"/>
       <!-- 
        <dl class="m-b20">
            <img src="<%=basePath %>images/aboutUs.jpg" width="1024"/>
            <dt class="font-lh30 font-color-444">��˾�ܲ���</dt>
            <dd class="font-lh25">
                �Ϻ���̽����������޹�˾<br />
                �� ַ���Ϻ���������ƽ·121�����ʹ���21¥D<br />
                �� �ࣺ200040<br />
                �ͷ����ߣ�400-xxx-xxx<br />
                �� ����021-xxx xxxx<br />
                �� �棺020-xxx xxxx<br />             
                <span style="color:#f00;">���帺���ˣ��ž����ֻ���xxxxxxxxxx��QQ��xxxxxxx</span>
            </dd>
        </dl> 
        -->
    </div>
     
    <div id="nav" class="relative w-1200">
 		<%@include file="footer.jsp" %>
    </div>  
 
 </body>
</html>

