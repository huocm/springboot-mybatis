<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK"     %>

<%
String basePath100 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>

<div class="top">
	<div class="top_con">

    	<table width="560" border="0" cellspacing="0" cellpadding="0" align="right" style="line-height:30px;white-space: nowrap;overflow: visible;">
		  <tr>
		  
		    <td class="light_color" id= "showlogout"  > 

			    <a href="<%=basePath100 %>index.jsp">��ҳ</a> &nbsp;&nbsp;<span style="color:#b7b6b6">|</span> &nbsp;&nbsp;
			    <a href="#">���ע��</a>&nbsp;&nbsp; <span style="color:#b7b6b6;" >|</span>&nbsp;&nbsp;
			    <a href="<%=basePath100 %>aboutus.jsp">���ڽ��</a>&nbsp;&nbsp; <span style="color:#b7b6b6;" >|</span>&nbsp;&nbsp; 
		    	<a href="<%=basePath100 %>consult.jsp">������ѯ</a>&nbsp;&nbsp; <span style="color:#b7b6b6;" >|</span>&nbsp;&nbsp;
		    	<a href="#"  target="_blank">�ͷ�����</a>&nbsp;&nbsp; <span style="color:#b7b6b6;" >|</span>&nbsp;&nbsp;
		    </td>
		    
		    <td class="light_color" id= "showlogout"  > 
            <div class="nav_menu">
			   <ul>
                  <li><a href="#">��վ����</a>
			      <ul>
			         <li><a href="<%=basePath100 %>index.jsp"  target="_blank">��&nbsp;&nbsp;ҳ</a></li>
					 <li><a href="<%=basePath100%>medical.jsp"  target="_blank">�������</a></li>
					 <li><a href="<%=basePath100%>management.jsp?id=1"  target="_blank">��������</a></li>
					 <li><a href="<%=basePath100%>gryyFind.action"  target="_blank">��������</a></li>
					 <li><a href="<%=basePath100%>crops1.jsp"  target="_blank">��ɫũ��Ʒ</a></li>
					 <li><a href="<%=basePath100 %>aboutus.jsp"  target="_blank">���ڽ��</a></li>
					 <li><a href="<%=basePath100 %>vip.jsp"  target="_blank">VIPר��</a></li>
					 <li><a href="<%=basePath100 %>consult.jsp"  target="_blank">������ѯ</a></li>
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