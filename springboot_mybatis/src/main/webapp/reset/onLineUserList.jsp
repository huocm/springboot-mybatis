<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage=""%>
<%@ page import="java.util.*" %> 
<%@ page import = "com.common.servlet.CounterListener" %>
<%@ page import = "com.common.servlet.AttributeListener" %>
<%@ page import ="com.common.app.sign.domain.T_user_detail" %>
<% session = request.getSession(false); %> 

<html>
<head>
    <meta http-equiv="refresh" content="5"> 
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<meta http-equiv="Content-Language" content="zh-CN" />

</head>
<body>

<table id="right-tb" class="tb01" border="0" cellpadding="0" cellspacing="0">
	<tr>
	  <td class="right-dt1" colspan="4">
	  <div class="ricon">
	  在线人数统计并显示
	  <% 
	  Date date = new Date(); 
	  out.print("    当前时间："+(date.getYear()+1900)+"年");
	  out.print((date.getMonth()+1)+"月");
	  out.print(date.getDate()+"日");
	  out.print(date.getHours()+"时");
	  out.print(date.getMinutes()+"分");
	  out.print(date.getSeconds()+"秒");
	  
	  %>
	  </div>
	  </td>
	</tr>	
	<tr>
		<td class="right-dt4">
		当前访问人数：<%= CounterListener.getCounter() %>  （人）
		</td>
	</tr>
	<%
	//清除所有,请不要随便使用
	//AttributeListener.reset();
	//显示所有
	Map users  = AttributeListener.getOnlineUsers();
	if(users!= null){
	%>
	<tr>
		<td class="right-dt4">
		在线用户:<%=users.size() %>  （人）
		</td>
	</tr>
	<%
	    Iterator it = users.values().iterator();
	    while(it.hasNext()){
			T_user_detail user = (T_user_detail)it.next();
			//String userName = (String)it.next();
		%>
	<tr>
		<td class="right-dt4">
		用户：<%//= userName %> <%= user.getUsername() %>  -------ip：<%= user.getAcctip() %> 
		
		</td>
	</tr>
	<%}
	} %>
	<tr>
		<td class="right-dtf"></td>
	</tr>
</table>

</body>
</html>
