<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />

<% request.setCharacterEncoding("GBK");%>
<%! //�����ַ����ķ�����
  public String codeString(String s)
    { String str=s;
       try{byte b[]=str.getBytes("iso-8859-1");
           str=new String(b);
           return str;
         }
      catch(Exception e)
         { 
		  return str;
         }
    }
    
    public String df(double d){
       String str= String.valueOf(d);
       try{
		        if( str.contains(".") ){
		            str = str.substring(0, str.indexOf(".")+3);
		        }  
		        return str;
         }
      catch(Exception e)
         { 
		  return str;
         }
     
    }
    
%>
<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_buy��Ϣ����ҳ</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/myAjax.js'/>" ></script>
<style type="text/css">
<!--
.STYLE5 {	color: #000000;
	font-size: 12px;
}
-->
</style>
</head>
<script type="text/javascript">

//������
function slectCustomer(){
    //var name;
    //if (document.getElementById("userName") != undefined) {
    //    name = document.getElementById("userName").value;
    //}
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    var url = '<%=bathPath%>T_customerActionList.action?time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content =""; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",callBackSelectCustomer );
}
        
//�ص�����
function callBackSelectCustomer(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
			var customerid = document.getElementById("customerid");
			var results = http_request.responseXML.getElementsByTagName("customer");
			var option = null;
			var text = null;
			//alert(results.length);
			//�����һ��Ĭ����
			option = document.createElement("option");
            option.setAttribute("value", "");
			option.appendChild(document.createTextNode("ȫ��"));
			customerid.appendChild(option); 
			 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    customerid.appendChild(option);  
			    //alert(option);         
            }


        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
    }
}

function check(){
    var customerid = document.getElementById("customerid").value;
    if(customerid.length==0){
       alert("��ѡ��ͻ���");
       document.getElementById("customerid").selected;
       return false;
    }
    var pid = document.getElementById("pid").value;
    if(pid.length==0){
       alert("��ѡ��������Ʒ��");
       document.getElementById("pid").selected;
       return false;
    }
    var productid = document.getElementById("productid").value;
    if(productid.length==0){
       alert("��ѡ��ϸ����Ʒ��");
       document.getElementById("productid").selected;
       return false;
    }
    var company = document.getElementById("company").value;
    if(company.length==0){
       alert("�������������ң�");
       document.getElementById("company").focus;
       return false;
    }    
    var salenum = document.getElementById("salenum").value;
    if(salenum.length==0){
       alert("������������");
       document.getElementById("salenum").selected;
       return false;
    }
    if(isNaN(salenum)){
       alert("��������ȷ��������");
       document.getElementById("salenum").focus;
       return false;
    }
    
    var saleprice = document.getElementById("saleprice").value;
    if(saleprice.length==0){
       alert("�����뵥�ۣ�");
       document.getElementById("saleprice").focus;
       return false;
    }
    if(isNaN(saleprice)){
       alert("��������ȷ�ĵ��ۣ�");
       document.getElementById("saleprice").focus;
       return false;
    }
    
    form1.action="<%=bathPath%>jsp/t_sale/t_returnStore.jsp"
    form1.target="under";
    form1.submit();
}

//������
function myRequest(){
    //var name;
    //if (document.getElementById("userName") != undefined) {
    //    name = document.getElementById("userName").value;
    //}
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    var url = '<%=bathPath%>T_productsActionFindAll.action?time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content =""; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",callBack );
}
        
//�ص�����
function callBack(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
            var pid = document.getElementById("pid");
			var results = http_request.responseXML.getElementsByTagName("product");
			var option = null;
			var text = null;
			//alert(results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    pid.appendChild(option);  
			    //alert(option);         
            }
            // alert("���!");
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
    }
}
//������
function myRequestSubRelease(){
    var pid;
    if (document.getElementById("pid") != undefined) {
        pid = document.getElementById("pid").value;
    }
    var customerid;
    if (document.getElementById("customerid") != undefined) {
        customerid = document.getElementById("customerid").value;
    }
    
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    var url = '<%=bathPath%>T_products_subActionFindRelease.action?time='+Math.random();
    // alert(url);
    //Ҫ�ύ��������������
    var content ="pid="+pid+"&customerid="+customerid; // "userName=" + name;
    //alert(content);
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",callBackSubRelease );
    //����ϴ���ѡ   
    clear();
}
        
//�ص�����
function callBackSubRelease(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
            var productid = document.getElementById("productid");
			var results = http_request.responseXML.getElementsByTagName("product");
			var option = null;
			var text = null;
			//�����Ĭ����
			option = document.createElement("option");
			option.setAttribute("value", "");
			option.appendChild(document.createTextNode("��ѡ��"));
			productid.appendChild(option);  
			
			//alert(results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    productid.appendChild(option);  
			    //alert(option);         
            }
            // alert("���!");
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
    }
}
//������
function myRequestSub(){
    clear();
    var pid;
    if (document.getElementById("pid") != undefined) {
        pid = document.getElementById("pid").value;
    }
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    var url = '<%=bathPath%>T_products_subActionFindByPid.action?time='+Math.random();
    // alert(url);
    //Ҫ�ύ��������������
    var content ="pid="+pid; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",callBackSub );
    //����ϴ���ѡ   

}
        
//�ص�����
function callBackSub(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
            var productid = document.getElementById("productid");
			var results = http_request.responseXML.getElementsByTagName("product");
			var option = null;
			var text = null;
			//alert(results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    productid.appendChild(option);  
			    //alert(option);         
            }
            // alert("���!");
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
    }
}

//�����ϴ����۸��þ����̵ļ۸�
//function findLastPrice(temp){
function findLastPrice(){
    //�ȸ�ֵ���ɻص�����ʹ�ø�ֵ
    //fieldname = temp;
    //alert("fieldname="+fieldname);
    var customerid = document.getElementById("customerid").value;
    var productid = document.getElementById("productid").value;
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
            alert('����ѡ��ͻ������������ҳ�����쳣');
        }
    }

}

function clear(){
   var obj = document.getElementById("productid");
   while(obj.childNodes.length > 0) {
        obj.removeChild(obj.childNodes[0]);
    }

}

function init(){
	slectCustomer();
	window.setTimeout( "myRequest()", 2000);
}



</script>

<body  onload="init()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form name="form1" action="" theme="simple" >

<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">�����۹���&gt;&gt; �˻�</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="229" valign="top" >
                    
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >�˻���Ϣҳ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 						
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ͻ�:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<select id="customerid" name="customerid" ">					            					            	
					            	<option value="" >ѡ��</option>
							        </select>
					            	<font color="red">*</font>
					            	<input type="hidden" name="user" value="<%= (String)session.getAttribute("userName") %>">
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            					
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">������Ʒ����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<select id="pid" name="pid" onChange="myRequestSubRelease()"> 					            					            	
					            	<option value="" >ѡ��</option>
							        </select>
					            	<font color="red">*</font>
					            	<input type="hidden" name="user" value="<%= (String)session.getAttribute("userName") %>">
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            												
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">ϸ����Ʒ����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<select id="productid" name="productid" onChange="findLastPrice()">
					            		<option value="" >ѡ��</option>
							        </select>
					            	<font color="red">*</font><input type="button" class="btn" value="����" name="B1" onClick="myRequestSub()" >
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input name="company" type="text" id="company" maxlength='45'/><font color="red">*</font>							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <input name="saleprice" id="saleprice" type="text" value="" maxlength="6"><font color="red">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input name="salenum" type="text" value="" maxlength="6"><font color="red">*</font>							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            
                           <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                              	<s:datetimepicker name="createdate" value="today"  displayFormat="yyyy-MM-dd"/> <font color="#FF0000">*</font>							    
							  </td>
                              <td width="40%" height="24" align="right" lable="createdate" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��ע:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							    <input name="memo" type="text" value="" maxlength="6">
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="buton" class="btn" value="��ӵ��˻���" name="B1"  onclick="check()">&nbsp;
								<input type="reset"  class="btn" value="    ���    " name="B2">
						      </td>
						   </tr>					   
                         </table>
                        
						</td>
                      </tr>					  
					</table>
					
                  </td>
                </tr>
              </table>
             
             </td>
           </tr>
        </table>
       
       </td>
      </tr>
    </table>
   
   </td>
  </tr>
</table>

</s:form>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="table">
<tr>
	<td width="82%" bgcolor="#ad9875">
			<iframe src="t_returnSortShow.jsp" align="top" width="100%" scrolling="no" frameborder="0" height="500" name="under"></iframe>
	</td>
</tr>
</table>

</body>
</html>
	