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
		     System.out.println("<br>------��ʼ��;tag="+tag);
		     System.out.println("------��ʼ��;newstypeid="+newstypeid);
	    	
		     if(newstypeid==null){
		    	 newstypeid="1";
		    	 tag="���ڽ���";
		     }
		     
		     if(newstypeid.equals("1")){             
          		tag="���ڽ���";
	    	 }
	    	 else if(newstypeid.equals("2")){ 
          		tag="������ѯ";
             }
	    	 else if(newstypeid.equals("3")){ 
          		tag="��������";
             }
	    	 else if(newstypeid.equals("4")){ 
          		tag="��ҵ��̬";
             }
	    	 else if(newstypeid.equals("5")){ 
          		tag="����ʳ��";
             }
	    	 else{
	    		 tag="���ڽ���";
	    	 }
		     System.out.println("<br>------���;tag="+tag);
		     System.out.println("------���;newstypeid="+newstypeid);

		     %>
		     
		<div class="list_banner_bg">		
			<span class="home"><a href="<%=basePath %>index.jsp">��ҳ</a>><a href="<%=basePath%>jkzx.action?newstype=1">��������</a>><a><%=tag %></a></span>
			<div class="midd">

				<div class="midd_lef">

					<h2>  <%=tag %> </h2>
					<div class="list_hr" style="float:left;">
					</div>

					<div class="lis">
						<span><a href="<%=basePath%>jkzx.action?newstype=1">���ڽ���</a></span>
						<span><a href="<%=basePath%>jkzx.action?newstype=2">������ѯ</a></span>
						<span><a href="<%=basePath%>jkzx.action?newstype=3">��������</a></span>
						<span><a href="<%=basePath%>jkzx.action?newstype=4">��ҵ��̬</a></span>
						<span><a href="<%=basePath%>jkzx.action?newstype=5">����ʳ��</a></span>
											
					</div>
					<div class="list_hr2" style="float:right;">

					</div>
					<div id="clear"></div>
				</div>
				
				
				
<div class="midd_right">
					<div class="midd_right_top">
						<span style="visibility:hidden">��ҳ</span>
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
						<li class="width670px bold">����</li>
						<li class="width170px bold">ʱ��</li>
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
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="/jkzx.action">
							    <s:param name="newstype" value="<%=newstypeid %>" />
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/jkzx.action">
							    <s:param name="newstype" value="<%=newstypeid %>" />
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/jkzx.action">
							    <s:param name="newstype" value="<%=newstypeid %>" />
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/jkzx.action">
							    <s:param name="newstype" value="<%=newstypeid %>" />
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>βҳ</a>
							 ��<s:property value="paginationSupport.totalCount"  />�� 									
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
				