<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>


<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>����������Ϣ����ҳ</title>
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
</head>
<script type="text/javascript">

    //�ύ
	function check(){	

	    var id = document.getElementById('id').value;		
		if(id==null || id ==''){
		    alert("������Ų���Ϊ�գ�");
			return false;
		}	
		var bcAmount = document.getElementById('bcAmount').value;		
		if(bcAmount==null || bcAmount ==''){
		    alert("����������ý���Ϊ�գ�");
			return false;
		}
		if(isNaN(bcAmount) ){
		    alert("����������ý�����Ϊ���֣�");
			return false;
		}			
		
		//if(parseInt(bcAmount) > parseInt(kskje)){
		//    alert("�����տ�����Դ��ڿ��տ��");
		//    return false;	
		//}
		form1.action = "<%= basePath %>T_orderActionDdfySave.action";
		form1.submit();
		
	}

</script>
<body  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
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
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">���������&gt;&gt; �������ù���</span></td>
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
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >��������������Ϣ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property  value="t_order.id"  /><s:hidden  id="id" name="id" />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>						
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					             <s:property  value="t_order.creater"   />						    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
					        
					        <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ͻ�����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;					            	
					            	<s:property value="t_order.customername" />
					            	<s:hidden  name="t_order.customerid"  />					            		
					            	<s:hidden  name="t_order.customername" />					    		    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>								
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�����ܽ��:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_order.saleprice"  />						    		    							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
  									
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">���տ���:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property value="t_order.receiveamount"   />						    		    							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">���տ���:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	${t_order.saleprice - t_order.receiveamount}
					            	<s:hidden  name="kskje" id="kskje" value="${t_order.saleprice - t_order.receiveamount}" /> 						    		    							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	${sessionScope.userName }					            						    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�������붩�����ý��:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input  name="bcAmount" id="bcAmount" value="" maxlength="8" />
							    <font color="#FF0000">(Ԫ)*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                          <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��ע:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input  name="reason" id="reason" value="" maxlength="45" />
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>            
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="button" class="btn" value="    ����    " name="B1" onclick="check()">
								<input type="reset"  class="btn" value="    ���    " name="B2">
								<input type="button" class="btn" value="    ����    " name="B3" onClick="javascript:history.back(-1)">
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
	