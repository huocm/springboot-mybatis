<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp" %>
<%//@include file="../sessionCustomerValidate.jsp" %>
<%@include file="../../taglibs.jsp" %>

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
        #nav ul li a#page4 /*  此处pagex 与菜单中定义的要对应*/
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
       
    <div id="dcontent" class="w-1200 m-b20 align-l" style="">
       
 <%
 if(request.getSession().getAttribute("flag")==null||request.getSession().getAttribute("flag").equals("")){
        	  //未登录
 %>
         <p class=" font-16 font-color-444 font-lh30"><br>请先登录，然后再使用该功能！<br></p> 
         <p class=" font-16 font-color-444 font-lh30">我的体检报告：</p>
         <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">      
           <tr>
                <td align="center">
                    姓名 
                </td>
                <td align="center">
                   体检报告生成时间 
                </td>
                <td align="center">
                    体检机构 
                </td>                
               
                <td align="center">
                    操作(下载)
                </td>
                                                                                      
            </tr>
           </table>     
          <%
          }else{
         %>             
        
        <p class=" font-16 font-color-444 font-lh30">我的体检报告：</p>
        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">      
           <tr>
                <td align="center">
                    姓名 
                </td>
                <td align="center">
                   体检报告生成时间 
                </td>
                <td align="center">
                    体检机构 
                </td>                
               
                <td align="center">
                    操作(下载)
                </td>
                                                                                      
            </tr>
            
        <s:iterator value="paginationSupport.items" status="stuts">
            <tr>
                <td align="center">
                    <s:property value="staffname" />
                </td>
                <td align="center">
                   <s:date name="inserttime" nice="false" format="yyyy-MM-dd" />	
                </td>
                <td align="center">
                   ${company }
                </td>
            
                <td align="center">
                    <a href='<%=basePath %>fileDownload?fileName=${imagename}' target="_blank"><img src='<%= basePath %>images/xiazai.png' border="0" alt="下载" title="下载"  height="15" >下载</a>&nbsp;                                                             	

                </td>          		                                                        
            </tr>     
            </s:iterator>
    </table>      
         <% }%> 
         
        <img src="<%=basePath %>images/jkzx.png" width="1024"/>        
       
    </div>

    <div id="nav" class="relative w-1200">
 		<%@include file="footer.jsp" %>
    </div>  
 
 </body>
</html>
