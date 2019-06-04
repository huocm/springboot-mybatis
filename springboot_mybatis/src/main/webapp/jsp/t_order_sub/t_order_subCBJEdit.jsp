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
        //alert("------------");
	    var id = document.getElementById('id').value;		
		if(id==null || id ==''){
		    alert("订单编号不能为空！");
			return false;
		}	
		
	    var ordersubid = document.getElementById('ordersubid').value;		
		if(ordersubid==null || ordersubid ==''){
		    alert("订单套餐名称不能为空！");
			return false;
		}	


	    var cost = document.getElementById('cost').value;		
		if(cost==null || cost ==''){
		    alert("新成本价不能为空！");
			return false;
		}	
		if(isNaN(cost) ){
	    alert("新成本价必须为数字！");
			return false;
		}
		

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
				
		form1.action = "<%= basePath %>T_order_subTaocanCBJUpdate.action";
		form1.submit();
		
}

</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<s:form action="" name="form1" theme="simple">
<table  id="tableExcel"   width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">·业务管理&gt;&gt; 订单管理--成本价修改</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">成本价编辑页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<!-- <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">套餐编号:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	${t_order_sub.ordersubid}
							  </td>
                            </tr> -->
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
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检机构:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							    ${t_order_sub.companypname}
							  </td>
                            </tr>
						
						    <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">套餐结算价(计算提成/毛利使用):</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            ${t_order_sub.profit}
							  </td>
                            </tr>  
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">销售价格:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                               ${t_order_sub.saleprice}
						      </td>
                            </tr>		
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">成本价格:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                               ${t_order_sub.cost}
                              </td>
                            </tr>		
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">新成本价格:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                               <s:textfield  name="cost"  value="${t_order_sub.cost}"  id="saleprice"  /><font color="red">*</font>
							  					      
							   <s:hidden  name="id"  id="id" value="${t_order_sub.orderid}" />
							   <s:hidden  name="ordersubid"  id="ordersubid" value="${t_order_sub.ordersubid}" />
							  
							  </td>
                            </tr>	                     
							<!--
							<tr align="center">
                   		      <td height="24" bgcolor="#F2F2F2" colspan="4">	
								<input class="btn" type="button" value="    保存    " name="B1"  onClick="check()">
								<input class="btn" type="reset" value="    重填    " name="B2">
								
								
								<input class="btn" type="button" value="    返回    " name="B3"   onClick="window.location.href='<%=basePath %>T_orderSubCbjFind.action?id=${t_order_sub.orderid }'">		
						       
						      </td>
						   </tr> --> 
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
<script  language="javascript">
function   fprint()
{  try{
		   demo.style.display=(demo.style.display == "none")?"block":"none";
		   window.print();
		   demo.style.display = "block";
	  }catch(e){ alert("请注意你的打印机：\n\n.可能打印机还没准备好；\n.可能打印机出现了故障。");}
   
		   
}
</script>

<div  id=demo style="display:block" align="center">
<br>

<input class="btn" type="button" value="    保存    " name="B1"  onClick="check()">
<input class="btn" type="reset" value="    重填    " name="B2">
<input class="btn" type="button" value="    返回    " name="B3"   onClick="window.location.href='<%=basePath %>T_orderSubCbjFind.action?id=${t_order_sub.orderid }'">								  
<input  type="button"   class="btn"    name="dy"  value="    打印    "  onclick="fprint()"  > &nbsp;&nbsp;
<input type="button"   class="btn"   value="另存为 Excel"  onclick="saveCode(tableExcel)">  

</div>
</s:form>
</body>
</html>
	