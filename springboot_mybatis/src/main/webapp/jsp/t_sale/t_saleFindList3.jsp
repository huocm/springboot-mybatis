<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_sale��Ϣ�б�ҳ</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/myAjax.js'/>" ></script>
</head>
<script>
//����ʹ��
var domok=document.all||document.getElementById
if (domok)
document.write('<SCRIPT SRC="<s:url value='/js/sorttable.js'/>" ><\/SCRIPT>')
</script>

<script type="text/javascript">
//��ѯ�ͻ��ϴν��׼۸��õ�
var fieldname;

function checkSaleNum(temp){
    //document.getElementById("tjck").disabled   =   false; 
    var salenum = document.getElementById("salenum;"+temp);
    if(parseInt(salenum.value)<0){
   		alert("��������"+salenum.value+"�������0��");
		document.getElementById("tjck").disabled   =   true; 
		return false;
    }else{
		document.getElementById("tjck").disabled   =   false;
	}
	
    //alert("salenum="+salenum);
    var num = document.getElementById("num;"+temp).value;
    //alert("num="+num);
    if(parseInt(salenum.value) > parseInt(num)){
       alert("�������������"+salenum.value+"���ڱ����ο��"+num+"�����ܳ��⣬��������ӵ������������Ҫ���⣬���ȸ��¿���㹻��");
       salenum.focus;
	   return false;
    }
}

//�����ϴ����۸��þ����̵ļ۸�
//function findLastPrice(temp){
function findLastPrice(){
    //�ȸ�ֵ���ɻص�����ʹ�ø�ֵ
    //fieldname = temp;
    //alert("fieldname="+fieldname);
    var customerid = self.parent.document.getElementById("customerid").value;
    var productid = self.parent.document.getElementById("productid").value;
    //alert("customerid="+customerid+"&productid="+productid);
	var url = '<%=bathPath%>jsp/t_sale/findLastPrice.jsp?time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content ="customerid="+customerid+"&productid="+productid; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",callBackFindLastPrice );
}

function callBackFindLastPrice(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
        	var results = http_request.responseText;
			//var results = http_request.responseXML.getElementsByTagName("price");
			//alert(results.length);
			var msg1 = document.getElementById("saleprice");			
			//for(var i = 0; i < results.length; i++) {			     	
            if(results!=null){
                 //msg1.value= results[0].getAttribute("id");	
                 
                 //alert(results);
                 //var msg2 = document.getElementById( fieldname );
                 var msg2 = document.getElementById("saleprice");
                 //alert(msg2);
                 msg2.value= results ;
                 
                 //var msg = document.getElementById("showJyPrice");
                 //msg.innerHTML = "<font color='red'>�������ۼ۸�"+results+"&nbsp;</font>";		            
            }

        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
    }

}

function init(){
     findLastPrice();
     window.setTimeout("slectCustomer()", 1000);
}

</script>
<body  onload="init()"  class="mainBody" leftmargin="0" topmargin="-20" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="/jsp/t_sale/t_saleSort.jsp" name="form1" theme="simple">    
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF">
          <table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%"  border="0" cellspacing="5" cellpadding="0">
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="1%" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td width="19%" align="left"  background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;��������Ʒ��Ϣ&nbsp;</td>
                              <td width="80%" align="right" background="<s:url value='/images/1_27.gif'/>" class="daohang">
                              	<div id="showJyPrice"></div>
                              </td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="#cbcbcb">

                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                            <tr> 
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��Ʒ����</strong></th>                          
					           	<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ɱ���</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��������</strong></th>          
					            <!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�������</strong></th>          
					             -->
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�������</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��λ</strong></th>
         					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���۵���(Ԫ)</strong></th>                       
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����</strong></th>               					            					                            
       			                <!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����</strong></th>
                                 -->
                            </tr> 
                         <s:iterator value="paginationSupport.items" status="stuts">
							<tr  bgcolor="#FFFFFF" align="center">   							
					          					        
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<!-- pid:<s:property value="pid" /> ����(id):<s:property value="id" /> productid:<s:property value="productid" /> ����: -->
					            	<s:property value="name" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="price" />&nbsp;				                 					                   
					          </td>				         
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="createdate" nice="false" format="yyyy-MM-dd" />&nbsp;				                 					                   
					          </td>
					          <!-- <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="buydate" nice="false" format="yyyy-MM-dd" />&nbsp;					                 					                   
					          </td> -->
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="standard" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="num" />&nbsp;
					            	<input type="hidden" id="num;<s:property value='id'/>" name="num<s:property value='id'/>" value="<s:property value="num" />">					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="type" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<input type="text" id="saleprice" name="saleprice;<s:property value='id'/>" value=""  size="5" maxlength="5" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
                                <input type="text" id="<s:property value='id'/>" name="salenum;<s:property value='id'/>"  size="3" maxlength="6" onBlur="checkSaleNum(<s:property value='id'/>)"/>	
                                <input type="hidden" name="paras;<s:property value='id'/>" value="<s:property value='id'/>;<s:property value='name'/>;<s:property value='company' />;<s:property value='price'/>;<s:date name='createdate' nice='false' format='yyyy-MM-dd'/>;<s:property value='standard'/>;<s:property value='num'/>;<s:property value='type'/>;<s:property value='productid'/>;<s:property value='pid'/>">		            	 			                 					                   
					          </td>
					          </td> 					          
					        </tr>					      
					      </s:iterator>

					    </table>

					    </td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="T_buyActionSaleFind1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 	<s:param name="id" value="%{t_buy.sid}" />
							 	<s:param name="pid" value="%{t_buy.spid}" />
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="T_buyActionSaleFind1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 	<s:param name="id" value="%{t_buy.sid}" />
							 	<s:param name="pid" value="%{t_buy.spid}" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="T_buyActionSaleFind1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 	<s:param name="id" value="%{t_buy.sid}" />
							 	<s:param name="pid" value="%{t_buy.spid}" />
							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="T_buyActionSaleFind1.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 	<s:param name="id" value="%{t_buy.sid}" />
							 	<s:param name="pid" value="%{t_buy.spid}" />
							 </s:url>'>βҳ</a>
							 ��<s:property value="paginationSupport.totalCount"  />��
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							 <input  type="button" id="tjck" name="tjck" value="   ��ӵ����ⵥ   " class="btn"  onClick="document.form1.submit();">&nbsp; 									
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

<script type="text/javascript">
function confirmTrade(flag){
    //var customerid = document.getElementById("customerid").value;
    //window.parent.location.href='<%=bathPath%>jsp/t_sale/t_saleConfirm.jsp?customerid='+customerid;
    
    var customerid = self.parent.document.getElementById("customerid").value;
    if(customerid ==""){
    	alert("��ѡ��ͻ���");
    	return false;
    }
    if(flag==1){        
    	document.form2.action='<%=bathPath%>jsp/t_sale/t_salePrint.jsp?customerid='+customerid;
    	document.form2.target='_blank';
    }else if(flag==2){
   		document.form2.action='<%=bathPath%>jsp/t_sale/t_saleConfirm.jsp?customerid='+customerid;
   		document.form2.target='_self';
    }

    document.form2.submit();
    //window.parent.location.href='<%=bathPath%>jsp/t_sale/t_saleConfirm.jsp';
}

</script>

<%@ page import="java.util.*" %>
<%@ page import="com.jxc.domain.*" %>

<form action="" name="form2" method="post" >

<table id="table0" width="98%" border="1" cellspacing="0" cellpadding="0">
 <tr> 
  <td colspan="4" height="25" align="left" valign="middle"  class="daohang" >
    &nbsp; ��ǰ���ⵥ��������Ʒ  
  </td>
  <td  height="25" align="center" valign="middle"  class="daohang" >
    &nbsp;<input type="button" name="cq" value="  ����  " class="btn"  onClick="confirmTrade(2)" >&nbsp;   
  </td>
 </tr>
 <tr> 
     <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��Ʒ����</strong></th>
     <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��λ</strong></th>
     <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����</strong></th>
     <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���۵���(Ԫ)</strong></th>                                           
     <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ܽ��(Ԫ)</strong></th>            
    </tr>    
<%
    Map map = (HashMap)session.getAttribute("trade");
	if(map!=null){
	    Iterator it = map.values().iterator();
		T_sale vo = new T_sale();
		while(it.hasNext()){
			vo  = (T_sale)it.next();
			%>
			<tr> 
		     <td height="25" align="center" valign="middle">&nbsp;
		     <!-- pid:<%= vo.getPid() %> ����(id):<%= vo.getId() %> productid:<%= vo.getProductid() %> -->
		      <%= vo.getName() %> <%= vo.getMemo() %>
		     </td>
		     <td height="25" align="center" valign="middle">&nbsp;<%= vo.getType() %></td>
		     <td height="25" align="center" valign="middle">&nbsp;<%= vo.getSalenum() %></td>
		     <td height="25" align="center" valign="middle">&nbsp;<%= vo.getSaleprice() %></td>		     
		     <td height="25" align="center" valign="middle">&nbsp;<%= vo.getSalenum()*vo.getSaleprice() %></td>
		    </tr>  
			<%		
		}
	}
%>
   <tr> 
     <td colspan="7" height="25" align="center" valign="middle"  class="daohang" >
  		<input type="button" name="qc" value="  ɾ�����ⵥ����Ʒ  " class="btn"  onClick="window.location.href='<%=bathPath%>jsp/t_sale/t_saleTradeClean.jsp'" />&nbsp;
		<input type="button" name="dy" value="  ��ӡ���ⵥ  " class="btn"  onClick="confirmTrade(1)">&nbsp;
     </td>
   <tr>
</table>
</form>
</body>
</html>
