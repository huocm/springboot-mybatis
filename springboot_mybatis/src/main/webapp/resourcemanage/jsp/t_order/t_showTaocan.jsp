<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_member信息列表页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
     <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
</head>
<script type="text/javascript">

//请求函数,加载已经配置的套餐信息显示出来。
function loadTaocan(){
    //URL未尾要加个随机数，以免请求不能再次提交
    var orderid = parent.document.getElementById("orderid").value;
    var url = '<%=basePath%>T_showTaocanByOrderid.action?orderid='+orderid+'&time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",loadTaocanCallBack );
}
        
//回调函数
function loadTaocanCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
			 var mubiao = document.getElementById("taocan");
			//var results = http_request.responseXML.getElementsByTagName("result");
            if(mubiao != undefined){
                 //返回的是文本格式信息
                 mubiao.innerHTML = http_request.responseText;  
                 //alert(http_request.responseText)                 
            }
            //alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
        
    }
}
</script>
<body onload="loadTaocan()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<s:form action="T_order_subActionRemoveBatch.action" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">

  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
     
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td  valign="top" >
                    
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                									
								<input type="button" class="btn" value="    添加套餐    " name="B1" onClick="window.location.href='<%=basePath %>jsp/t_order/t_selectQYTC.jsp?orderid=<%=request.getParameter("orderid") %>'">
								<input type="button" class="btn" value="    返回    " name="B1" onClick="window.parent.location.href='<%=basePath %>T_orderBjdActionList.action'">
								<input type="submit" name="del" value="    删除套餐    " class="btn">
						      </td>
						   </tr>	
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">                               
		                          <table id="table0" width="100%" border="0" cellspacing="0" cellpadding="0">
		                           <tr>
		                            <td colspan="8">
		                             <div id="taocan"></div>			    
							        </td>
							        </tr>					      							   
							      </table>
		                 </td>
		                 </tr>   
		                                 
                         
                         </table>
                        
						</td>
                      </tr>					  
					</table>
					
                  </td>
                </tr>
              </table>
             
             </td>
           </tr>
        </table>
       
       </td>
      </tr>
    </table>
   
   </td>
  </tr>
</table>

</s:form>
</body>
</html>
	