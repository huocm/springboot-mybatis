<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp" %>
<%//@include file="../sessionCustomerValidate.jsp" %>

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
        #nav ul li a#page5 /*  此处pagex 与菜单中定义的要对应*/
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
    <div id="header" class="w-1200" width="1080" height="80">
        <img src="<%=basePath %>images/logo.png" class="float-l" width="1080" height="80"/>
    </div>
    
    <!-- 导航菜单 -->
    <div id="nav" class="relative w-1200">
 		<%@include file="header.jsp" %>  
    </div>
       
    <div id="dcontent" class="w-1200 m-b20 align-l" style="">
		<img src="<%=basePath %>images/lssp.png" width="1024"/>
		<!-- 
		<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
		  <tr>
		    <td height="3" bgcolor="2d6094"></td>
		  </tr>
		  <tr>
		    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
		      <tr>
		        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
		        <td width="839" valign="bottom" background="<s:url value='/images/1_09.gif'/>"><span class="daohang">·我的档案&gt;&gt; 体检记录查询</span></td>
		      </tr>
		      <tr>
		        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
		            <tr>
		              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="3">
		                <tr>
		                  <td height="229" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
		                      <tr>
		                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
							  <tr>
		                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
		                            <tr>
		                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
		                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;体检结果信息列表页&nbsp;</td>
		                            </tr>
		                        </table></td>
		                      </tr>
		                      <tr>
		                        <td valign="top" bgcolor="cbcbcb">
		                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
		                            <tr>
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">编号</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客户名称</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检结果图片</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">图片路径</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检机构</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">产品套餐</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检结果</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">录入人</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">录入时间</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">卡号</strong></th>          
							            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;操作&nbsp;</strong></th>					          
		                            </tr>
		                          <s:iterator value="paginationSupport.items" status="stuts">
									<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">   							
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="id" />&nbsp;					                 					                   
							          </td>
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="customername" />				                 					                   
							          </td>
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="imagepath" />				                 					                   
							          </td>
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="imagename" />		                 					                   
							          </td>
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="company" />			                 					                   
							          </td>					         
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="productid" />				                 					                   
							          </td>
							         
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="result" />					                 					                   
							          </td>
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="user" />		                 					                   
							          </td>
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:date name="inserttime" nice="false" format="yyyy-MM-dd" />				                 					                   
							          </td>					       
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="cardid" />				                 					                   
							          </td>				          
							          <td height="25" align="center" valign="middle">&nbsp;
							          	<a href='<s:url action="T_reportActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="下载" title="下载"  height="15" >下载</a>
							            <a href='<s:url action="T_reportActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="查看" title="查看"  height="15" >查看</a>
							          </td>
							        </tr>					      
							      </s:iterator>
							    </table></td>
		                      </tr>
		                     
		                    </table></td>
		                </tr>
		              </table></td>
		            </tr>
		        </table></td>
		      </tr>
		    </table></td>
		  </tr>
		</table>-->
	
    </div> 

    <div id="nav" class="relative w-1200">
 		<%@include file="footer.jsp" %>
    </div> 
 
 </body>
</html>
