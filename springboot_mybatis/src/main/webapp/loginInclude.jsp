<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK"     %>

<%
String basePath100 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>

<div class="top">
	<div class="top_con">

    	<table width="560" border="0" cellspacing="0" cellpadding="0" align="right" style="line-height:30px;white-space: nowrap;overflow: visible;">
		  <tr>
		  
		    <td class="light_color" id= "showlogout"  > 

			    <a href="<%=basePath100 %>index.jsp">首页</a> &nbsp;&nbsp;<span style="color:#b7b6b6">|</span> &nbsp;&nbsp;
			    <a href="#">免费注册</a>&nbsp;&nbsp; <span style="color:#b7b6b6;" >|</span>&nbsp;&nbsp;
			    <a href="<%=basePath100 %>aboutus.jsp">关于金程</a>&nbsp;&nbsp; <span style="color:#b7b6b6;" >|</span>&nbsp;&nbsp; 
		    	<a href="<%=basePath100 %>consult.jsp">在线咨询</a>&nbsp;&nbsp; <span style="color:#b7b6b6;" >|</span>&nbsp;&nbsp;
		    	<a href="#"  target="_blank">客服邮箱</a>&nbsp;&nbsp; <span style="color:#b7b6b6;" >|</span>&nbsp;&nbsp;
		    </td>
		    
		    <td class="light_color" id= "showlogout"  > 
            <div class="nav_menu">
			   <ul>
                  <li><a href="#">网站导航</a>
			      <ul>
			         <li><a href="<%=basePath100 %>index.jsp"  target="_blank">首&nbsp;&nbsp;页</a></li>
					 <li><a href="<%=basePath100%>medical.jsp"  target="_blank">健康体检</a></li>
					 <li><a href="<%=basePath100%>management.jsp?id=1"  target="_blank">健康管理</a></li>
					 <li><a href="<%=basePath100%>gryyFind.action"  target="_blank">健康在线</a></li>
					 <li><a href="<%=basePath100%>crops1.jsp"  target="_blank">绿色农产品</a></li>
					 <li><a href="<%=basePath100 %>aboutus.jsp"  target="_blank">关于金城</a></li>
					 <li><a href="<%=basePath100 %>vip.jsp"  target="_blank">VIP专区</a></li>
					 <li><a href="<%=basePath100 %>consult.jsp"  target="_blank">在线咨询</a></li>
			      </ul>
		 	   </li>
		 	 </ul>
		    </div>
		  </td>

			
			    
		    </td>
		  </tr>
    	</table>
    </div>
</div>