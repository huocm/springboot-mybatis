<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>


<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_book��Ϣ�༭ҳ</title>
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
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="T_bookActionUpdate" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">��ҵ�����&gt;&gt; ԤԼ����</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >ԤԼ��Ϣ�޸�ҳ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">ԤԼ���</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_book.id"  id="id"  readonly="true"  /><font color="#FF0000">*</font>					    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<!-- 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��ҵ����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_book.customername" maxlength='20'  id="customername" readonly="true" /><font color="#FF0000">*</font>
					            	<s:hidden  name="t_book.customerid"  id="customerid"/>
					            	<s:hidden  name="t_book.branchid" id="branchid" />	
					            	<s:hidden  name="t_book.id" id="id" />	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							 -->
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">ԤԼ��</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_book.membername" maxlength='20'  id="membername"  readonly="true"  /><font color="#FF0000">*</font>
					            	 <!--<s:hidden  name="t_book.memberid"  id="memberid"/>--> 		
					            	 <s:hidden  name="t_book.id" id="id" />					    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�绰:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							       <s:textfield  name="t_book.memo"  maxlength="20" id="memo"  readonly="true"  /><font color="#FF0000">*</font>	
							       
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ײͲ�Ʒ����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <s:textfield  name="t_book.productname" maxlength='50'  id="productname"  readonly="true"  /><font color="#FF0000">*</font>	
							        <!--<s:hidden  name="t_book.productid"   label="productid"/>-->
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">ԭԼ���������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    ${t_book.answertime}
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">ԭԼ�������������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    ${t_book.starttime}
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Լ�����£��������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;     							     
      							     <s:datetimepicker name="t_book.answertime" id="answertime" value="today" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/> 
							    <font color="#FF0000">*</font>��ֻ���޸� Լ�����£�������ڣ�
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>	
                            						
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�Ǽ���:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_book.userid"  value="${userName}" label="userid" readonly="true"/>
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                    <s:textfield  id="companyname" name="t_book.companyname"   readonly="true" />
					            	<font color="red">*</font>
					            	<s:hidden  id="companyid" name="t_book.companyid" value=""/> 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">ԤԼ����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                              <s:hidden  id="booktype" name="t_book.booktype" value="${t_book.booktype}"/>
                                   <s:if test="${t_book.booktype}==1">��ҵԱ��ԤԼ</s:if>
                                   <s:if test="${t_book.booktype}==2">����ԤԼ</s:if>
                                   <s:if test="${t_book.booktype}==3">�Ź�ԤԼ</s:if>
					            	<font color="red">*</font> 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>	

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�Ǽ���:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_book.userid"  value="${userName}" label="userid" readonly="true"/>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ͻ���ַ:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            <s:textfield  id="memo3" name="t_book.memo3"  />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ͻ���Դ:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            <s:textfield  id="memo4" name="t_book.memo4"  />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>                            
                                                        						
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��ݵ���:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            <s:textfield  id="memo5" name="t_book.memo5"  />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>    
                            
 							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">������֤ʱ��:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					           <s:textfield  id="memo6"  name="t_book.memo6"  />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>                               

							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="submit" class="btn" value="    �޸�    " name="B1" onClick="">
								<input type="reset"  class="btn" value="    ���    " name="B2">
								<input type="button" class="btn" value="    ����    " name="B1" onClick="javascript:history.back(-1)">
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
&nbsp;&nbsp;<font color="red"><s:fielderror /></font>
</s:form>
</body>
</html>
	