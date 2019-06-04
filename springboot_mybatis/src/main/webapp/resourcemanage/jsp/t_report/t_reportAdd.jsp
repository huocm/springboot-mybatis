<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=GBK">

<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_report��Ϣ����ҳ</title>
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

<script type="text/javascript">
//������Ա�ͻ���
function load(){
	loadCustomer();
	//loadBranch(); �ŵ�loadUsers()ִ�������ٵ��ã������޷���ʾ���ݡ�
}	

//������
function loadCustomer(){
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    var url = '<%=basePath%>T_customerActionFindAllAjax.action?time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content =""; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",loadCustomerCallBack );
}
        
//�ص�����
function loadCustomerCallBack(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
            var mubiao = document.getElementById("customerid");
			var results = http_request.responseXML.getElementsByTagName("result");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    mubiao.appendChild(option);  
			    //alert(option);         
            }
            //alert("���!");
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
       
        loadCompany();
    }
}

//������
function loadCompany(){
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    var url = '<%=basePath%>T_companyActionFindAll.action?time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content =""; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",loadCompanyCallBack );
}
        
//�ص�����
function loadCompanyCallBack(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
            var companyid = document.getElementById("companyid");
			var results = http_request.responseXML.getElementsByTagName("company");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    companyid.appendChild(option);  
			    //alert(option);         
            }
            //alert("���!");
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
    }
}

 //������
function loadOrderByCustomerid(customerid){
    
    //URLδβҪ�Ӹ�������������������ٴ��ύ, encodeURI(encodeURI(hiddenValue)) �����java����2�δ����Ӧ����ֹajax������������
    var url = '<%=basePath%>loadOrderByCustomerid.action?customerid='+customerid+'&time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content =""; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",loadOrderByCustomeridCallBack );
}
       
//�ص�����
function loadOrderByCustomeridCallBack(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
            var mubiao = document.getElementById("memo");
			var results = http_request.responseXML.getElementsByTagName("product");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    mubiao.appendChild(option);  
			    //alert(option);         
			   
			    //������챨���Ӧ��������ֶ�memoֵΪ ajaxȡ�õ�ֵ
			    //document.form1.memo.value =  results[i].getAttribute("id")
            }
            //alert("���!");
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
    }
}    

//������
function loadProductByCompanyname(hiddenValue){
    //URLδβҪ�Ӹ�������������������ٴ��ύ, encodeURI(encodeURI(hiddenValue)) �����java����2�δ����Ӧ����ֹajax������������
    var url = '<%=basePath%>T_productsActionFindAll.action?companyname='+encodeURI(encodeURI(hiddenValue))+'&time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content =""; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",loadProductByCompanynameCallBack );
}
       
//�ص�����
function loadProductByCompanynameCallBack(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
            var productname = document.getElementById("productid");
			var results = http_request.responseXML.getElementsByTagName("product");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    productname.appendChild(option);  
			    //alert(option);         
            }
            //alert("���!");
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
    }
}

//�����칫˾ѡ������
function clearOrderno(){
   var obj = document.getElementById("memo");
   while(obj.childNodes.length > 0) {
        obj.removeChild(obj.childNodes[0]);
    }
   document.getElementById("booktype").value="";
   document.getElementById("booktypename").value="";
   document.getElementById("company").value="";
   document.getElementById("cost").value="";
}

//���µ��Ӵ���
function selectMember(){
	//����������ҵ�����ͬ�š�Ϊ�ա�
	clearOrderno();

	var returnValue ="";
	var staffname = document.getElementById("staffname").value;
	if(null==staffname||""==staffname){
	   alert("�������������������Ȼ���ٵ�� 'ѡ��' ��ť��");
	   return false;
	}

	var winSettings = "center:yes;resizable:yes;dialogHeight:400px;menubar:yes; scrollbars:yes; location:no; status:no";
	//alert("111111111111");
	//showModalDialogģʽ���Ǹ�Ϊdivģʽ���Ϳ��Խ��chorm������֧��showModalDialog�������ˡ�
	//IE
	if(window.ActiveXObject){   
		//���ز���
		returnValue = window.showModalDialog("<%= basePath %>T_bookerSelect.action?yyrmc="+encodeURI(encodeURI(staffname))+"&time="+Math.random(),staffname,winSettings);		
		//����ֱ������ֵ����
		setReturnValueToObject(returnValue);
	}
	 //��IE
	else{ 
		returnValue = window.open("<%= basePath %>T_bookerSelect.action?yyrmc="+encodeURI(encodeURI(staffname))+"&time="+Math.random(),staffname,winSettings);
	    //alert("��IEreturnValue="+returnValue);
	    //�˴�������ֱ������ֵ��������Ϊchorm������showModalDialog�� ֻ������ҳ����ֱ�ӵ���setReturnValueToObject(returnValue)������
	}
	
}

//���ݷ���ֵ�Զ�������ֵ
function  setReturnValueToObject(returnValue){
	    //alert("-------------");
	    if(returnValue==null){
		   alert("���������������ȷ����Ϊ��ԤԼ������û�в鵽�� ����˻���û�е����ȷ������ť!");
		}else{
		   var returnValues = new Array( );
		   //retvalue= 0${membername};$1{ customername};$2{ companyname};$3{ memberid};$4{ customerid};$5{ companyid};$6{ booktype};$7{ costall};$8{ productname};$9{ content};$10{ priceall };$11{ bookid } 
		   returnValues = returnValue.split(";");
		   //document.getElementById("staffname").value = returnValues[0];
		   //�����Ǵ�0��ʼ��
		   
		   document.getElementById('staffname').value=returnValues[0];
		   
		   if(returnValues[6]==1||returnValues[6]=='1'){
		   		document.getElementById("booktypename").value = "��ԱԤԼ";
		   		document.getElementById("booktype").value = "1";
		   }else if(returnValues[6]==2||returnValues[6]=='2'){
		   		document.getElementById("booktypename").value = "��ԤԼ";
		   		document.getElementById("booktype").value = "2";
		   }else if(returnValues[6]==3||returnValues[6]=='3'){
		   		document.getElementById("booktypename").value = "�Ź�ԤԼ";
		   		document.getElementById("booktype").value = "3";
		   }
		   //document.getElementById("customername").value = returnValues[1];
		   document.getElementById("customerid").value = returnValues[4];
		   document.getElementById("customername").value = returnValues[1];
		   	   
		   document.getElementById("company").value = returnValues[2];
		   document.getElementById("companyid").value = returnValues[5];
		   document.getElementById("productname").value = returnValues[8];
		   document.getElementById("cost").value = returnValues[7];  
		   //memo2��ŵ�¼���˺Ż��߿��ţ������¼�󣬸���memo2��ֵ��ѯ���Ӧ�� ��챨�棬���ܸ������Ĳ飬��Ϊ���ĸ���¼�˶�Ӧ���ϡ�
		   document.getElementById('memo2').value=returnValues[9];
	       document.getElementById("saleprice").value = returnValues[10]; 
	       document.getElementById("bookid").value = returnValues[11]; 
//alert("---bookid="+returnValues[11]);
	       //����ǿ�ԤԼ��customerid = 0������ǿ�ԤԼ������Ҫ�鶩���ţ�����ǳ�ԱԤԼ����Ҫ��ѯ������
	       var customeridValue =  document.getElementById('customerid').value;
	       //alert(customeridValue);
		   if(customeridValue!=0){
		      loadOrderByCustomerid(document.getElementById('customerid').value);
		   }
		}
}

//�ύ
function check(){	
		var staffname = document.getElementById('staffname').value;		
		if(staffname==null || staffname ==''){
		    alert("�������������Ϊ�գ�");
			return false;
		}

		//------------------------------------------��Ҫ���ݿ�ԤԼ ������ҵ��ԱԤԼ���ж������߼��Ƿ�Ҫ�ж�-----------------------------------------------------------
	    //var customername = document.getElementById('customername').value;		
		//if(customername==null || customername ==''){
		//    alert("��ҵ���Ʋ���Ϊ�գ�");
		//	return false;
		//}
		
	
		var booktype = document.getElementById('booktype').value;		
		if(booktype==null || booktype ==''){
		    alert("ԤԼ���Ͳ���Ϊ�գ�");
			return false;
		}						
	    //alert("-------�ύ-------"+customername);
		var company = document.getElementById('company').value;		
		if(company==null || company ==''){
		    alert("����������Ϊ�գ�");
			return false;
		}
		
		var bookid = document.getElementById('bookid').value;		
		if(bookid==null || bookid ==''){
		    alert("ԤԼ��Ų���Ϊ�գ�");
			return false;
		}
		
		//alert("-------�ύ-------"+company);	
		var cost = document.getElementById('cost').value;		
		if(cost==null || cost ==''){
		    alert("֧������������Ϊ�գ�");
			return false;
		}
		if(isNaN(cost) ){
		    alert("֧��������������Ϊ���֣�");
			return false;
		}	

		//var myFile = document.getElementById('myFile').value;		
		//if(myFile==null || myFile ==''){
		//    alert("��챨���ļ�����Ϊ�գ�");
		//	return false;
		//}
					
	    var user = document.getElementById('user').value;		
		if(user==null || user ==''){
		    alert("¼���˲���Ϊ�գ�");
			return false;
		}	

		form1.action = "<%= basePath %>T_reportActionSaveUpload.action?time="+Math.random();
		form1.submit();
		
}

</script>

<body onload="" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<s:form  name="form1" theme="simple"  enctype="multipart/form-data"  >
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">��ҵ�����&gt;&gt; �����ά��</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >�������Ϣ����ҳ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							 <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">���������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_report.staffname" maxlength='300'  id="staffname"/>					     
                                    <input type="button" class="btn" value="    ��ѯ    " name="CX" onclick="selectMember()"> 
                                    </select><font color="#FF0000">*��¼����ȷ��ԤԼ�ˡ�������,�����޷�������챨��</font>								    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr> 
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">ԤԼ����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                              <s:textfield  name="booktypename"  id="booktypename"  readonly="true" />		<font color="#FF0000">*</font>		
					            	<s:hidden  name="t_report.booktype"  id="booktype"  />		
					            	<s:hidden  name="t_report.bookid"  id="bookid"  />					    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2" readonly="true" >&nbsp;</td>                                                           
                            </tr>

                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_report.company"  id="company"  readonly="true" />&nbsp;<font color="#FF0000">*</font>	
					            	<s:hidden  name="t_report.companyid"  id="companyid"/>
					            	<s:hidden  name="t_report.cost"     id="cost"   />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                             <!--                             
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">Ӧ֧�����������(�ɱ�):</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_report.cost" maxlength='8'  id="cost"/>	<font color="#FF0000">*</font>							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                             -->
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ײͲ�Ʒ����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <s:textfield  name="t_report.productname"   id="productname"  readonly="true" />
							        <s:hidden  name="t_report.productid"  id="productid" />
							        <s:hidden  name="t_report.customerid"  id="customerid"/>	
							        <s:hidden  name="t_report.customername"  id="customername"/>
							        <s:hidden  name="t_report.memo2"  id="memo2"/>	
							        <s:hidden  name="t_report.saleprice"  id="saleprice"/>	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<!--
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��ҵ����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_report.customername"  id="customername"  readonly="true" />	
					            						    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr> 
                             -->   
                               
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��ҵ�����ͬ���:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<select  name="t_report.memo"  id="memo" >
					            		<option value="">--------------------</option>
					            	</select>
					            						    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>               				         
                           
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">ѡ����챨���ļ�:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:file name="myFile" id="myFile" accept="image/bmp,image/png,image/gif,image/jpeg" />
                                         <font color="red">*</font>(bmp,png,gif,jpeg,pdf,xls,xlsx��ʽ�����ܳ���5M)					    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>					

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">¼����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							    ${userName}
							    <s:hidden  name="t_report.user" id="user" value="${userName}" />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<!-- 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_report.cardid" maxlength='45'  label="cardid"/>							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                             -->
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">  
                                &nbsp;&nbsp;<font color="red"><s:fielderror /></font><br>                              	
	                      		<input type="button" class="btn" value="    ���������    " name="bctjjg" onclick="check()">
								<input type="reset"  class="btn" value="    ���    " name="qc">
								<input type="button" class="btn" value="    ����    " name="fh" onClick="javascript:history.back(-1)">
						      </td>
						   </tr>
                            <tr>
                              <td width="100%" colspan="3" height="24" align="center" valign="middle" bgcolor="#F2F2F2">
                                 &nbsp;&nbsp;
                                 <font color="red">
                                 <%=(request.getAttribute("messerro")==null)?"":(request.getAttribute("messerro")) %>
                                 ${message}
                                 <s:fielderror />
                                 <s:actionmessage/>
                                 </font>&nbsp;&nbsp;
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
</body>
</html>
	