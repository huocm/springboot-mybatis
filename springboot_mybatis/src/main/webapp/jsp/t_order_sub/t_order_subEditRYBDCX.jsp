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
<title>T_order_sub信息编辑页</title>
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
<script type="text/javascript" language="javascript">
function  jsOrderAmount(){
       var num = document.getElementById('num').value;		
       var saleprice = document.getElementById('saleprice').value;	
       	
       var totalamount = document.getElementById('totalamount');	  
       var  temp  = num * saleprice ;
       //alert(temp);
       totalamount.value= temp  ;
}

 //提交
function check(){	

	     //alert("-----------1------------------");
	    var orderid = document.getElementById('orderid').value;		
		if(orderid==null || orderid ==''){
		    alert("订单编号不能为空！");
			return false;
		}	
		//alert("-----------2------------------");		
	    var tcmc = document.getElementById('tcmc').value;		
		if(tcmc==null || tcmc ==''){
		    alert("套餐名称不能为空！");
			return false;
		}	
		//alert("-----------3------------------");
	   // var saleprice = document.getElementById('saleprice').value;		
		//if(saleprice==null || saleprice ==''){
		 //   alert("销售价不能为空！");
		//	return false;
		//}	
		//if(isNaN(saleprice) ){
	    //alert("打折后价格必须为数字！");
		//	return false;
		//}

		//alert("-----------4------------------");
	   // var num = document.getElementById('num').value;		
		//if(num==null || num ==''){
		//    alert("人员数量不能为空！");
		//	return false;
		//}	
		//if(isNaN(num) ){
	    //alert("人员数量必须为数字！");
		//	return false;
		//}	
		
		//var totalamount = document.getElementById('totalamount').value;		
		//if(totalamount==null || totalamount ==''){
		//    alert("套餐总价不能为空！");
		//	return false;
		//}
				
		form1.action = "<%= basePath %>T_order_subTaocanUpdateBDRY.action";
		form1.submit();
		
}

</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<s:form action="" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">·业务管理&gt;&gt; 订单管理&gt;&gt; 套餐人员绑定</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">订单套餐人员绑定信息编辑页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">订单编号:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							    ${t_order_sub.orderid}
							  </td>
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">套餐名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							    ${t_order_sub.memo}
							  </td>
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检机构及结算价格:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							    ${t_order_sub.companypname}
							  </td>
                            </tr>
				
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">该套餐销售价格:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                    ${t_order_sub.saleprice}
							   <s:hidden  name="orderid"  id="orderid" value="${t_order_sub.orderid}" />
							   <s:hidden  name="tcmc"  id="tcmc" value="${t_order_sub.memo}" />
							   <s:hidden  name="saleprice"  id="tcmc" value="${t_order_sub.saleprice}" />
							  </td>
                            </tr>		

                            <tr>
		                        <td valign="top" bgcolor="cbcbcb"  colspan="8">
			                        <table id="table0" width="100%" border="1" cellspacing="0" cellpadding="0">
			                           <tr>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'> 选择</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>客户姓名</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>原套餐</td>
									   </tr>      
									  
									  <s:iterator value="t_memberList"   status="stuts">
									   <tr>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'> <input type='checkbox'  name='memberids' value='${memberid}' /></td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ name } </td>									
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ memo }</td>
										</td>
									   </tr>   
									   </s:iterator>    
									                    					      							   
								    </table>
		                        </td>
		                    </tr>			                           
							
							<tr align="center">
                   		      <td height="24" bgcolor="#F2F2F2" colspan="4">	
								<!--
								<input class="btn" type="button" value="    保存    " name="B1"  onClick="check()">
								
								<input class="btn" type="reset" value="    重填    " name="B2"> -->
								<input class="btn" type="button" value="    返回    " name="B3"   onClick="window.location.href='<%=basePath %>T_orderActionEdit.action?id=${t_order_sub.orderid }'">		
								
								<!-- 
								<input class="btn" type="button" value="    返回    " name="B3"   onClick="window.history.go(-1)">		
						       -->
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

</s:form>
</body>
</html>
	