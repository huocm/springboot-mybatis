<%@ page contentType="text/html;charset=GBK" language="java"  %>      

<p class="font-lh30 align-r w-1200">
&nbsp;&nbsp;
<%if(request.getSession().getAttribute("customerName")==null&&request.getSession().getAttribute("userName")==null){ %>
<a href="<%=basePath %>login2.jsp" target="_self">&nbsp;客户登录</a> &nbsp;|&nbsp;
<a href="<%=basePath %>login.jsp" target="_self">&nbsp;卡登录</a> &nbsp;|&nbsp;
<!-- <a href="<%=basePath %>login4.jsp" target="_self">&nbsp;企业HR登录</a> &nbsp;|&nbsp;-->
<a href="<%=basePath %>login3.jsp" target="_self">&nbsp;管理登录</a> &nbsp;|&nbsp;
<%}else{ %>
<marquee width="600" behavior="alternate" direction="right" align="middle" >您好！<%=request.getSession().getAttribute("customerName") %>金程欢迎您光临金程一站式健康平台！</marquee>
<a href="<%=basePath %>signoffAction.action" target="_self">&nbsp; 安全退出  &nbsp;|&nbsp;</a>
<%} %>
<a href=# onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=basePath %>');">&nbsp;设为首页&nbsp;&nbsp;|&nbsp;</a>
<a href="javascript:window.external.AddFavorite('<%=basePath %>','金程健康')">&nbsp;收藏本站&nbsp;&nbsp;</a>

</p>


