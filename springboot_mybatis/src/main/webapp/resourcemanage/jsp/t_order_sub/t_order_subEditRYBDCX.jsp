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
<title>T_order_sub��Ϣ�༭ҳ</title>
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

 //�ύ
function check(){	

	     //alert("-----------1------------------");
	    var orderid = document.getElementById('orderid').value;		
		if(orderid==null || orderid ==''){
		    alert("������Ų���Ϊ�գ�");
			return false;
		}	
		//alert("-----------2------------------");		
	    var tcmc = document.getElementById('tcmc').value;		
		if(tcmc==null || tcmc ==''){
		    alert("�ײ����Ʋ���Ϊ�գ�");
			return false;
		}	
		//alert("-----------3------------------");
	   // var saleprice = document.getElementById('saleprice').value;		
		//if(saleprice==null || saleprice ==''){
		 //   alert("���ۼ۲���Ϊ�գ�");
		//	return false;
		//}	
		//if(isNaN(saleprice) ){
	    //alert("���ۺ�۸����Ϊ���֣�");
		//	return false;
		//}

		//alert("-----------4------------------");
	   // var num = document.getElementById('num').value;		
		//if(num==null || num ==''){
		//    alert("��Ա��������Ϊ�գ�");
		//	return false;
		//}	
		//if(isNaN(num) ){
	    //alert("��Ա��������Ϊ���֣�");
		//	return false;
		//}	
		
		//var totalamount = document.getElementById('totalamount').value;		
		//if(totalamount==null || totalamount ==''){
		//    alert("�ײ��ܼ۲���Ϊ�գ�");
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
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">��ҵ�����&gt;&gt; ��������&gt;&gt; �ײ���Ա��</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">�����ײ���Ա����Ϣ�༭ҳ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							    ${t_order_sub.orderid}
							  </td>
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ײ�����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							    ${t_order_sub.memo}
							  </td>
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">������������۸�:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							    ${t_order_sub.companypname}
							  </td>
                            </tr>
				
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">���ײ����ۼ۸�:</td>
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
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'> ѡ��</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>�ͻ�����</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>ԭ�ײ�</td>
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
								<input class="btn" type="button" value="    ����    " name="B1"  onClick="check()">
								
								<input class="btn" type="reset" value="    ����    " name="B2"> -->
								<input class="btn" type="button" value="    ����    " name="B3"   onClick="window.location.href='<%=basePath %>T_orderActionEdit.action?id=${t_order_sub.orderid }'">		
								
								<!-- 
								<input class="btn" type="button" value="    ����    " name="B3"   onClick="window.history.go(-1)">		
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
	