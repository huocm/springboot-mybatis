<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp" %>
<%//@include file="../sessionCustomerValidate.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head><link href="<%=basePath %>css/public.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/page.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath %>js/jquery-1.6.min.js" type="text/javascript"></script>
    
<title>�������-�����������,��������ϵͳ,��������ƽ̨,��������-�Ϻ���̽����������޹�˾</title>
<meta name="Keywords" content="�Ϻ���̽�������,�����������,��������ϵͳ,�����������ƽ̨,�Ϻ���������ϵͳ,�Ϻ������������,�Ϻ���������ϵͳ,�Ϻ������������,��������,һվʽ��������ƽ̨,������������,����,�������"/>

<meta name="Description" content="����ǹ������������ִ���Ϣ������ҽ�Ƽ����Ľ�������������ǹ����ִ������Ƽ����ȵĽ����������ƽ̨�̡�������һֱרע�ڽ���������ҵ��ͨ�����½����������뷽ʽ��������ҵ��Դ���ḻ���������Ʒ�������������Ⱥ�ڵĽ����������������ҽ�ƻ��������յȽ��ڻ�����������ҵ����Ϊ�ͻ��ṩ������ֵ�����������������ʵ�ֽ������ɡ�"/>
    <style type="text/css">
        #nav ul li a#page5 /*  �˴�pagex ��˵��ж����Ҫ��Ӧ*/
        {
            -webkit-box-shadow: 3px 3px 5px #333;
            box-shadow: 3px -3px 5px #333;
            height: 35px;
            padding-top: 12px;
            background-color: #008000;  /*  ԭΪ00a0e9*/
            margin-top: 3px;
        }
        td
        {
            padding: 5px 0;
            line-height: 30px;
        }
    </style>

    <script type="text/javascript">
        function check() {
            var title = $("#tepy").val();
            if (title == '') {
                alert("���ⲻ��Ϊ��!");
                return false;
            }
            var name = $("#name").val();
            if (name == '') {
                alert("��������Ϊ��!");
                return false;
            }
            var content = $("#content").val();
            if (content == '') {
                alert("�������鲻��Ϊ��!");
                return false;
            }
            var checkcode = $("#checkcode").val();
            if (checkcode == '') {
                alert("��֤�벻��Ϊ��!");
                return false;
            }

        }
        //������֤��
        function changeimg() {
            document.getElementById("codeimg").src = "validcode.aspx?" + Math.random();
        }
    </script>


    <!--[if IE 6]>
    <script src="/js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
       EvPNG.fix('div, ul, img, li, input'); 
    </script>
    <![endif]-->
<title>

</title></head>
<body> 
    <!-- ��¼���˳�����¼���û�����ʾ -->
    <div id="topNav" class="h-30 bg-f0f0f0">
         <%@include file="banner.jsp" %>   
    </div>
    <!-- logo -->
    <div id="header" class="w-1200" width="1080" height="80">
        <img src="<%=basePath %>images/logo.png" class="float-l" width="1080" height="80"/>
    </div>
    
    <!-- �����˵� -->
    <div id="nav" class="relative w-1200">
 		<%@include file="header.jsp" %>  
    </div>
       
    <div id="dcontent" class="w-1200 m-b20 align-l" style="">
		<img src="<%=basePath %>images/lssp.png" width="1024"/>
		<!-- 
		<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
		  <tr>
		    <td height="3" bgcolor="2d6094"></td>
		  </tr>
		  <tr>
		    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
		      <tr>
		        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
		        <td width="839" valign="bottom" background="<s:url value='/images/1_09.gif'/>"><span class="daohang">���ҵĵ���&gt;&gt; ����¼��ѯ</span></td>
		      </tr>
		      <tr>
		        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
		            <tr>
		              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="3">
		                <tr>
		                  <td height="229" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
		                      <tr>
		                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
							  <tr>
		                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
		                            <tr>
		                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
		                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;�������Ϣ�б�ҳ&nbsp;</td>
		                            </tr>
		                        </table></td>
		                      </tr>
		                      <tr>
		                        <td valign="top" bgcolor="cbcbcb">
		                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
		                            <tr>
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ͻ�����</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�����ͼƬ</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">ͼƬ·��</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">������</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��Ʒ�ײ�</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�����</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">¼����</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">¼��ʱ��</strong></th>          
							            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����</strong></th>          
							            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;����&nbsp;</strong></th>					          
		                            </tr>
		                          <s:iterator value="paginationSupport.items" status="stuts">
									<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">   							
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="id" />&nbsp;					                 					                   
							          </td>
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="customername" />				                 					                   
							          </td>
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="imagepath" />				                 					                   
							          </td>
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="imagename" />		                 					                   
							          </td>
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="company" />			                 					                   
							          </td>					         
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="productid" />				                 					                   
							          </td>
							         
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="result" />					                 					                   
							          </td>
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="user" />		                 					                   
							          </td>
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:date name="inserttime" nice="false" format="yyyy-MM-dd" />				                 					                   
							          </td>					       
							          <td height="25" align="center" valign="middle">&nbsp;
							            	<s:property value="cardid" />				                 					                   
							          </td>				          
							          <td height="25" align="center" valign="middle">&nbsp;
							          	<a href='<s:url action="T_reportActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="����" title="����"  height="15" >����</a>
							            <a href='<s:url action="T_reportActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="�鿴" title="�鿴"  height="15" >�鿴</a>
							          </td>
							        </tr>					      
							      </s:iterator>
							    </table></td>
		                      </tr>
		                     
		                    </table></td>
		                </tr>
		              </table></td>
		            </tr>
		        </table></td>
		      </tr>
		    </table></td>
		  </tr>
		</table>-->
	
    </div> 

    <div id="nav" class="relative w-1200">
 		<%@include file="footer.jsp" %>
    </div> 
 
 </body>
</html>
