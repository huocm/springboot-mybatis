<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_products_sub信息编辑页</title>
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
<script type="text/javascript">
function check(){
    var xl = document.getElementById("pid").value;
    if(xl.length==0){
       alert("请选择体检机构！");
       return false;
    }
    var name = document.getElementById("name").value;
    if(name.length==0){
       alert("请输入科目名称！");
       return false;
    }
    var memo = document.getElementById("memo").value;
    if(memo.length==0){
       alert("请输入体项目构！");
       return false;
    }
    var cost = document.getElementById("cost").value;
    if(cost.length==0){
        alert("请输入成本价！");
        return false;
    }
    if(isNaN(cost)){
        alert("成本价请输入数字");
        return false;
    }
    var cost1 = document.getElementById("cost1").value;
    if(cost1.length==0){
       alert("请输入机构成本价！");
       return false;
    }
    if(isNaN(cost1)){
    	alert("机构成本价请输入数字");
        return false;
    }
    var price = document.getElementById("price").value;
    if(price.length==0){
       alert("请输入结算价格！");
       return false;
    }
    if(isNaN(price)){
    	alert("结算价格请输入数字");
        return false;
    }
    
  /*  var amount = document.getElementById("amount").value;
    if(amount.length==0){
       alert("请输入金程价格！");
       return false;
    }
    if(isNaN(amount)){
    	alert("金程价格请输入数字");
        return false;
    }*/
    form1.action="<%=basePath%>T_products_subActionUpdate.action";
    form1.submit();

}

</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action=""   name="form1"     theme="simple">

<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">·业务管理&gt;&gt; 体检项目管理</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" ><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="229" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">体检项目信息编辑页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检项目编号:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_products_sub.id"    label="id" readonly="true"/>
							    <font color="#FF0000">*</font>
							  </td>
                            </tr>					
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检机构:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<s:textfield   id="company"   name="t_products_sub.company"    label="company" readonly="true"/>
					            	<s:hidden  name="t_products_sub.companyid"  value="${t_products_sub.companyid}" /> 
					                <s:hidden  id="pid"  name="t_products_sub.pid"  value="${t_products_sub.pid}" />    
					                <s:hidden  name="t_products_sub.levels"  value="${t_products_sub.levels}" />		
							        	     	   <font color="#FF0000">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr> 
                            
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">科目名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  id="name"   name="t_products_sub.name" maxlength='45'  label="name"/>  <font color="#FF0000">*</font>
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>				
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检项目:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield    id="memo"    name="t_products_sub.memo" maxlength='45'  label="memo"/>  <font color="#FF0000">*</font>							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>							
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">临床意义:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield    id="memo2"   name="t_products_sub.memo2" maxlength='45'  label="memo2"/>							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                              <tr>
                                  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">历史成本价:</td>
                                  <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                      <s:textfield   id="historycost"    name="t_products_sub.historycost" maxlength='45' readonly="true"  label="historycost"/>	  <font color="#FF0000">*</font>
                                  </td>
                                  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
                              </tr>
                              <tr>
                                  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">机构成本价:</td>
                                  <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                      <s:textfield   id="cost1"    name="t_products_sub.cost1" maxlength='45'  label="cost1"/>	  <font color="#FF0000">*</font>
                                  </td>
                                  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
                              </tr>
                              <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">成本价:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield   id="cost"    name="t_products_sub.cost" maxlength='45' label="cost"/>	  <font color="#FF0000">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">结算价(业务提成价格):</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield   id="price"    name="t_products_sub.price" maxlength='45'  label="cost"/>	  <font color="#FF0000">*</font>						    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                           <tr>
							 <%-- <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">金程价格:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield    id="amount"    name="t_products_sub.amount" maxlength='45'  label="price"/>	  <font color="#FF0000">*</font>						    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>--%>
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">创建时间:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    <!--<s:textfield  name="t_products_sub.createdate" maxlength='20'  label="createdate"/>
      							        <s:hidden  name="t_products_sub.cost"  value="0" />
							            <s:hidden  name="t_products_sub.price"  value="0" />
      							    -->
      							    <s:datetimepicker name="t_products_sub.createdate" value="today" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/> 
							        					        
							    <font color="#FF0000">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>                      

							<tr align="center">
                   		      <td height="24" bgcolor="#F2F2F2" colspan="4">	
								<input class="btn" type="button" value="    修改    " name="B1"   onclick="check()">
								<input class="btn" type="reset" value="    重填    " name="B2">
								<input class="btn" type="button" value="    返回    " name="fh" onClick="window.location.href='<%=basePath%>jsp/t_products_sub/t_products_subList.jsp'">
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
&nbsp;&nbsp;<font color="red"><s:fielderror /></font>
</s:form>
</body>
</html>
	