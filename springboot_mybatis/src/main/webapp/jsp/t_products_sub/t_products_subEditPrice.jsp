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
<title>���ۼ۸����ҳ</title>
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
<script type="text/javascript" language="javascript">
 //�ύ
	function check(){	

	    var xsfdbl = document.getElementById('xsfdbl').value;		
		if(xsfdbl==null || xsfdbl ==''){
		    alert("����۵�����������Ϊ�գ�");
			return false;
		}	

		if(isNaN(xsfdbl) ){
		    alert("����۸������������Ϊ���֣�");
			return false;
		}		
	   
		form1.action = "<%= basePath %>T_products_subActionUpdatePrice.action";
		form1.submit();
		alert("�����ɹ���");
		
	}
</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="" theme="simple" name="form1" >
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">��ҵ�����&gt;&gt; �����Ŀ����۸����</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">�����Ŀ����۸����</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����۸��������(��ԭ�ɱ��ۻ������ϸ�����):</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<s:textfield  name="t_products_sub.xsfdbl"    id="xsfdbl" value="" maxlength="3"/>%,������1-100֮������֣��磺50						        	     	 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr> 
                            
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">ע������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                              	һ�����������������Ŀ�� �½���۸� = �ɱ��� * �� 1 + ����������						    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>				
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${sessionScope.userName }			    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>							
	                         <!--  
	                        <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����ʱ��:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    <s:datetimepicker name="t_products_sub.createdate" value="today" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/> 
							  
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            -->

							<tr align="center">
                   		      <td height="24" bgcolor="#F2F2F2" colspan="4">	
								<input class="btn" type="button" value="    ����    " name="B1" onclick="check()">
								<input class="btn" type="reset" value="    ����    " name="B2">
								<input class="btn" type="button" value="    �鿴�����������Ŀ�۸�    " name="B3" onClick="window.location.href='<%=basePath %>T_products_subActionList.action'">		
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
&nbsp;&nbsp;<font color="red"><s:fielderror /></font>
</s:form>
</body>
</html>
	