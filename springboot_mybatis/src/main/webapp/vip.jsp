<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title></title>
    </head>
    <body>

    	<%@include file="header.jsp" %>		
    	<div class="list_banner" id="list_banner">
			<img src="images/sub_images/nban7.jpg"/>
		</div>
		<div class="list_banner_bg">
			<span class="home"><a href="<%=basePath %>index.jsp">��ҳ</a>><a href="<%=basePath %>vip.jsp">��Աר��</a>><a>VIPר�����</a></span>
			<div class="midd">

				<div class="midd_lef">

					<h2>��Աר��</h2>
					<div class="list_hr" style="float:left;">
					</div>

					<div class="lis">
											<span><a href="<%=basePath%>gryyFind.action">����ԤԼ</a></span>
											<span><a href="<%=basePath%>tjbgxzFind.action">��챨������</a>	</span>							
											<span><a href="<%=basePath %>vip.jsp">VIPר�����</a></span>
											<!--<span><a href="medical.php?id=2">ר�����</a></span>
											<span><a href="medical.php?id=3">��ҵ�������</a></span>
											<span><a href="medical.php?id=4">�߶����</a></span>
											<span><a href="medical.php?id=5">�����쿨</a></span>
											<span><a href="medical.php?id=6">PET-CT</a></span>
											<span><a href="medical.php?id=7">������</a></span>-->
					
					</div>
					<div class="list_hr2" style="float:right;">

					</div>
					<div id="clear"></div>
				</div>
				<div class="midd_right">
					<div class="midd_right_top">
						<span style="visibility:hidden">VIPר�����</span>
						<p>VIPר�����</p>
					</div><br/>
				<div  class="midd_right_midd">
				<img src="<%=basePath %>/images/sub_images/dm/vipzxfw.jpg" ></img>
			  
			</div>
			<div id="clear"></div>
		</div>
		<div id="clear"></div>
    	
    	<%@include file="footer.jsp" %>		
	
	<script type="text/javascript" charset="GBK">
		//$(".midd_right_midd").hide();
        //var a=<%//=id%>;
        //$("#content"+a).show(); 
         </script>
    </div>
    </body>
</html>    