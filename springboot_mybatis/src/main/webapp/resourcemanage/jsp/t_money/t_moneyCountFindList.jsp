<%@ page language="java" contentType="text/html;charset=GBK" import="java.util.*" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />
<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>����ͳ����Ϣ�б�ҳ</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/myAjax.js'/>" ></script>
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
</head>

<script type="text/javascript">

</script>

<body  onload="slectCustomer()"  class="mainBody" onLoad='if (domok) initTable("table0")' leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

  <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="3">
                <tr>
                  <td valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%"  border="0" cellspacing="5" cellpadding="0">
					  <!-- <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;����ͳ����Ϣ�б�ҳ&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr> -->
                      <tr>
                        <td valign="top" bgcolor="#cbcbcb">

                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                       <tr>
                        <td height="22" align="right" colspan="100" bgcolor="#FFFFFF">
							 �����ܽ��:<s:text name="format.money">
									    <s:param name="value" value="paginationSupport.salemoney" />
									</s:text>Ԫ	
						ë�����ܽ��:<s:text name="format.money">
									    <s:param name="value" value="paginationSupport.profitsmoney" />
									</s:text>Ԫ
									&nbsp; 									
					      </td>
                        </tr>
                            
                            <tr>                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���</strong></th>                 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ͻ�</strong></th>                     
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���׽��</strong></th>
					            <!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ɱ�</strong></th>-->          					                          					            					                            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">ë����</strong></th> 
                            </tr> 
                         <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">   							
					          					        
     				          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="#stuts.index +1" />&nbsp;			                 					                   
					          </td>

					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customername" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					                <s:text name="format.money">
									    <s:param name="value" value="saleamount" />
									</s:text>&nbsp;			                 					                   
					          </td>
					         <!--  <td height="25" align="center" valign="middle">&nbsp;
					                <s:text name="format.money">
									    <s:param name="value" value="costs" />
									</s:text>&nbsp;			                 					                   
					          </td> -->
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:text name="format.money">
									    <s:param name="value" value="profits" />
									</s:text>&nbsp;			                 					                   
					          </td>

					        </tr>					      
					      </s:iterator>

					    </table>

					    </td>
                      </tr>
                      <tr>
                        <td height="22" align="right" colspan="100" bgcolor="#FFFFFF">
							 �����ܽ��:<s:text name="format.money">
									    <s:param name="value" value="paginationSupport.salemoney" />
									</s:text>Ԫ	
						ë�����ܽ��:<s:text name="format.money">
									    <s:param name="value" value="paginationSupport.profitsmoney" />
									</s:text>Ԫ
									&nbsp; 									
					      </td>
                        </tr>
                      <!-- <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="T_moneyCountActionFind.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 	<s:param name="customerid" value="%{t_trade.scustomerid}" />
							 	<s:param name="startdate" value="%{t_trade.startdate}" />
							 	<s:param name="enddate" value="%{t_trade.enddate}" />							 	
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="T_moneyCountActionFind.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 	<s:param name="customerid" value="%{t_trade.scustomerid}" />
							 	<s:param name="startdate" value="%{t_trade.startdate}" />
							 	<s:param name="enddate" value="%{t_trade.enddate}" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="T_moneyCountActionFind.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 	<s:param name="customerid" value="%{t_trade.scustomerid}" />
							 	<s:param name="startdate" value="%{t_trade.startdate}" />
							 	<s:param name="enddate" value="%{t_trade.enddate}" />
							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="T_moneyCountActionFind.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 	<s:param name="customerid" value="%{t_trade.scustomerid}" />
							 	<s:param name="startdate" value="%{t_trade.startdate}" />
							 	<s:param name="enddate" value="%{t_trade.enddate}" />
							 </s:url>'>βҳ</a>
							 ��<s:property value="paginationSupport.totalCount"  />��&nbsp; 									
					      </td>
                        </tr>-->
                    </table></td>
                </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>

<script  language="javascript">
//ʹ��˵����ֻҪ������Ϣҳ�������ҳ�漴�ɡ��磻
function   fprint()
{  try{
		   demo.style.display=(demo.style.display == "none")?"block":"none";
		   window.print();
		   demo.style.display = "block";
	  }catch(e){ alert("��ע����Ĵ�ӡ����\n\n.���ܴ�ӡ����û׼���ã�\n.���ܴ�ӡ�������˹��ϡ�");} 
}
</script>
<div id=demo style="display:block" align="center">
<input  type="button"  name="dy"  value="��ӡ"  onclick="fprint()"  > &nbsp;&nbsp;
<!-- <input  type="button"  name="gb"  value="�ر�"  onclick="window.close()"  > -->
</div>


</body>
</html>
