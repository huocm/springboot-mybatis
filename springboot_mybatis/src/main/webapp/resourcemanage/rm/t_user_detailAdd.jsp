<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%@ page import="java.util.*" %>
<%@ page import="com.common.db.PaginationSupport" %>
<%@ page import="com.common.rm.dao.*" %>
<%@ page import="com.common.rm.domain.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_user信息列表页</title>
    <link rel="stylesheet" href="<%= basePath %>/css/style.css" type="text/css">
    <script language="JavaScript" src="<%= basePath %>/js/global.js"></script>
    <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
    <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
</head>
<script type="text/javascript">
//加载人员和机构
function load(){
	loadUsers();
	//loadBranch(); 放到loadUsers()执行完后后，再调用，否则无法显示数据。
}	
	
//请求函数
function loadUsers(){
    //URL未尾要加个随机数，以免请求不能再次提交
    //var url = '<%=basePath%>T_user_detailActionFindAll.action?time='+Math.random();
   var url = '<%=basePath%>rm/t_user_detailListAjaxRes.jsp?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",loadUsersCallBack );
}
        
//回调函数
function loadUsersCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var mubiao = document.getElementById("jsr");
			var results = http_request.responseXML.getElementsByTagName("result");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    mubiao.appendChild(option);  
			    //alert(option);         
            }
            //alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
        //要在这个加载完成后，再调用下面的ajax，否则只会显示一个，另一个无输出。
        loadBranch();
    }
}
	
	//请求函数
function loadBranch(){
    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=basePath%>T_branchActionFindAll.action?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",loadBranchCallBack );
}
        
//回调函数
function loadBranchCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var mubiao = document.getElementById("branchid");
			var results = http_request.responseXML.getElementsByTagName("result");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    mubiao.appendChild(option);  
			    //alert(option);         
            }
            //alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
    }
}

    //提交
	function addsubmit(){	
		//var dealerid = document.getElementById('dealerid').value;		
		//if(dealerid==null || dealerid ==''){
		//    alert("账号不能为空！");
		//	return false;
		//}
		//if(isNaN(dealerid) ){
		//    alert("账号必须为数字！");
		//	return false;
		//}		
	    
	    var username = document.getElementById('username').value;		
		if(username==null || username ==''){
		    alert("账号不能为空！");
			return false;
		}	
		var password = document.getElementById('password').value;		
		if(password==null || password ==''){
		    alert("密码不能为空！");
			return false;
		}	
   
	    var ndsszb = document.getElementById('ndsszb').value;		
        if(isNaN(ndsszb) ){
		    alert("年度销售指标必须为数字！");
			return false;
		}			
       
        var branchid = document.getElementById('branchid').value;	
		if(branchid==null || branchid ==''){
		    alert("所属部门不能为空！");
			return false;
		}	
			 		
		form1.action = "<%= basePath %>rm/t_user_detailAddSave.jsp";
		form1.submit();
		
	}

function setDeptNameHiddenValue(){
	//获取select　option  对象
	var ss = document.form1.branchid;
	var hiddenValue = ss.options[ss.selectedIndex].text;
	//alert("hiddenValue="+hiddenValue);
	//获取option的text
    document.form1.deptname.value = hiddenValue;
}

</script>
<body onload="load()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<%

%>
<form action="" method="post" name="form1">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<%= basePath %>images/1_09.gif"><img src="images/1_08.gif" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<%= basePath %>images/1_09.gif" ><span class="daohang">·权限管理&gt;&gt; 操作员管理&gt;&gt; 添加操作员</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="229" valign="top" >
                    
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<%= basePath %>images/1_27.gif" ><img src="<%= basePath %>images/1_26.gif" width="21" height="24"></td>
                              <td align="left" background="<%= basePath %>images/1_27.gif" class="daohang" >操作员增加页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">账号:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="username"  maxLength='11' />
					            	<input type="hidden"  name="dealerid"  value="0" /><font color="red">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">密码:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="password"  name="password"  maxLength='11' /><font color="red">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">是否可用:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <select name="status"><option value="1" selected>可用</option><option value="0">不可用</option></select>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>							
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">说明:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="memo"  maxLength='20' />							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">试用时间:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="sysj"  maxLength='20' />
					            	<!--
					            	<s:datetimepicker name="sysj" value="today" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/> 						    
							        --> 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">录用时间:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="lysj"  maxLength='20' />							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>                            
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">签约时间:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="qysj"  maxLength='20' />							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>                            
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">介绍人:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;					            	
					            	<select name="jsr"><option value="" selected>---无---</option></select>					            							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">是否销售人员:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	 <select name="issaler"><option value="1">是</option><option value="0" selected>否</option></select>							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
		                    <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">年度销售指标:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="ndsszb" value="" maxLength='8' />							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
				
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">所属部门:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<select name="branchid" onChange="setDeptNameHiddenValue()">
					            	<option value="">--------------------</option>
					            	</select><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</font>
					            	<input type="hidden"  id="deptname" name="deptname" value="0"/> 							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>                                                        
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="button" class="btn" value="    添加用户    " name="B1" onClick="addsubmit()">
								<input type="reset"  class="btn" value="    清除    " name="B2">
								<input type="button" class="btn" value="    返回    " name="B1" onClick="javascript:history.back(-1)">
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

</form>
</body>
</html>
	