<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@include file="../../taglibs.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<%
response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
response.setHeader("Pragma","no-cache"); //HTTP 1.0
response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_order��Ϣ�༭ҳ</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
<style type="text/css">
<!--
.STYLE5 {	color: #000000;
	font-size: 12px;
}
-->
</style>
</head>
<script type="text/javascript" language="javascript">
   //�ύ
function check(){	
        
	   
	    var orderid = document.getElementById('orderid').value;		
		if(orderid==null || orderid ==''){
		    alert("������Ų���Ϊ�գ�");
			return false;
		}	

	   // var orderamount = document.getElementById('orderamount').value;		
		//if(orderamount==null || orderamount ==''||orderamount=='0.0'){
		//    alert("���Ȳ������½�'������Ա�������ײͼ۸�'���ٱ��棡");
		//	return false;
		//}	
		
		
	    //var saleprice = document.getElementById('saleprice').value;		
		//if(saleprice==null || saleprice ==''||saleprice=='0.0'){
		//    alert("���Ȳ������½�'������Ա�������ײͼ۸�'���ٱ��棡��");
		//	return false;
		//}	
		
	    //var checker = document.getElementById('checker').value;		
		//if(checker==null || checker ==''){
		//    alert("����˲���Ϊ�գ�");
		//	return false;
		//}	
		
	    var malecost = document.getElementById('malecost').value;		
		if( malecost!=null ){
		    if(isNaN(malecost) ){
		        alert("���ѱ���Ϊ���֣�");
				return false;
			}
		}
	    var marriedcost = document.getElementById('marriedcost').value;		
		if( marriedcost!=null ){
		    if(isNaN(marriedcost) ){
		        alert("ס�޷ѱ���Ϊ���֣�");
				return false;
			}
		}	
	    var unmarriedcost = document.getElementById('unmarriedcost').value;		
		if( unmarriedcost!=null ){
		    if(isNaN(unmarriedcost) ){
		        alert("���÷ѱ���Ϊ���֣�");
				return false;
			}
		}
	    var maleprice = document.getElementById('maleprice').value;		
		if( maleprice!=null ){
		    if(isNaN(maleprice) ){
		        alert("�������ñ���Ϊ���֣�");
				return false;
			}
		}
	   
		var num = document.getElementById('num').value;		
		if( num!=null ){
		    if(isNaN(num) ){
		        alert("�������Ϊ���֣�");
				return false;
			}
		}						
		form1.action = "<%= basePath %>T_orderActionUpdate.action";
		form1.submit();
		
}

function  jsOrderAmount(){
       var num = document.getElementById('num').value;		
       var saleprice = document.getElementById('saleprice').value;	
       	
       var orderamount = document.getElementById('orderamount');	  
       var  temp  = num * saleprice ;
       //alert(temp);
       orderamount.value= temp  ;
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
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">���������&gt;&gt; ��������</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">������Ϣ�޸�</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">��������Ϣ��</td>
                            </tr>	   				 
							<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">�������</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.id }&nbsp;
	                              <s:hidden  name="checkstatus"   value="δ�ύ"/>						          
						          <s:hidden  name="orderamount"   value="${t_order.orderamount }"/>
						          <s:hidden  name="saleprice"   value="${t_order.saleprice }"/>
	                              <s:hidden  id="orderid" name="orderid" value="${t_order.id }" />
                              </td>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">����״̬ </td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.checkstatus }&nbsp;</td>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">��������</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.createtime }&nbsp;</td>                                                            
                            </tr>                            
                            <tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">����ܽ��</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.saleprice }&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">���ɱ����</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp; ${orderCostAll } &nbsp;</td>                                                          
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">������</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.creater }&nbsp;</td>                                                          
                            </tr> 
   	        
                          
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">���ͻ���Ϣ��</td>
                            </tr>		                                                       
							<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">�ͻ�����</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.customername }&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">��ϵ��</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;***<!-- ${t_order.linkman }  -->&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">��ϵ��ʽ</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;***<!-- ${t_order.linktel } -->&nbsp;</td>                                                          
                            </tr>

                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">�����������Ϣ��</td>
                            </tr>		  				            
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">����(Ԫ)</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;<s:textfield  name="malecost"  maxlength="7" value="${t_order.malecost }" id="malecost" />&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">ס�޷�(Ԫ)</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;<s:textfield  name="marriedcost" maxlength="7" value="${t_order.marriedcost }" id="marriedcost" />&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">���÷���(Ԫ)</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;<s:textfield  name="unmarriedcost"  maxlength="7" value="${t_order.unmarriedcost }" id="unmarriedcost" />&nbsp;</td>                                                          
                            </tr>
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">��������(Ԫ)</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;<s:textfield  name="maleprice"  maxlength="7" value="${t_order.maleprice }" id="maleprice" />&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">��������ԭ��</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;<s:textfield  name="reason"  maxlength="50" value="${t_order.reason }" size="50" id="reason" />&nbsp;</td>                       							                                                                                         
                             <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">ë����</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                              	<fmt:formatNumber value="${ (( t_order.saleprice +t_order.num - t_order.saleprice*0.0555 - orderCostAll - t_order.malecost  - t_order.marriedcost  - t_order.unmarriedcost -  t_order.maleprice )/  (t_order.saleprice + t_order.num) )*100  }" pattern="0.00"/>%&nbsp;
                              
                              </td>                     
           					</tr>
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">����(Ԫ)</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;<s:textfield  name="num"  maxlength="7" value="${t_order.num }" id="num" />&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">��ע(�������)</td>
                              <td width="30%" colspan="4" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;<s:textfield  name="memo"  maxlength="50" value="${t_order.memo }" size="50" id="memo" />&nbsp;</td>                       							                                                                                         
                              <!-- 
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">&nbsp;</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;</td>                     
           					 -->
           					</tr>
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">��������</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF"  colspan="5">&nbsp;
                              <s:textarea name="memo2" cols="130" rows="3" value="${t_order.memo2 }" id="memo2" />&nbsp;���Ȳ���512������
                              </td>                             
                            </tr>
                                                                                                          
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">�������ײ���Ϣ��<font color="red" >(ע��:���ȡ��������ۼ۸񡯣�Ȼ�������������ײͶ�Ӧ��Ա��,�����ӻ�ɾ���������Ŀ�������������������ۼ۸񡯺͡������ײͶ�Ӧ��Ա��)</font></td>
                            </tr>	                
                            <tr>
		                        <td valign="top" bgcolor="cbcbcb"  colspan="8">
			                        <table id="table0" width="100%" border="1" cellspacing="0" cellpadding="0">
			                           <tr>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>�ײ�����</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>������</td>
										<!-- <td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>����ŵ�</td> -->
										<!--<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>�ɱ���</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>��̼۸�</td> -->
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>���ۼ۸�</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>��Ա����</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>����</td>
									   </tr>      
									  
									  <s:iterator value="t_order_subList"   status="stuts">
									   <tr>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'> ${ memo }</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>
									        ${ companypname }
                                        </td>
										<!-- <td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ companyname }</td> -->
										<!-- <td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ cost }</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ profit }</td> -->
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ saleprice }</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ num }</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>
										<a href='<%=basePath%>T_editTaocanJG.action?orderid=${ orderid }&tcmc=${ memo }'><img src='<%= basePath %>images/modify.png' border='0'  height='15' >�������ۼ۸�</a>
										<!--  <a href='<%=basePath%>T_editTaocanRYBDCX.action?orderid=${ orderid }&tcmc=${ memo }&customerid=${t_order.customerid }'><img src='<%= basePath %>images/modify.png' border='0'  height='15' >���ײ���Ա</a>-->
										&nbsp;&nbsp;&nbsp;&nbsp;<a href='<%=basePath%>jsp/t_customer/t_memberImport.jsp?id=${orderid}&customerid=${t_order.customerid}&orderid=${ orderid }&tcmc=${ memo }&customerid=${t_order.customerid }'><img src='<%= basePath %>images/modify.png' border='0'  height='15' >�����ײͶ�Ӧ��Ա</a>
										&nbsp;&nbsp;&nbsp;&nbsp;<a href='<%=basePath%>T_editTaocanRYBDCX.action?orderid=${ orderid }&tcmc=${ memo }&customerid=${t_order.customerid }'><img src='<%= basePath %>images/modify.png' border='0'  height='15' >�鿴�ײ���Ա</a>
										</td>
									   </tr>   
									   </s:iterator>    
									                    					      							   
								    </table>
		                        </td>
		                    </tr>			                  
                      
							<tr align="center">
                   		      <td height="24" bgcolor="#F2F2F2" colspan="10">	
								<input class="btn" type="button" value="    ����    " name="XG"   onClick="check()">
								<input class="btn" type="reset" value="    ����    " name="CT">
								<input class="btn" type="button" value="    ����    " name="FH" onClick="window.location.href='<%=basePath%>T_orderActionList.action'">	
								&nbsp;&nbsp;<br><font color="red"><s:fielderror /></font>	
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
	