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
<title>T_card��Ϣ�б�ҳ</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
    <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
</head>

<script>
//��ʾ�������
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}
</script>
<script type="text/javascript" language="javascript">
function check(){
	var fileName =document.getElementById("fileName").value;
    if(""==fileName||null==fileName){
    	//alert(fileName);
    	alert("��ѡ��Ҫ�ϴ�����Ŀ��ļ�(.xls��ʽ)");
    	
        return false;
    }
    form1.action = "<%=basePath %>T_uploadAction.action";
    form1.submit();
}

</script>
<body class="mainBody"  onLoad='jo()' leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>


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
                  <td height="50" valign="top" >

                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >����Ϣ��ѯ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_cardActionList" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">
							  &nbsp;&nbsp;
							  ����<s:textfield  name="cardno" maxlength='20'  label="cardno"/>							  
							  ����<s:textfield  name="memo2" maxlength='20'  label="memo2"/> &nbsp;&nbsp;
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;����Ϣ�б�ҳ&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����</strong></th>          
					            <!-- 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��Ч��</strong></th>                   
					             -->
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��������</strong></th>   					                              
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">������</strong></th>
					            <!--
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����������</strong></th>   					                             
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��������</strong></th>          
					             -->
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">״̬</strong></th>          
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;����&nbsp;</strong></th>					          
                            </tr>
                          <s:iterator value="paginationSupport.items"    >
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
							  <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="cardno" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo2" />					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	${importdate }				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	${importcreator }			                 					                   
					          </td>	
					          	<!-- 			        
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="bookdate" />			                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="bookdealer" />			                 					                   
					          </td>
					          	 -->		                 					                   					         						 
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="status" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
		               
					   <s:if test="%{status=='�����'}">
                          	<a href='<s:url action="T_cardActionEdit_CK.action"><s:param name="id"   value="id" /></s:url>'>
                          	<img src='<%= basePath %>images/modify.png' border="0"   height="15" >����</a>&nbsp;					  
					   </s:if>     	
					   <s:if test="%{status=='�ѳ���'}">
				          	<a href='<s:url action="T_cardActionEdit_JH.action"><s:param name="id" value="id" /></s:url>'>
				          	<img src='<%= basePath %>images/modify.png' border="0"     height="15" >����</a>&nbsp;
   				       </s:if>     	
    
					   <s:if test="%{status=='�Ѽ���'}">
				              	<a href='<s:url action="T_cardActionEdit_HX.action"><s:param name="id" value="id" /></s:url>'>
				              	<img src='<%= basePath %>images/modify.png' border="0"    height="15" >����</a>&nbsp
				       </s:if>     	
    
    <!--
					          	<a href='<s:url action="T_cardActionEdit1.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/modify.png' border="0" alt="����" title="����"  height="15" >����</a>&nbsp;
                              	<a href='<s:url action="T_cardActionEdit2.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="����" title="����"  height="15" >����/����</a>&nbsp;
					          	<a href='<s:url action="T_cardActionRemove.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="ɾ��" title="ɾ��"  height="15" >ɾ��</a>&nbsp; -->
					          	 <a href='<s:url action="T_cardActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="�鿴" title="�鿴"  height="15" >�鿴</a>
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="/T_cardActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="cardno" value="t_card.cardno" />
							 	<s:param name="memo2" value="t_card.memo2" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/T_cardActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="cardno" value="t_card.cardno" />
							 	<s:param name="memo2" value="t_card.memo2" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/T_cardActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="cardno" value="t_card.cardno" />
							 	<s:param name="memo2" value="t_card.memo2" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/T_cardActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="cardno" value="t_card.cardno" />
							 	<s:param name="memo2" value="t_card.memo2" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>βҳ</a>
							 ��<s:property value="paginationSupport.totalCount"  />�� 									
					      </td>
                        </tr>
                      <tr>
                     
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			              <input type="button" name="add" value="    ���    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_card/t_cardAdd.jsp"/>'" style="cursor:hand">&nbsp;
			              <s:form name="form1" action=""   theme="simple"  enctype="multipart/form-data"  >  
			               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			              �ϴ�����Ϣ�ļ�<s:file name="myFile" id="fileName"  />
			              <input type="button" name="add" value="    �������    " class="btn" onclick="check()" style="cursor:hand">&nbsp;
			              <br>
			              <%
			              String messerro = (String)request.getAttribute("messerro");
			              if(null!=messerro&&!"".equals(messerro)){
			            	  out.println("<font color='red'>"+messerro+"</font>");
			              }
			             
			              %>
			              </s:form>		            
                         </td>
                         
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
