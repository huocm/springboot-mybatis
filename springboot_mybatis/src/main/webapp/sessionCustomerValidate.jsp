<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK"%>
<%
String tempBathPath= request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +"/"+ request.getContextPath()+"/";
String referer = request.getHeader("referer");
if (referer == null || !referer.startsWith("http://"+request.getServerName())){
	System.out.println("---------�Ƿ����󷽷�---------tempBathPath="+tempBathPath);
	%>
<script>
	window.parent.parent.parent.location.href="<%=tempBathPath%>index.jsp";
</script>
	<%//��������js��ִ�У���ִ������
	//response.sendRedirect(tempBathPath+"index.jsp");
}
if(request.getSession().getAttribute("customerName")==null){
	System.out.println("-----------customerName sessionCustomerValidate.jsp session ��ʱ�����߷Ƿ�����---------------tempBathPath="+tempBathPath);
    //request.getRequestDispatcher("../index.jsp").forward(request, response);
    
	%>
	<script>
		window.parent.parent.parent.location.href="<%=tempBathPath%>index.jsp";
		                                                            
	</script>
		<%//��������js��ִ�У���ִ������
		//response.sendRedirect(tempBathPath+"index.jsp");
}
%>


