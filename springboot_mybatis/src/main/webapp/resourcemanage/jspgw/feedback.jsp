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
        #nav ul li a#page6 /*  �˴�pagex ��˵��ж����Ҫ��Ӧ*/
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
            var code = $("#code").val();
            if (code == '') {
                alert("��֤�벻��Ϊ��!");
                return false;
            } 
            alert("��������Ѿ��ύ�ɹ����ǳ���л���ı�����������ǻᾡ�촦��");
            from1.submit();
            
        }
        
        //������֤��
        function changeimg() {
            document.getElementById("checkcode").src = "<%=basePath %>Image?" + Math.random();
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
    <div id="header" class="w-1200">
        <img src="<%=basePath %>images/logo.png" class="float-l" />
    </div>
    
    <!-- �����˵� -->
    <div id="nav" class="relative w-1200">
 		<%@include file="header.jsp" %>  
    </div>
       

    <div class="h-20">
    </div>
    
    <div id="dcontent" class="w-1200 m-b20 align-l" style="">
        <p class=" font-16 font-color-444 font-lh30">
            �������Բ�Ʒ�������������</p>
        <form action="<%=basePath%>T_feedbackActionSave.action" id="from1" method="post">
        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">
            <tr>
                <td style="width: 10%;">
                    ��������
                </td>
                <td>
                    <input class="border-1-ccc p-9" type="text" name="title" id="title" /><font color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>
                    ��������
                </td>
                <td>
                    <input class="border-1-ccc p-9" type="text" name="name" id="name" /><font color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>
                    �绰
                </td>
                <td>
                    <input class="border-1-ccc p-9" type="text" name="tel" id="name" />
                </td>
            </tr>           <tr>
                <td>
                    ��������
                </td>
                <td>
                    <textarea rows="4" cols="" class="border-1-ccc p-9" style="width: 500px;" name="content"
                        id="content"></textarea><font color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>
                    ��֤��:
                </td>
                <td>
                    <input class="border-1-ccc p-9" type="text" maxlength="4" name="code" id="code" />
                    <img alt="���ˢ��" src="<%=basePath %>/Image" name="codeimg" id="codeimg" onclick="changeimg()"
                        style="cursor: pointer; height: 35px; vertical-align: middle;"  /><font color="red">*</font>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <input type="button" value="�ύ����" onclick="check()" class="border-1-ccc p-9 bg-tjfk font-16 font-color-fff"
                        style="cursor: pointer;" />
                </td>
            </tr>
        </table>
        </form>
    </div>

    <div id="nav" class="relative w-1200">
 		<%@include file="footer.jsp" %>
    </div>  
 
 </body>
</html>
