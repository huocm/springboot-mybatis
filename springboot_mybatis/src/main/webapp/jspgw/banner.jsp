<%@ page contentType="text/html;charset=GBK" language="java"  %>      

<p class="font-lh30 align-r w-1200">
&nbsp;&nbsp;
<%if(request.getSession().getAttribute("customerName")==null&&request.getSession().getAttribute("userName")==null){ %>
<a href="<%=basePath %>login2.jsp" target="_self">&nbsp;�ͻ���¼</a> &nbsp;|&nbsp;
<a href="<%=basePath %>login.jsp" target="_self">&nbsp;����¼</a> &nbsp;|&nbsp;
<!-- <a href="<%=basePath %>login4.jsp" target="_self">&nbsp;��ҵHR��¼</a> &nbsp;|&nbsp;-->
<a href="<%=basePath %>login3.jsp" target="_self">&nbsp;�����¼</a> &nbsp;|&nbsp;
<%}else{ %>
<marquee width="600" behavior="alternate" direction="right" align="middle" >���ã�<%=request.getSession().getAttribute("customerName") %>��̻�ӭ�����ٽ��һվʽ����ƽ̨��</marquee>
<a href="<%=basePath %>signoffAction.action" target="_self">&nbsp; ��ȫ�˳�  &nbsp;|&nbsp;</a>
<%} %>
<a href=# onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=basePath %>');">&nbsp;��Ϊ��ҳ&nbsp;&nbsp;|&nbsp;</a>
<a href="javascript:window.external.AddFavorite('<%=basePath %>','��̽���')">&nbsp;�ղر�վ&nbsp;&nbsp;</a>

</p>


