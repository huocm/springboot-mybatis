<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@include file="../../taglibs.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_card��Ϣ����ҳ</title>
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

	    var cardno = document.getElementById('cardno').value;		
		if(cardno==null || cardno ==''){
		    alert("���Ų���Ϊ�գ�");
			return false;
		}	
		var security = document.getElementById('security').value;		
		if(security==null || security ==''){
		    alert("���벻��Ϊ�գ�");
			return false;
		}
		var memo2 = document.getElementById('memo2').value;		
		if(memo2==null || memo2 ==''){
		    alert("���Ʋ���Ϊ�գ�");
			return false;
		}
		
	   // var begindateObj= dojo.widget.byId("begindate");	
	   // var begindate = begindateObj.getValue();
       // if(begindate==null || begindate ==''){
	  //	    alert("��Ч�ڿ�ʼ���ڲ���Ϊ�գ�");
	//		return false;
		//}	
	   // var offdateObj= dojo.widget.byId("offdate");	
	   // var offdate = offdateObj.getValue();
        //if(offdate==null || offdate ==''){
		 //   alert("��Ч�ڽ������ڲ���Ϊ�գ�");
		//	return false;
		//}	
		
	    var amount = document.getElementById('amount').value;		
        if(amount!=null){
        	if(isNaN(amount) ){
    		    alert("������Ϊ���֣�");
    			return false;
    		}	
        }	
		

		form1.action = "<%=basePath %>T_cardActionSave.action";
		form1.submit();
		
	}

  //��ʾ�������
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}
</script>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form  name="form1" action="" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">��ҵ�����&gt;&gt; ������</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >����Ϣ����ҳ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
			
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_card.cardno" id="cardno" maxlength='50'  label="cardno"/> <font color="#FF0000">*</font>
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:password  name="t_card.security"  id="security"  maxlength='50'  label="security"/>
							     <font color="#FF0000">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_card.memo2" id="memo2" maxlength='50'  label="memo2"/> <font color="#FF0000">*</font>
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��Ч�ڿ�ʼ����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    <s:datetimepicker name="t_card.begindate"   id="begindate"   value="today" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/> 
							   
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��Ч�ڽ�������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    <s:datetimepicker name="t_card.offdate"   id="offdate"  value="today" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/> 
							   
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>							
					
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">¼����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${userName}
					            	<s:hidden  name="t_card.importcreator"   value="${userName}" />							    
							  	<s:hidden  name="t_card.status"  value="�����" />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��ֵ���:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_card.amount"   id="amount" maxlength="5"/>
							      
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>							
														
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="button" class="btn" value="    ����    " name="B1"  onClick="check()">
								<input type="reset"  class="btn" value="    ����    " name="B2">
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
	