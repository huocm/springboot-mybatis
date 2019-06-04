<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK"  import="java.util.*" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_sale信息列表页</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/myAjax.js'/>" ></script>
</head>
<script>
//排序使用
var domok=document.all||document.getElementById
if (domok)
document.write('<SCRIPT SRC="<s:url value='/js/sorttable.js'/>" ><\/SCRIPT>')
</script>

<script type="text/javascript">

</script>

<body  onload="slectCustomer()"  class="mainBody" onLoad='if (domok) initTable("table0")' leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>

<s:form action="/jsp/t_sale/t_saleSort.jsp" name="form1" theme="simple">    

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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;销售记录信息列表&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="#cbcbcb">

                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                            <tr>
                            	<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">交易单编号</strong></th>                                                               
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客户名称</strong></th>                 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">商品名称</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">销售日期</strong></th>          
					            <!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">规格</strong></th> --> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">销售单价</strong></th>                       
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">销售数量</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">单位</strong></th>               					            					                            
                                <%                       
                                if(  ((List)session.getAttribute("function")).contains(26) ){ //26对应权限值为  毛利润（显示）
                                 %>
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">毛利润(元)</strong></th>
                                <%} %>
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">金额(元)</strong></th>   
                            </tr> 
                         <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">   							
					          					        
     				          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="tradeno" />&nbsp;				                 					                   
					          </td>
     				          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customername" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="productname" />&nbsp;				                 					                   
					          </td>					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="createdate" nice="false" format="yyyy-MM-dd" />&nbsp;				                 					                   
					          </td>
					         <!--  <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="standard" />&nbsp;				                 					                   
					          </td> -->
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="saleprice" />&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value='salenum'/>&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="type" />&nbsp;				                 					                   
					          </td>
					          
						      <%                       
                                if(  ((List)session.getAttribute("function")).contains(26) ){ //26对应权限值为  毛利润（显示）
                                 %>
                              <td height="25" align="center" valign="middle">&nbsp;
                                <s:text name="format.money">
									    <s:param name="value" value="profits" />
									</s:text>
							 					            	<!--<s:property value='profits'  />&nbsp;	
					            	<s:property value='salenum * (saleprice - price)'/>	-->		                 					                   
					          </td>
                                <%} %>
						     <td height="25" align="center" valign="middle">&nbsp;
					            	<s:text name="format.money">
									    <s:param name="value" value="salenum*saleprice" />
									</s:text>&nbsp;				                 					                   
					          </td>      					          

					        </tr>					      
					      </s:iterator>

					    </table>

					    </td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="T_tradeActionTradeFind.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 	<s:param name="customerid" value="%{t_trade.scustomerid}" />
							 	<s:param name="productid" value="%{t_trade.sid}" />
							 	<s:param name="pid" value="%{t_trade.spid}" />
							 	<s:param name="startdate" value="%{t_trade.startdate}" />
							 	<s:param name="enddate" value="%{t_trade.enddate}" />							 	
							 </s:url>'>首页</a>
							 <a href='<s:url value="T_tradeActionTradeFind.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 	<s:param name="customerid" value="%{t_trade.scustomerid}" />
							 	<s:param name="productid" value="%{t_trade.sid}" />
							 	<s:param name="pid" value="%{t_trade.spid}" />
							 	<s:param name="startdate" value="%{t_trade.startdate}" />
							 	<s:param name="enddate" value="%{t_trade.enddate}" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="T_tradeActionTradeFind.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 	<s:param name="customerid" value="%{t_trade.scustomerid}" />
							 	<s:param name="productid" value="%{t_trade.sid}" />
							 	<s:param name="pid" value="%{t_trade.spid}" />
							 	<s:param name="startdate" value="%{t_trade.startdate}" />
							 	<s:param name="enddate" value="%{t_trade.enddate}" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="T_tradeActionTradeFind.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 	<s:param name="customerid" value="%{t_trade.scustomerid}" />
							 	<s:param name="productid" value="%{t_trade.sid}" />
							 	<s:param name="pid" value="%{t_trade.spid}" />
							 	<s:param name="startdate" value="%{t_trade.startdate}" />
							 	<s:param name="enddate" value="%{t_trade.enddate}" />
							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条&nbsp; 									
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
