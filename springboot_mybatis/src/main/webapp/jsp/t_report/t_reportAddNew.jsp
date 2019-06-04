<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>体检报告上传页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
<style type="text/css">
<!--
.STYLE5 {	color: #000000;
	font-size: 12px;
}
-->
</style>
</head>
<script type="text/javascript">
//提交
function check(){	
		var staffname = document.getElementById('staffname').value;		
		if(staffname==null || staffname ==''){
		    alert("体检人姓名不能为空！");
			return false;
		}


		var id = document.getElementById('id').value;		
		if(id==null || id ==''){
		    alert("体检结果编号不能为空！");
			return false;
		}
		
		//var bookid = document.getElementById('bookid').value;		
		//if(bookid==null || bookid ==''){
		//    alert("预约编号不能为空！");
		//	return false;
		//}
		
		var myFile = document.getElementById('myFile').value;		
		if(myFile==null || myFile ==''){
		    alert("体检报告文件不能为空！");
			return false;
		}
					
	    var user = document.getElementById('user').value;		
		if(user==null || user ==''){
		    alert("录入人不能为空！");
			return false;
		}	

		form1.action = "<%= basePath %>T_reportActionAddNew.action?time="+Math.random();
		form1.submit();
		
}


</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form  name="form1" theme="simple"  enctype="multipart/form-data"  method="POST">

<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">·运营管理&gt;&gt; 体检结果维护&gt;&gt; 添加新体检报告</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" ><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="229" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">添加新体检报告页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">客户名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_report.staffname"  id="staffname"  readonly="true" />
					            	<s:hidden  name="t_report.id"  id="id" />
							    <font color="#FF0000">*</font>
							 <s:hidden name="t_report.bookid" id="bookid"></s:hidden>
							 <s:hidden name="t_report.cost" id="cost" value="0"></s:hidden>
							  </td>
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">身份证号:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_report.memo2"   readonly="true"   maxlength='100'  id="memo2"/>
							    
							  </td>
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">企业名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_report.customername"  readonly="true"  maxlength='45'  id="customername"/>
							    
							  </td>
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">选择体检报告文件:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:file name="myFile" id="myFile" accept="image/bmp,image/png,image/gif,image/jpeg" />
                                         <font color="red">*</font>(bmp,png,gif,jpeg,pdf,xls,xlsx格式，不能超过5M)					    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>					
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">状态:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:hidden  name="t_report.status"  id="status" />
							        体检结果已登记，可上传报告
							  </td>
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">操作人:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            				    ${userName}
							    <s:hidden  name="t_report.user" id="user" value="${userName}" />							    
							  </td>
                            </tr>
			
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检机构:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_report.company"  readonly="true"  maxlength='45'  id="company"/>
							    
							  </td>
                            </tr>
							
							<tr align="center">
                   		      <td height="24" bgcolor="#F2F2F2" colspan="4">	
								<input class="btn" type="button" value="    添加新报告    " name="B1" onClick="check()">
								<input class="btn" type="reset" value="    重填    " name="B2">
								<input class="btn" type="button" value="    返回    " name="B3" onClick="history.go(-1)">		
						      </td>
						   </tr>
                           <tr>
                              <td width="100%" colspan="3" height="24" align="center" valign="middle" bgcolor="#F2F2F2">
                                 &nbsp;&nbsp;
                                 <font color="red">
                                 <%=(request.getAttribute("messerro")==null)?"":(request.getAttribute("messerro")) %>
                                 ${message}
                                 <s:fielderror />
                                 <s:actionmessage/>
                                 </font>&nbsp;&nbsp;
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
	