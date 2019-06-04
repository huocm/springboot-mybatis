<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>first AJAX demo</title>
        <script language="JavaScript" src="js/myAjax.js"></script>
    </head>
 
    <body>
        请输入用户名：
        <input type="text" name="userName" onblur="myRequest()" />
        <label id="msg" style="color: red" />
    </body>
    <script type="text/javascript">
        //请求函数
        function myRequest(){
            var name;
            if (document.getElementById("userName") != undefined) {
                name = document.getElementById("userName").value;
            }
            //URL未尾要加个随机数，以免请求不能再次提交
            var url = '<%=bathPath%>ajaxRequest.jsp?time='+Math.random();
            //要提交到服务器的数据
            var content = "userName=" + name;
            //调用异常请求提交的函数
            sendRequest("POST",url,content,"TEXT",processResponse );
        }
        
        //回调函数
        function processResponse(){
            // 请求已完成
            if( http_request.readyState == 4) {
                // 信息已经成功返回，开始处理信息
                if(http_request.status == 200) { 
                   var msg = document.getElementById("msg");
                    if(msg != undefined){
                        //返回的是文本格式信息
                        msg.innerText = http_request.responseText;                       
                    }
                } else { //页面不正常
                    //"您所请求的页面有异常"
                    alert('您所请求的页面有异常');
                    //alert("\u60a8\u6240\u8bf7\u6c42\u7684\u9875\u9762\u6709\u5f02\u5e38\u3002");
                }
            }
        }
    </script>
</html>
