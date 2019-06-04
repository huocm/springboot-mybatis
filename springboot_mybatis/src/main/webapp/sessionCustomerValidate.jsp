<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK"%>
<%
String tempBathPath= request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +"/"+ request.getContextPath()+"/";
String referer = request.getHeader("referer");
if (referer == null || !referer.startsWith("http://"+request.getServerName())){
	System.out.println("---------非法请求方法---------tempBathPath="+tempBathPath);
	%>
<script>
	window.parent.parent.parent.location.href="<%=tempBathPath%>index.jsp";
</script>
	<%//如果上面的js不执行，就执行下面
	//response.sendRedirect(tempBathPath+"index.jsp");
}
if(request.getSession().getAttribute("customerName")==null){
	System.out.println("-----------customerName sessionCustomerValidate.jsp session 超时，或者非法请求---------------tempBathPath="+tempBathPath);
    //request.getRequestDispatcher("../index.jsp").forward(request, response);
    
	%>
	<script>
		window.parent.parent.parent.location.href="<%=tempBathPath%>index.jsp";
		                                                            
	</script>
		<%//如果上面的js不执行，就执行下面
		//response.sendRedirect(tempBathPath+"index.jsp");
}
%>


