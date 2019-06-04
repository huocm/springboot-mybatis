<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp" %>
<%@include file="/taglibs.jsp" %>
<%@include file="/sessionValidate.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<!--   <META http-equiv="X-UA-Compatible" content="IE=8" /> 因为marquee在ie8下面不会执行，所以只能用ie7-->
     <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
     
     <link rel="stylesheet"  href="<%=basePath %>css/style.css"  type="text/css">
     <script language="JavaScript" src="<%=basePath %>js/global.js" ></script>
     <script language="JavaScript" src="<%=basePath %>jscript/date.js" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
     <script type="text/javascript" src="<%=basePath %>js/jquery-1.6.min.js"></script> 

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>金程健康</title>
</head>

<script type="text/javascript" language="javascript">   

</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="500" height="94" background="${basePath}images/1_02.gif"> 
        <!-- 
        <font color="#FFFFFFF"  size="15">&nbsp;管理系统</font>
         -->
        <!-- --> 
         <img src="<%=basePath %>/images/top-title.png" width="300" height="85" align="left" valign="middle">
    	 
    </td>
    <td align="right" background="<s:url value='/images/1_02.gif'/>" >
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="94" align="right" valign="bottom" ><table width="760" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td >
			 <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                
                <td height="26" align="right" valign="bottom">
				 <span class="daohang1" >
				      欢迎您，<%= session.getAttribute("userName") %>！&nbsp;&nbsp;
				      <!-- 角色：<%= session.getAttribute("userRoles") %> -->
				 	 <A href="<%=basePath %>htindex.jsp" target="_parent" class="link1">后台管理首页</A> | 
					 <A href="<%=basePath %>rm/t_user_detailPasswordEdit.jsp" target="mainFrame" class="link1"> 修改密码</A>| 
					 <A href="<%=basePath %>#" target="blank" class="link1"></A> 帮 助| 
					 <A href="<%=basePath %>signoffActionHT.action"   target="_parent" class="link1" >退出</A>
					 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 
				   </span>
				 </td>
			   
			     <td height="" align="cneter" valign="middle" >
				   <span class="daohang1" >
						  <!-- 
						  <MARQUEE id="a" onmouseover="a.stop()" style="FONT-SIZE: 9pt; COLOR: white" onmouseout="a.start()" scrollAmount="2" direction="up" width="150" bgColor="" height="90" >                         
                            <div id="content"> </div>                     
						 </MARQUEE> 	
						  -->
						  
						  <div id="asklist" >  
					           <iframe id="content"  width="'170"   background="${basePath}images/1_02.gif"  height="94"    src="<%=basePath %>askList.jsp"  width="100%" scrolling="no"  marginwidth="0"  marginheight="0"  frameborder="0"></iframe>
					        
					        <!-- 
					        <ul id="content"  > </ul> 
					         --> 
					    </div>  	 
				   </span>

				 </td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>

