<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@include file="../../taglibs.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_order信息编辑页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
<style type="text/css">
<!--
.STYLE5 {	color: #000000;
	font-size: 12px;
}
-->
</style>
</head>
<script type="text/javascript" language="javascript">

function tijiao(){
 form1.action="<%=basePath%>T_orderActionSHTG.action";
 form1.submit();
}

function tuihui(){
 form1.action="<%=basePath%>T_orderActionTH.action";
 form1.submit();
}	
	
function   fprint()
{  try{
		   demo.style.display=(demo.style.display == "none")?"block":"none";
		   window.print();
		   demo.style.display = "block";
	  }catch(e){ alert("请注意你的打印机：\n\n.可能打印机还没准备好；\n.可能打印机出现了故障。");}
	   
}	
</script>
<body onload="" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">·待办任务&gt;&gt; 待审核订单&gt;&gt;办理</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" ><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">待办理订单信息</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">·基本信息：</td>
                            </tr>	   				 
							<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">订单编号</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.id }&nbsp;
                              <s:hidden  id="id" name="id" value="${t_order.id }" />
                              </td>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">订单状态 </td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.checkstatus }&nbsp;</td>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">创建日期</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.createtime }&nbsp;</td>                                                            
                            </tr>                            
                            <tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">订单总金额</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.saleprice }&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">订单金额成本金额</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${ orderCostAll }&nbsp;</td>                                                          
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">创建人</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.creater }&nbsp;</td>                                                          
                            </tr> 
   	                          
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">·客户信息：</td>
                            </tr>		                                                       
							<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">客户名称</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.customername }&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">联系人</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;***<!-- ${t_order.linkman }  -->&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">联系方式</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;***<!--  ${t_order.linktel }  -->&nbsp;</td>                                                          
                            </tr>

                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">·费用相关信息：</td>
                            </tr>		  				            
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">车费(元)</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.malecost}&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">住宿费(元)</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.marriedcost }&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">差旅费用(元)</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.unmarriedcost }&nbsp;</td>                                                          
                            </tr>
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">其它费用(元)</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.maleprice }&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">其它费用原因</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.reason }&nbsp;</td>
                             <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">毛利率</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                              	<fmt:formatNumber value="${ (( t_order.saleprice - t_order.saleprice*0.0555 - orderCostAll - t_order.malecost  - t_order.marriedcost  - t_order.unmarriedcost -  t_order.maleprice )/  t_order.saleprice)*100  }" pattern="0.00"/>%&nbsp;
                              </td>                     
           					<tr>
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">其它条款</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF"  colspan="5">&nbsp;
                              <s:textarea name="memo2" cols="130" rows="3" value="${t_order.memo2 }" id="memo2" />&nbsp;长度不能512个汉字
                              </td>                             
                            </tr>                         
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="10">·订单套餐信息：</td>
                            </tr>	                     
                            <tr>
		                        <td valign="top" bgcolor="cbcbcb"  colspan="8">
			                        <table id="table0" width="100%" border="0" cellspacing="0" cellpadding="0">
			                           <tr>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>套餐名称</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>体检机构</td>
										<!-- <td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>体检门店</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>成本价</td> 
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>原销售价</td>-->
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>销售价格</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>人员数量</td>										
									   </tr>      
									  
									  <s:iterator value="t_order_subList" status="stuts">  
									   <tr>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ memo }</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ companypname }</td>
										<!--<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ companyname }</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ cost }</td> 
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ profit }</td>-->
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ saleprice }</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ num }</td>
										
									   </tr>   
									   </s:iterator>    
									                    					      							   
								    </table>
		                        </td>
		                    </tr>			                  
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">·流程历史审批意见：</td>
                            </tr>		  				            

                        <s:iterator value="t_ideaList" status="stuts">
							<tr>
							  <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">审批人</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${checker}&nbsp;</td>                             
                              <td width="15%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">审批角色</td>
                              <td width="15%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${rolename }&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">意见</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${result };${idea }&nbsp;</td> 
                            </tr>                          
                        </s:iterator> 
                         
                            <tr>
                              <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">·本次审批意见：</td>
                            </tr>		  				            
           					<tr>
           					  <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">审批人</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${sessionScope.userName}&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">审批角色</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${sessionScope.userRoles}&nbsp;</td>  
                              <td width="10%" height="50" align="right" valign="middle" bgcolor="#FFFFFF">意见</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                              	<input type="text" name="idea" id="idea" size="50" maxlength="50">                             	
                              </td>    					        
                            </tr>   
                            
        
                        </table>
						</td>
                      </tr>
					  
					</table>
                      </td>
                </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
		
<div  id="demo" style="display:block" align="center">

<% if(request.getSession().getAttribute("userRoles").toString().contains("总部客服岗")){ %>
<input  type="button"  class="btn"  name="shtg"  value="    确定    "  onClick="tijiao()"  > &nbsp;&nbsp;
<% }else if(request.getSession().getAttribute("userRoles").toString().contains("分公司行政岗")){ %>
<input  type="button"  class="btn"  name="shtg"  value="    合同扫描回销    "  onClick="tijiao()"  > &nbsp;&nbsp;
<input  type="button"  class="btn"  name="dy"  value="    查看/打印合同    "  onClick="window.open('<%=basePath %>T_orderActionHTView.action?id=${t_order.id }')"  > &nbsp;&nbsp;
<input  type="button"  class="btn"  name="th"  value="    退回    "  onClick="tuihui()"  > &nbsp;&nbsp;
<% }else{ %>	
<input  type="button"  class="btn"  name="shtg"  value="    审核通过    "  onClick="tijiao()"  > &nbsp;&nbsp;	
<input  type="button"  class="btn"  name="th"  value="    退回    "  onClick="tuihui()"  > &nbsp;&nbsp;
<%} %>

<input  type="button"  class="btn"  name="dy"  value="    打印订单    "  onClick="fprint()"  > &nbsp;&nbsp;
<input  type="button"  class="btn"  name="B1"  value="    返回    "  onClick="javascript:history.back(-1)"/>

</div>
<br>
</s:form>
</body>
</html>
	