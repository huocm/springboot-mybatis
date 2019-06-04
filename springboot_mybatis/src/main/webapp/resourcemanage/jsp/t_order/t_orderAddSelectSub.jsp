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
    //提交
	function check(){	

	    var customername = document.getElementById('customername').value;		
		if(customername==null || customername ==''){
		    alert("客户不能为空！");
			return false;
		}	
		var linkman = document.getElementById('linkman').value;		
		if(linkman==null || linkman ==''){
		    alert("联系人不能为空！");
			return false;
		}
		//if(isNaN(num) ){
		//    alert("人员数量必须为数字！");
		//	return false;
		//}		
	    
	    //var linktel = document.getElementById('linktel').value;		
        //if(linktel==null || linktel ==''){
		//    alert("联系人电话不能为空！");
		//	return false;
		//}
		
		form1.action = "<%= basePath %>T_orderActionSaveOrderDYB.action";
		form1.submit();
		
	}

//请求函数
function loadTaocan(){
    //URL未尾要加个随机数，以免请求不能再次提交
    companyid = document.getElementById("companyid").value;
    var url = '<%=basePath%>T_productsSubAllByMDAjax.action?companyid='+companyid+'&time='+Math.random();
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
<body onload="" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<s:form  name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·业务管理&gt;&gt; 报价单管理</span></td>
      </tr>
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
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >企业套餐维护</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">                                             
                          					 
						   <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">报价单编号</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.id }&nbsp;
                              <s:hidden  id="orderid" name="orderid" value="${t_order.id }" /></td>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">报价状态 </td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.checkstatus }&nbsp;</td>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">报价日期</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.createtime }&nbsp;</td>                                                            
                            </tr>
							<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">客户名称</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.customername }&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">联系人</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.linkman }&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">联系方式</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.linktel }&nbsp;</td>                                                          
                            </tr>
																				         
	                        <tr>
		                        <td valign="top" bgcolor="cbcbcb"  colspan="8">
		                          <iframe id="taocan" src="<%=basePath %>jsp/t_order/t_showTaocan.jsp?orderid=${t_order.id }"    onload="this.height=this.contentWindow.document.body.scrollHeight+900" marginwidth="0" framespacing="0" marginheight="0" frameborder="0" width="100%"  scrolling="yes">
		                          </iframe>
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
	