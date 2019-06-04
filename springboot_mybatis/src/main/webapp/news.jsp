<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>
<%@include file="taglibs.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title></title>
    </head>
    <body>


    	<%@include file="header.jsp" %>			
	
		<div class="list_banner" id="list_banner">
			<img src="<%=basePath %>images/sub_images/nban4.jpg"/>
		</div>
		
		<%  
		     String id = request.getParameter("newstype");
		     String tag = "";
		     System.out.println( id==null  );
		     System.out.println("<br>------初始化;tag="+tag);
		     System.out.println("------初始化;id="+id);
	    	
		     if(id==null){
		    	 id="1";
		    	 tag="关于健康";
		     }
		     
		     if(id.equals("1")){             
          		tag="关于健康";
	    	 }
	    	 else if(id.equals("2")){ 
          		tag="健康咨询";
             }
	    	 else if(id.equals("3")){ 
          		tag="健康养生";
             }
	    	 else if(id.equals("4")){ 
          		tag="行业动态";
             }
	    	 else if(id.equals("5")){ 
          		tag="健康食谱";
             }
	    	 else{
	    		 tag="关于健康";
	    	 }
		     System.out.println("<br>------最后;tag="+tag);
		     System.out.println("------最后;id="+id);

		     %>
		     
		<div class="list_banner_bg">
			<span class="home"><a href="<%=basePath %>index.jsp">首页</a> >健康在线   > <%=tag %></span>
			<div class="midd">

				<div class="midd_lef">

					<h2>  <%=tag %> </h2>
					<div class="list_hr" style="float:left;">
					</div>

					<div class="lis">
						<span><a href="<%=basePath%>jkzx.action?newstype=1">关于健康</a></span>
						<span><a href="<%=basePath%>jkzx.action?newstype=2">健康咨询</a></span>
						<span><a href="<%=basePath%>jkzx.action?newstype=3">健康养生</a></span>
						<span><a href="<%=basePath%>jkzx.action?newstype=4">行业动态</a></span>
						<span><a href="<%=basePath%>jkzx.action?newstype=5">健康食谱</a></span>
											
					</div>
					<div class="list_hr2" style="float:right;">

					</div>
					<div id="clear"></div>
				</div>
				
				
				
<div class="midd_right">
					<div class="midd_right_top">
						<span style="visibility:hidden">首页</span>
						<p> <%=tag %> </p>
					</div><br/>
				
							
<div id="content1" class="midd_right_midd">
	<p>
		<br><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${t_news.title }</strong>		
	</p>
	<p>
		     <s:if test="'${t_news.code}' ==''">
             </s:if>
             <s:elseif  test="'${t_news.code}' ==null">
             </s:elseif >
             <s:else>
             	<p align="center"> 
             	  <img src='<%=basePath %>NewsImage?fileName=${t_news.code}&filePath=${t_news.tel}'   />				            						                 
                </p>
             </s:else>
             <br>
             ${t_news.content }					            					            	
		<br>
		</br>	
	</p>
</div>
					
				</div>
			</div>
			<div id="clear"></div>
		</div>
		<div id="clear"></div>
	
    	<%@include file="footer.jsp" %>	
    	

	<script type="text/javascript" charset="utf-8">
		$(".midd_right_midd").hide();
        //var a=<%=id %>;
        //$("#content"+a).show(); 
        $("#content1").show();
         </script>
    </div>
    </body>
    </html>		
				