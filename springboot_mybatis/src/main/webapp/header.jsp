<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK"    %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
 
 <link href="css/sub_css/jincheng.css" rel="stylesheet" type="text/css"/>
		<link href="css/sub_css/slideshow.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
        <script type="text/javascript" src="js/sub_js/jquery-1.4.2.min.js"></script>

<div class="header">
        	<div class="header_son">
            	<div class="logo">
					<a href="<%=basePath%>index.jsp"><img src="<%=basePath%>images/sub_images/logo3.png" /></a>
                </div>
                
                <div class="logo_right">
                	<a href="<%=basePath %>zzjsz.jsp"   target="_blank" class="eng">English</a>
                	<div class="language">
		<%if(request.getSession().getAttribute("customerName")==null&&request.getSession().getAttribute("userName")==null){ %>
					<a href="<%=basePath %>login2.jsp" target="_self">&nbsp;企业客户登录</a> &nbsp;|&nbsp;
					<a href="<%=basePath %>login.jsp" target="_self">&nbsp;体检卡入口</a> &nbsp;|&nbsp;
					<a href="<%=basePath %>login4.jsp" target="_self">&nbsp;企业HR入口</a> &nbsp;|&nbsp;
					
		<%}else{ %>
					
					 您好，<%=request.getSession().getAttribute("customerName") %>！
					<a href="<%=basePath %>signoffAction.action" target="_self">&nbsp; 安全退出  &nbsp;|&nbsp;</a>
					<a href="<%=basePath %>changePassword2.jsp" target="_self">&nbsp; 修改密码  &nbsp;|&nbsp;</a>
		<%} %>
					<a href=# onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=basePath %>');">&nbsp;设为首页&nbsp;&nbsp;|&nbsp;</a>
					<a href="javascript:window.external.AddFavorite('<%=basePath %>','金程健康')">&nbsp;收藏本站&nbsp;&nbsp;</a>
					
                    </div>
                    
                    <img src="<%=basePath%>images/sub_images/tel.png"/ style=" margin-top:5px;">
                </div>
            </div>
        </div>
        
        <div class="navi menu">
		
        	<ul class="w" style="list-style:none;">
            	<li><a href="<%=basePath%>index.jsp" style="height:48px;line-height:48px;">首页</a></li>								
                <li><a href="<%=basePath%>medical.jsp" style="height:48px;line-height:48px;">健康体检</a>
					<ul>
											<li><a href="<%=basePath%>medical.jsp?id=1"><span>入职体检</span></a></li>
											
											<li><a href="<%=basePath%>medical.jsp?id=3"><span>企业福利体检</span></a></li>
											<li><a href="<%=basePath%>medical.jsp?id=4"><span>高端体检</span></a></li>
											<li><a href="<%=basePath%>medical.jsp?id=5"><span>金程健康体检卡</span></a></li>
											
											<li><a href="<%=basePath%>medical.jsp?id=7"><span>基因检测</span></a></li>
						
					</ul>
				</li>								
                <li><a href="<%=basePath%>management.jsp?id=1" style="height:48px;line-height:48px;">健康管理</a>
                	<ul>
												<li><a href="<%=basePath%>management.jsp?id=1"><span>健康档案</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=2&cid=1"><span>健康评估</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=3"><span>健康干预</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=4"><span>健康教育</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=5"><span>健康咨询</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=6"><span>私人医生</span></a></li>
											</ul>
                </li>
                <li><a href="<%=basePath%>jkzx.action?newstype=1" style="height:48px;line-height:48px;">健康在线</a>
					<ul>
												<li><a href="<%=basePath%>jkzx.action?newstype=1"><span>关于健康</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=2"><span>健康咨询</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=3"><span>健康养生</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=4"><span>行业动态</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=5"><span>健康食谱</span></a></li>
												
											</ul>
				</li>

                <li><a href="<%=basePath%>crops1.jsp" style="height:48px;line-height:48px;">绿色农产品</a>
                	<ul>
												<li><a href="<%=basePath%>crops1.jsp"><span>绿色大米</span></a></li>
												
											</ul>
                </li>
                <li><a href="<%=basePath%>aboutus.jsp" style="height:48px;line-height:48px;">关于金程</a>
					<ul>
											<li><a href="<%=basePath %>aboutus.jsp?id=1"><span>公司简介</span></a></li>
											<li><a href="<%=basePath %>aboutus.jsp?id=9"><span>合作机构</span></a></li>
											
											<li><a href="<%=basePath %>aboutus.jsp?id=4"><span>服务优势</span></a></li>
											<li><a href="<%=basePath %>aboutus.jsp?id=5"><span>资源优势</span></a></li>
											<li><a href="<%=basePath %>aboutus.jsp?id=6"><span>系统平台</span></a></li>
																						<li><a href="<%=basePath %>aboutus.jsp?id=10"><span>人才招聘</span></a></li>																	
											<li><a href="<%=basePath %>aboutus.jsp?id=8"><span>联系我们</span></a></li>
					</ul>
				</li>
                <li><a href="<%=basePath%>gryyFind.action" style="height:48px;line-height:48px;">会员专区</a>
                	<ul>
												<li><a href="<%=basePath%>gryyFind.action"><span>在线预约</span></a></li>
												<li><a href="<%=basePath%>tjbgxzFind.action"><span>体检报告下载</span></a></li>
												<li><a href="<%=basePath%>vip.jsp?id=4"><span>VIP专享服务</span></a></li>
											</ul>
                </li>
				<li><a href="<%=basePath%>consult.jsp" style="height:48px;line-height:48px;">在线咨询</a>
                </li>
            </ul>
        </div>
		