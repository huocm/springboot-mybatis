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
<title>T_order��Ϣ�༭ҳ</title>
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
		//	alert('��Դ���Ʋ���Ϊ�գ�');
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
		//	alert('��Դ���Ʋ���Ϊ�գ�');
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
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">��ҵ�����&gt;&gt; ԤԼ����&gt;&gt; ���Ͷ���Ԥ��</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">�༭����</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">	   				 

           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">���ն��ź���</td>
                              <td width="20%" colspan="5" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;
                              	<input type="text" name="mobile2" value="${ t_book.memo}"> &nbsp;
                              </td>                                        
           					<tr>
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">��������Ԥ����</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF"  colspan="5">&nbsp;
                                <s:textarea name="content2" cols="150" rows="3" value="�𾴵�${t_book.membername}����Ůʿ�����ã����ѳɹ�ԤԼ${t_book.companypname}������${t_book.productname}�ײ�,ԤԼʱ��Ϊ��${t_book.answertime}�գ�ԤԼ�ŵ�Ϊ��${t_book.companyname}������ַ��������������쵱������7:30��10:30Я�����֤��������죬���ǰ�������ǰ̨��ʾ���֤�����˶��ţ�����ע�����ǰһ���������ʳ���쵱����ո���" id="memo2" />					            
                              </td>                             
                            </tr>
                  
							<tr align="center">
                   		      <td height="24" bgcolor="#F2F2F2" colspan="10">	
								<input type="button" class="btn" value="    ���Ͷ���    " name="B1"  onClick="addsubmit2()">
								<input type="button" class="btn" value="    �ر�    " name="B1" onClick="javascript:window.close()">
								<!-- 
								<input type="button" class="btn" value="    ����    " name="B1" onClick="javascript:history.back(-1)">                      
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