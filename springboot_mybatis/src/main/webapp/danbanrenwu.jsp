<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<META http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<!-- 
<meta http-equiv="refresh" content="10;url=<%=basePath%>T_danbanrenwuAction.action">
 -->
<title>����������Ϣ�б�ҳ</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
    <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>    
</head>
<script>
//��ʾ�������
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}



//window.setInterval(function(){shuaxin();},10000);
function shuaxin() {
	<%
	//response.sendRedirect(basePath+"T_danbanrenwuAction.action");
	%>
}

</script>
<body onload="" class="mainBody"  onLoad='jo()'  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">����������&gt;&gt; ����˶���</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="50" valign="top" >

                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >����˶�����Ϣ��ѯ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_danbanrenwuAction.action" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">
							  &nbsp;&nbsp;
							  �ͻ�����<s:textfield  name="customername" maxlength='20'  label="cardno"/>	&nbsp;&nbsp;						  
							  ������<s:textfield  name="creater" maxlength='20'  label="memo"/> &nbsp;&nbsp;
							  <!-- ������<s:textfield  name="creater" maxlength='20'  label="memo"/> &nbsp;&nbsp; -->
							    <input type="submit" class="btn" value="    ��ѯ    " name="B1">
								<input type="reset"  class="btn" value="    ���    " name="B2">
							  </td>                             
                            </tr>	
                              </s:form>																		   
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

<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="3">
                <tr>
                  <td height="229" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;������Ϣ�б�ҳ&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�������</strong></th> 
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ͻ�����</strong></th>                               
					           	<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����״̬</strong></th>    					                    					            					                                                                                                                       
					          	<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����������</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����ʱ��</strong></th>  
					                    					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��ǰ��˽�ɫ</strong></th>          					           					                    					           	
					           	<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�������(Ԫ)</strong></th>					           						           	      
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;����&nbsp;</strong></th>					          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					    
					    
					    <s:if test="'${currentstatus}' == '1'"> 
					    
					    
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" />					          			                 					                   
					          </td>					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customername" />			                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	${checkstatus }					                 					                   
					          </td>				          					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="creater" />                 					                   
					          </td>					        					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="createtime" />      					                   
					          </td>
					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="currentrole" />					                   
					          </td>
						          	
					          <td height="25" align="center" valign="middle">&nbsp;					            	
					            		<fmt:formatNumber value="${saleprice}" pattern="0.00"/> 			                 					                   
					          </td>						          				          
					          <td height="25" align="center" valign="middle">&nbsp;
					         	
					          	<a href='<s:url action="T_orderActionViewBL.action"><s:param name="id" value="id" />
					          	<s:param name="returnUrl" value="view" /></s:url>'>
					          	<img src='<%= basePath %>images/modify.png' border="0" alt="����" title="����"  height="15" >����</a>
					          </td>
					        </tr>		
					 
					 </s:if>	
					 
					 			      
					      </s:iterator>
					    </table></td>
                      </tr>
                     
                      
                    </table></td>
                </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>

</body>
</html>
