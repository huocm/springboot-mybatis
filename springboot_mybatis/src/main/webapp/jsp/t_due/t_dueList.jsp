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
<title>T_due信息列表页</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
</head>
<script>
//提示操作结果
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
        <td width="839" valign="bottom" background="<s:url value='/images/1_09.gif'/>"><span class="daohang">·财务报表&gt;&gt; 收入支出费用汇总表</span></td>
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;金程 收入支持费用汇总表&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" >
                            <tr>
	         			        <td width="" colspan="3" height="40" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">收入</strong></td>
					            
					            <td width=""  colspan="3"  height="40" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">应付</strong></td> 					            	         			        
 					                     
					            <td width="" colspan="3" height="40" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">税/费总金额</strong></td>                  					                      	         				
					                 
					            <td width="" height="40" alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">毛利</strong></td>					          
                            </tr>
                            <tr>
	         			        <td wid<td="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">应收款总金额</strong></td>
					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">已收款总金额</strong></td>                    
					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">应收未收款总金额</strong></td>  

					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">应付款总金额</strong></td> 					            	         			        
					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">已付款总金额</strong></td>                   
					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">应付未付款总金额</strong></td> 
					                     
					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">费用总金额</strong></td>                  					                      
					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">已付工资总金额</strong></td>          
					            <td width="" height="30" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">税总金额</strong></td>         
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
					          <td height="25" align="center" valign="middle">&nbsp;暂不统计
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
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_dueActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_dueActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_dueActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_dueActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条 									
					      </td>
                        </tr>
                      <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			             <!--  <input type="button" name="add" value="    新增    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_due/t_dueAdd.jsp"/>'" style="cursor:hand">&nbsp;
			              <input type="submit" name="del" value="    删除    " class="btn">
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
