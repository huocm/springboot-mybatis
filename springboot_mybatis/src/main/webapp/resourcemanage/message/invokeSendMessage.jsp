<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%//@include file="../../sessionValidate.jsp" %>

<%@ page import="java.util.*" %>
<%@ page import="com.common.db.PaginationSupport" %>
<%@ page import="com.common.rm.domain.*" %>
<%@ page import="com.common.sendmessage.SendMessage" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
response.setHeader("Pragma","no-cache"); //HTTP 1.0
response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_order信息编辑页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
<style type="text/css">
<!--
.STYLE5 {	color: #000000;
	font-size: 12px;
}
-->
</style>
<script type="text/javascript">
	
	function addsubmit(){		
		//if(addcheck()==false){
		//	alert('资源名称不能为空！');
		//	return false;
		//}
		//else{	
		//}
		
		form1.action =  document.getElementById("address").value ; //"http://api.sms.cn";
	    //alert(document.getElementById("address").value);
	    form1.submit();
					
	}
	
	function addcheck(){
	
		var name = document.getElementById('name').value;		
		if(name==null || name ==''){
			return false;
		}	
	}
	
	function addsubmit2(){		
		//if(addcheck()==false){
		//	alert('资源名称不能为空！');
		//	return false;
		//}
		//else{	
		//}
		
		form1.action =  "<%=basePath%>message/SendMessage.jsp"; //"http://api.sms.cn";
	    //alert(form1.action);
	    form1.submit();
					
	}
	
</script>
</head>	          
					          
<body onload="load()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">·业务管理&gt;&gt; 预约管理&gt;&gt; 发送短信预览</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" ><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">编辑短信</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">	   				 

           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">接收短信号码</td>
                              <td width="20%" colspan="5" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;
                              	<input type="text" name="mobile2" value="${ t_book.memo}"> &nbsp;
                              </td>                                        
           					<tr>
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">短信内容预览：</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF"  colspan="5">&nbsp;
                                <s:textarea name="content2" cols="150" rows="3" value="尊敬的${t_book.membername}先生女士：您好！您已成功预约${t_book.companypname}下属的${t_book.productname}套餐,预约时间为：${t_book.answertime}日，预约门店为：${t_book.companyname}，（地址：），请您于体检当日上午7:30—10:30携带身份证件到店体检，体检前请务必向前台出示身份证件及此短信，另请注意体检前一天勿吃辛辣食物，体检当日需空腹。" id="memo2" />					            
                              </td>                             
                            </tr>
                  
							<tr align="center">
                   		      <td height="24" bgcolor="#F2F2F2" colspan="10">	
								<input type="button" class="btn" value="    发送短信    " name="B1"  onClick="addsubmit2()">
								<input type="button" class="btn" value="    关闭    " name="B1" onClick="javascript:window.close()">
								<!-- 
								<input type="button" class="btn" value="    返回    " name="B1" onClick="javascript:history.back(-1)">                      
	                            -->
						      </td>
						   </tr>
                        </table>
						</td>
                      </tr>
					  
					</table>
                      </td>
                </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>

</s:form>
</body>
</html>