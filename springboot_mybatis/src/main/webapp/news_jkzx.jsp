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
		     String newstypeid = request.getParameter("newstype");
		     String tag = "";
		     System.out.println( newstypeid==null  );
		     System.out.println("<br>------初始化;tag="+tag);
		     System.out.println("------初始化;newstypeid="+newstypeid);
	    	
		     if(newstypeid==null){
		    	 newstypeid="1";
		    	 tag="关于健康";
		     }
		     
		     if(newstypeid.equals("1")){             
          		tag="关于健康";
	    	 }
	    	 else if(newstypeid.equals("2")){ 
          		tag="健康咨询";
             }
	    	 else if(newstypeid.equals("3")){ 
          		tag="健康养生";
             }
	    	 else if(newstypeid.equals("4")){ 
          		tag="行业动态";
             }
	    	 else if(newstypeid.equals("5")){ 
          		tag="健康食谱";
             }
	    	 else{
	    		 tag="关于健康";
	    	 }
		     System.out.println("<br>------最后;tag="+tag);
		     System.out.println("------最后;newstypeid="+newstypeid);

		     %>
		     
		<div class="list_banner_bg">		
			<span class="home"><a href="<%=basePath %>index.jsp">首页</a>><a href="<%=basePath%>jkzx.action?newstype=1">健康在线</a>><a><%=tag %></a></span>
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
		<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
		<br><br>
	</p>
	<p>
		<div class="">
                     <!-- 
					<ul >
						<li class="width670px bold">标题</li>
						<li class="width170px bold">时间</li>
					</ul>
                    -->
					<s:iterator value="paginationSupport.items" status="stuts">
						<ul>
							<li class=""><a href="<%=basePath%>syFindById.action?newstype=<%=newstypeid %>&id=${id}" target="_blank"> ${title } </a></li>
							<!-- <li class="">${createtime }</li> -->
						</ul>
					</s:iterator>
                  <br><br>
                          <ul>
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/jkzx.action">
							    <s:param name="newstype" value="<%=newstypeid %>" />
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/jkzx.action">
							    <s:param name="newstype" value="<%=newstypeid %>" />
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/jkzx.action">
							    <s:param name="newstype" value="<%=newstypeid %>" />
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="/jkzx.action">
							    <s:param name="newstype" value="<%=newstypeid %>" />
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条 									
					      </ul>
                  
				</div>
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
        //var a=<%=newstypeid %>;
        //$("#content"+a).show(); 
        $("#content1").show();
         </script>
    </div>
    </body>
    </html>		
				