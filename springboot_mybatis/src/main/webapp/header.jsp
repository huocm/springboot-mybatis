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
					<a href="<%=basePath %>login2.jsp" target="_self">&nbsp;��ҵ�ͻ���¼</a> &nbsp;|&nbsp;
					<a href="<%=basePath %>login.jsp" target="_self">&nbsp;��쿨���</a> &nbsp;|&nbsp;
					<a href="<%=basePath %>login4.jsp" target="_self">&nbsp;��ҵHR���</a> &nbsp;|&nbsp;
					
		<%}else{ %>
					
					 ���ã�<%=request.getSession().getAttribute("customerName") %>��
					<a href="<%=basePath %>signoffAction.action" target="_self">&nbsp; ��ȫ�˳�  &nbsp;|&nbsp;</a>
					<a href="<%=basePath %>changePassword2.jsp" target="_self">&nbsp; �޸�����  &nbsp;|&nbsp;</a>
		<%} %>
					<a href=# onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=basePath %>');">&nbsp;��Ϊ��ҳ&nbsp;&nbsp;|&nbsp;</a>
					<a href="javascript:window.external.AddFavorite('<%=basePath %>','��̽���')">&nbsp;�ղر�վ&nbsp;&nbsp;</a>
					
                    </div>
                    
                    <img src="<%=basePath%>images/sub_images/tel.png"/ style=" margin-top:5px;">
                </div>
            </div>
        </div>
        
        <div class="navi menu">
		
        	<ul class="w" style="list-style:none;">
            	<li><a href="<%=basePath%>index.jsp" style="height:48px;line-height:48px;">��ҳ</a></li>								
                <li><a href="<%=basePath%>medical.jsp" style="height:48px;line-height:48px;">�������</a>
					<ul>
											<li><a href="<%=basePath%>medical.jsp?id=1"><span>��ְ���</span></a></li>
											
											<li><a href="<%=basePath%>medical.jsp?id=3"><span>��ҵ�������</span></a></li>
											<li><a href="<%=basePath%>medical.jsp?id=4"><span>�߶����</span></a></li>
											<li><a href="<%=basePath%>medical.jsp?id=5"><span>��̽�����쿨</span></a></li>
											
											<li><a href="<%=basePath%>medical.jsp?id=7"><span>������</span></a></li>
						
					</ul>
				</li>								
                <li><a href="<%=basePath%>management.jsp?id=1" style="height:48px;line-height:48px;">��������</a>
                	<ul>
												<li><a href="<%=basePath%>management.jsp?id=1"><span>��������</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=2&cid=1"><span>��������</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=3"><span>������Ԥ</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=4"><span>��������</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=5"><span>������ѯ</span></a></li>
												<li><a href="<%=basePath%>management.jsp?id=6"><span>˽��ҽ��</span></a></li>
											</ul>
                </li>
                <li><a href="<%=basePath%>jkzx.action?newstype=1" style="height:48px;line-height:48px;">��������</a>
					<ul>
												<li><a href="<%=basePath%>jkzx.action?newstype=1"><span>���ڽ���</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=2"><span>������ѯ</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=3"><span>��������</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=4"><span>��ҵ��̬</span></a></li>
												<li><a href="<%=basePath%>jkzx.action?newstype=5"><span>����ʳ��</span></a></li>
												
											</ul>
				</li>

                <li><a href="<%=basePath%>crops1.jsp" style="height:48px;line-height:48px;">��ɫũ��Ʒ</a>
                	<ul>
												<li><a href="<%=basePath%>crops1.jsp"><span>��ɫ����</span></a></li>
												
											</ul>
                </li>
                <li><a href="<%=basePath%>aboutus.jsp" style="height:48px;line-height:48px;">���ڽ��</a>
					<ul>
											<li><a href="<%=basePath %>aboutus.jsp?id=1"><span>��˾���</span></a></li>
											<li><a href="<%=basePath %>aboutus.jsp?id=9"><span>��������</span></a></li>
											
											<li><a href="<%=basePath %>aboutus.jsp?id=4"><span>��������</span></a></li>
											<li><a href="<%=basePath %>aboutus.jsp?id=5"><span>��Դ����</span></a></li>
											<li><a href="<%=basePath %>aboutus.jsp?id=6"><span>ϵͳƽ̨</span></a></li>
																						<li><a href="<%=basePath %>aboutus.jsp?id=10"><span>�˲���Ƹ</span></a></li>																	
											<li><a href="<%=basePath %>aboutus.jsp?id=8"><span>��ϵ����</span></a></li>
					</ul>
				</li>
                <li><a href="<%=basePath%>gryyFind.action" style="height:48px;line-height:48px;">��Աר��</a>
                	<ul>
												<li><a href="<%=basePath%>gryyFind.action"><span>����ԤԼ</span></a></li>
												<li><a href="<%=basePath%>tjbgxzFind.action"><span>��챨������</span></a></li>
												<li><a href="<%=basePath%>vip.jsp?id=4"><span>VIPר�����</span></a></li>
											</ul>
                </li>
				<li><a href="<%=basePath%>consult.jsp" style="height:48px;line-height:48px;">������ѯ</a>
                </li>
            </ul>
        </div>
		