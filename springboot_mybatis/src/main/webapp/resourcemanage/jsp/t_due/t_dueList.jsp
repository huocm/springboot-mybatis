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
<title>T_due��Ϣ�б�ҳ</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
</head>
<script>
//��ʾ�������
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}
</script>
<body class="mainBody"  onLoad='jo()'  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="T_dueActionRemoveBatch.action" theme="simple">

<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td height="3" bgcolor="2d6094"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom" background="<s:url value='/images/1_09.gif'/>"><span class="daohang">�����񱨱�&gt;&gt; ����֧�����û��ܱ�</span></td>
      </tr>
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;��� ����֧�ַ��û��ܱ�&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" >
                            <tr>
	         			        <td width="" colspan="3" height="40" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����</strong></td>
					            
					            <td width=""  colspan="3"  height="40" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Ӧ��</strong></td> 					            	         			        
 					                     
					            <td width="" colspan="3" height="40" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">˰/���ܽ��</strong></td>                  					                      	         				
					                 
					            <td width="" height="40" alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">ë��</strong></td>					          
                            </tr>
                            <tr>
	         			        <td wid<td="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Ӧ�տ��ܽ��</strong></td>
					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���տ��ܽ��</strong></td>                    
					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Ӧ��δ�տ��ܽ��</strong></td>  

					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Ӧ�����ܽ��</strong></td> 					            	         			        
					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�Ѹ����ܽ��</strong></td>                   
					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Ӧ��δ�����ܽ��</strong></td> 
					                     
					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�����ܽ��</strong></td>                  					                      
					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�Ѹ������ܽ��</strong></td>          
					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">˰�ܽ��</strong></td>         
					            <td width="" height="30"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;</strong></td>					          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					           <td height="25" align="center" valign="middle">&nbsp;
					    	
					            		<fmt:formatNumber value="${totalshouldreceive}" pattern="0.00"/>			                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	
					            		<fmt:formatNumber value="${totalreceived}" pattern="0.00"/>					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	
					            		<fmt:formatNumber value="${totalshouldreceive -totalreceived }" pattern="0.00"/>						                 					                   
					          </td>		

					          <td height="25" align="center" valign="middle">&nbsp;
					            
					            		<fmt:formatNumber value="${totalshouldpay}" pattern="0.00"/>				                 					                   
					          </td>					          
					          <td height="25" align="center" valign="middle">&nbsp;
						
					            		<fmt:formatNumber value="${totalpayed}" pattern="0.00"/>		                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	
					            			<fmt:formatNumber value="${totalshouldpay - 	totalpayed}" pattern="0.00"/>				                 					                   
					          </td>
					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            
					            		<fmt:formatNumber value="${totalfee}" pattern="0.00"/>				                 					                   
					          </td>			         
					          <td height="25" align="center" valign="middle">&nbsp;
					            		
					            		<fmt:formatNumber value="${totalsalary}" pattern="0.00"/>				                 					                   
					          </td>					       					          				          
					          <td height="25" align="center" valign="middle">&nbsp;�ݲ�ͳ��
					           	<!-- 	<fmt:formatNumber value="${totalshouldreceive - 	totalshouldreceive*0.1}" pattern="0.00"/>	-->			                 					                          
					          </td>		
					          
					          <td height="25" align="center" valign="middle">&nbsp;
					          	<!-- <fmt:formatNumber value="${totalshouldreceive - totalshouldpay - totalfee -  totalshouldreceive*0.1 - totalsalary}" pattern="0.00"/>-->			
                              	<fmt:formatNumber value="${totalshouldreceive - totalshouldpay - totalfee  - totalsalary}" pattern="0.00"/>
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="/T_dueActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/T_dueActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/T_dueActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/T_dueActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>βҳ</a>
							 ��<s:property value="paginationSupport.totalCount"  />�� 									
					      </td>
                        </tr>
                      <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			             <!--  <input type="button" name="add" value="    ����    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_due/t_dueAdd.jsp"/>'" style="cursor:hand">&nbsp;
			              <input type="submit" name="del" value="    ɾ��    " class="btn">
                         -->
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
	
</s:form>
</body>
</html>
