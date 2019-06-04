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
<title>应收账款详细信息页</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/myAjax.js'/>" ></script>
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
</head>
<script type="text/javascript">

</script>

<body  onload="slectCustomer()"  class="mainBody"  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>
<s:form action="T_moneyActionFindDetail.action" name="form1" theme="simple" >
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="3">
                <tr>
                  <td valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%"  border="0" cellspacing="5" cellpadding="0">
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;应收账款详细信息列表&nbsp;
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;应收账款更新日期 从:<s:datetimepicker id="startdate" name="startdate" value="today" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/>
							  到:<s:datetimepicker id="enddate" name="enddate" value="today" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/>							   
							  &nbsp;&nbsp;<input type="submit" class="btn" value="    查询    " name="B1" >								
                              <input type="hidden" name="customerid" value="<%= request.getParameter("customerid")%>" >
                              </td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="#cbcbcb">

                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                            <tr>                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">编号</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">操作人</strong></th>                   
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">更新日期</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客户</strong></th>                     
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">本次收到应收款金额</strong></th>               					            					                            
                                <!--  <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">操作</strong></th>  
                            -->
                            </tr> 
                         <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">   							
					          					        
     				          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" />&nbsp;				                 					                   
					          </td>
     				          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="user" />&nbsp;				                 					                   
					          </td>					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="createdate" nice="false" format="yyyy-MM-dd" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customername" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					                <s:text name="format.money">
									    <s:param name="value" value="money" />
									</s:text>&nbsp;			                 					                   
					          </td>

					          <!--<td height="25" align="center" valign="middle">&nbsp;
					            	 
					            	<a href='<%=bathPath %>jsp/t_money/t_moneyEdit.jsp?customerid=<%= request.getParameter("customerid")%>&tradeno=<s:property value="tradeno" />&customername=<s:property value="customername" />&saleamount=<s:text name="format.money"><s:param name="value" value="saleamount" /></s:text>&money=<s:text name="format.money"><s:param name="value" value="money" /></s:text>&qianmoney=<s:text name="format.money"><s:param name="value" value="saleamount -money" /></s:text>&createdate=<s:date name="createdate" nice="false" format="yyyy-MM-dd" />&user<s:property value="user" />' >更新应收款</a>&nbsp;				                 					                   
					                 
					          </td>-->	
					        </tr>					      
					      </s:iterator>

					    </table>

					    </td>
                      </tr>
                      <tr>
                        <td height="22" align="right" colspan="100" bgcolor="#FFFFFF">
							 已收到总金额:<s:text name="format.money">
									    <s:param name="value" value="paginationSupport.receivemoney" />
									</s:text>元	&nbsp; 									
					      </td>
                        </tr>
                      <!-- <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="T_moneyActionFind.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 	<s:param name="customerid" value="%{t_trade.scustomerid}" />
							 	<s:param name="startdate" value="%{t_trade.startdate}" />
							 	<s:param name="enddate" value="%{t_trade.enddate}" />							 	
							 </s:url>'>首页</a>
							 <a href='<s:url value="T_moneyActionFind.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 	<s:param name="customerid" value="%{t_trade.scustomerid}" />
							 	<s:param name="startdate" value="%{t_trade.startdate}" />
							 	<s:param name="enddate" value="%{t_trade.enddate}" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="T_moneyActionFind.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 	<s:param name="customerid" value="%{t_trade.scustomerid}" />
							 	<s:param name="startdate" value="%{t_trade.startdate}" />
							 	<s:param name="enddate" value="%{t_trade.enddate}" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="T_moneyActionFind.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 	<s:param name="customerid" value="%{t_trade.scustomerid}" />
							 	<s:param name="startdate" value="%{t_trade.startdate}" />
							 	<s:param name="enddate" value="%{t_trade.enddate}" />
							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条&nbsp; 									
					      </td>
                        </tr> -->
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
<script  language="javascript">
//使用说明：只要在在信息页面包含本页面即可。如；
function   fprint()
{  try{
		   demo.style.display=(demo.style.display == "none")?"block":"none";
		   window.print();
		   demo.style.display = "block";
	  }catch(e){ alert("请注意你的打印机：\n\n.可能打印机还没准备好；\n.可能打印机出现了故障。");} 
}
</script>
<div id=demo style="display:block" align="center">
<input  type="button"  name="dy"  value="打印"  onclick="fprint()"  > &nbsp;&nbsp;
<!-- <input  type="button"  name="gb"  value="关闭"  onclick="window.close()"  > -->
</div>


</body>
</html>
