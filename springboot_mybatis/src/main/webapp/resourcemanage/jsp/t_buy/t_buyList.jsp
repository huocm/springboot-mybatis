<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_buy信息列表页</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
</head>
<script>
//排序使用
var domok=document.all||document.getElementById
if (domok)
document.write('<SCRIPT SRC="<s:url value='/js/sorttable.js'/>" ><\/SCRIPT>')
</script>
<body class="mainBody" onLoad='jo()' leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;买入商品信息列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="#cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                            <tr>                                                   
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">买入商品名称</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">生产厂家</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">单价</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">买入数量</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">金额</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">单位</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">生产日期</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">入库日期</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">规格</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">入库人</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">备注</strong></th>               					            					                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">   							
					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="name" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="company" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="price" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="buynum" />&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="amount" />&nbsp;				                 					                   
					          </td>

					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="type" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="createdate" nice="false" format="yyyy-MM-dd hh:mm:ss" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="buydate" nice="false" format="yyyy-MM-dd hh:mm:ss" />&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="standard" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="user" /> &nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo" /> &nbsp;					                 					                   
					          </td>

					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_buyActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 	<s:param name="id" value="%{t_buy.sid}" />
							 	<s:param name="pid" value="%{t_buy.spid}" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_buyActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 	<s:param name="id" value="%{t_buy.sid}" />
							 	<s:param name="pid" value="%{t_buy.spid}" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_buyActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 	<s:param name="id" value="%{t_buy.sid}" />
							 	<s:param name="pid" value="%{t_buy.spid}" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_buyActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 	<s:param name="id" value="%{t_buy.sid}" />
							 	<s:param name="pid" value="%{t_buy.spid}" />
							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条 									
					      </td>
                        </tr>
                      <!-- <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			              <input type="button" name="add" value="    买入商品    " class="btn"  onClick="javascript:window.parent.location.href='<s:url value="/jsp/t_buy/t_buyAdd.jsp" />'">&nbsp;			              
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
