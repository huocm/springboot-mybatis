<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>
<%//@include file="sessionCustomerValidate.jsp" %>
<%@include file="taglibs.jsp" %>
<%
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>��̽���_�������_ȫ��λ����������������</title>
<meta name="keywords" content="���,��̽������,�������,�������,��������,��̽���" />
<meta name="description" content="��̽������������ȫ�����ȵ�������ģ��ǽ�����졢�����ٽ�����ҽ���Ϻ�˽�˱���ҽ���Ƚ����������ļ�����;�ṩ�������(�����/Ů�����)������������ҵԱ������ȫ��λ�����������" />

		<link href="css/sub_css/jincheng.css" rel="stylesheet" type="text/css"/>
		<link href="css/sub_css/reservationform.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="content-type" content="text/html;charset=GBK"/>
   

    </head>
	
    <body>
       
        <%@include file="header.jsp" %>	
        
		<div class="list_banner" id="list_banner">
			<img src="<%=basePath %>images/sub_images/nban7.jpg"/>
		</div>
		<div class="list_banner_bg">
			<span class="home"><a href="<%=basePath%>index.jsp">��ҳ</a>><a href="<%=basePath%>tjbgxzFind.action">��Աר��</a>><a>��챨������</a></span>
			<div class="midd">

				<div class="midd_lef">

					<h2>��Աר��</h2>
					<div class="list_hr" style="float:left;">
					</div>

					<div class="lis">
											<span><a href="<%=basePath%>gryyFind.action">����ԤԼ</a></span>
											<span><a href="<%=basePath%>tjbgxzFind.action">��챨������</a></span>
											<span><a href="<%=basePath%>vip.jsp">VIPר�����</a></span>
					
					</div>
					<div class="list_hr2" style="float:right;">

					</div>
					<div id="clear"></div>
				</div>
				<div class="midd_right">
					<!-- -->
					<div class="information">
					<h2>�ҵ���챨��</h2>
					<div class="reservationForm">
<%
 if(request.getSession().getAttribute("flag")==null||request.getSession().getAttribute("flag").equals("")){
        	  //δ��¼
 %>
						   <ul>
							    <p class=" font-16 font-color-444 font-lh30"><br>���ȵ�¼��Ȼ����ʹ�øù��ܣ�<br></p>
						    </ul>  
         <%
          }else{
         %>     
         					 <ul>
							    <li class="width150px bold">��&nbsp;&nbsp;��</li>
								<li class="width170px bold">��챨������ʱ��</li>
								<li class="width220px bold">������</li>
								<li class="width120px bold">���������أ�</li>
						    </ul>
						   
                    <s:iterator value="paginationSupport.items" status="stuts">
							<ul>
							    <li class="width150px"> <s:property value="staffname" />  </li>
								<li class="width170px">  <s:date name="inserttime" nice="false" format="yyyy-MM-dd" />  </li>
								<li class="width220px">  ${company }  </li>
								<li class="width120px">  <a href='<%=basePath %>fileDownload?fileName=${imagename}' target="_blank"><img src='<%= basePath %>images/xiazai.png' border="0" alt="����" title="����"  height="15" >����</a>&nbsp;  </li>
						    </ul>
					 </s:iterator>		
			
 <% }%> 						    
						    
                    	</div>
					</div>
				</div>
				<div id="clear"></div>
			</div>
			<div id="clear"></div>
			<div class="height30px"></div>
		</div>
		<div id="clear"></div>
	
	    <%@include file="footer.jsp" %>	
	
    </div>
    </body>
