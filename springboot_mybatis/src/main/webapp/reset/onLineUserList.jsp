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
	  ��������ͳ�Ʋ���ʾ
	  <% 
	  Date date = new Date(); 
	  out.print("    ��ǰʱ�䣺"+(date.getYear()+1900)+"��");
	  out.print((date.getMonth()+1)+"��");
	  out.print(date.getDate()+"��");
	  out.print(date.getHours()+"ʱ");
	  out.print(date.getMinutes()+"��");
	  out.print(date.getSeconds()+"��");
	  
	  %>
	  </div>
	  </td>
	</tr>	
	<tr>
		<td class="right-dt4">
		��ǰ����������<%= CounterListener.getCounter() %>  ���ˣ�
		</td>
	</tr>
	<%
	//�������,�벻Ҫ���ʹ��
	//AttributeListener.reset();
	//��ʾ����
	Map users  = AttributeListener.getOnlineUsers();
	if(users!= null){
	%>
	<tr>
		<td class="right-dt4">
		�����û�:<%=users.size() %>  ���ˣ�
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
		�û���<%//= userName %> <%= user.getUsername() %>  -------ip��<%= user.getAcctip() %> 
		
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
