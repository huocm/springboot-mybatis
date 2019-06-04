<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib prefix="s" uri="/struts-tags" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�Ź�ԤԼ��Ϣ����ҳ</title>
     <link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
<script language="JavaScript" src="<%= basePath %>/js/calendar.js"></script>
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

//card��ԤԼ�ύ 
function cardYyTjcheck(){
 		var membername = document.getElementById('membername').value;		
		if(membername==null || membername ==''){
		    alert("������������Ϊ�գ�");
			return false;
		}
	    
	    var paystatus = document.getElementById('paystatus').value;		
      if(paystatus==null || paystatus ==''){
		    alert("��ѡ���Ա�");
			return false;
		}
			    
	    var memo = document.getElementById('memo').value;		
      if(memo==null || memo ==''){
		    alert("�ֻ����벻��Ϊ�գ�");
			return false;
		}
		if(memo.length!=11){
		    alert("�ֻ��������Ϊ11λ���֣�");
			return false;
		}	
		if(isNaN(memo)){
		    alert("�ֻ��������Ϊ11λ���֣�");
			return false;
		}			

	    var memo2 = document.getElementById('memo2').value;		
      if(memo2==null || memo2 ==''){
		    alert("���֤���벻��Ϊ�գ�");
			return false;
		}
		if(memo2.length!=18){
		    alert("���֤�������Ϊ18λ��");
			return false;
		}	
		//���֤��֤
		if( !checkIdcard(memo2) ) {
      	return false;
      }
      
	    var answertime = document.getElementById('answertime').value;	
	    if(answertime==null || answertime ==''){
		    alert("������ڲ���Ϊ�գ�");
			return false;
		}	

	    var starttime = document.getElementById('starttime').value;	
	    if(starttime==null || starttime ==''){
		    alert("����������ڲ���Ϊ�գ�");
			return false;
		}	
	    
	    var area = document.getElementById('area').value;		
      if(area==null || area ==''){
		    alert("�����в���Ϊ�գ�");
			return false;
		}	

	  var companypid = document.getElementById('companypid').value;		
      if(companypid==null || companypid ==''){
		    alert("����������Ϊ�գ�");
			return false;
		}	
		
	  //var companypname = document.getElementById('companypname').value;		
      //if(companypname==null || companypname ==''){
		//    alert("���������Ʋ���Ϊ�գ�");
		//	return false;
		//}	
		
		//var memberid = document.getElementById('memberid').value;		
		//if(memberid==null || memberid ==''){
		//    alert("����cardno�˺Ų���Ϊ�գ�");
		//	return false;
		//}    
		
		var companyid = document.getElementById('companyid').value;		
		if(companyid==null || companyid ==''){
		    alert("����ŵ겻��Ϊ�գ�");
			return false;
		}    

		var companyname = document.getElementById('companyname').value;		
		if(companyname==null || companyname ==''){
		    alert("����ŵ����Ʋ���Ϊ�գ�");
			return false;
		}    

		var productname = document.getElementById('productname').value;		
		if(productname==null || productname ==''){
		    alert("�ײ����Ʋ���Ϊ�գ�");
			return false;
		}    
		
		form1.action = "<%= basePath %>T_bookActionSaveHt.action";
		form1.submit();
		alert("ԤԼ��Ϣ�Ѿ��ύ����������ԤԼ����鿴ԤԼ��Ϣ��");
 
}

//������
function myRequest(xz){
	//alert("-------xz="+xz)
    //URLδβҪ�Ӹ�������������������ٴ��ύ 
    var url = '<%=basePath%>T_companyActionFindYyAll.action?time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var area = document.getElementById("area").value;
    var content ="area="+encodeURI(encodeURI(area))+"&xz="+xz; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",callBack );
}
        
//�ص�����
function callBack(){

	clearCompanyid();
	clearTjmd();

    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
            var companypid = document.getElementById("companypid");
			var results = http_request.responseXML.getElementsByTagName("company");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
		   
		    option = document.createElement("option");
		    option.setAttribute("value", "");
		    option.appendChild(document.createTextNode("--------------------"));
		    companypid.appendChild(option);  			
			
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    companypid.appendChild(option);  
			    //alert(option);         
            }
            //alert("���!");
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
    }
}

//������
function loadTjmd(bdxz){
    //���Ȱ�ԭ�������������
    clearTjmd();

    setCompanyHiddenValue();

    //URLδβҪ�Ӹ�������������������ٴ��ύ
    var url = '<%=basePath%>T_companyActionFindTjmdAll.action?time='+ Math.random();
		//alert(url);
		//Ҫ�ύ��������������
		var content = "pid=" + document.getElementById("companypid").value+"&bdxz="+bdxz; // "userName=" + name;
		//�����쳣�����ύ�ĺ���
		//alert(url+content);
		sendRequest("POST", url, content, "TEXT", loadTjmdCallBack);
	}

	//�ص�����
	function loadTjmdCallBack() {

		// ���������
		if (http_request.readyState == 4) {
			// ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
			if (http_request.status == 200) {
				var companyid = document.getElementById("companyid");
				var results = http_request.responseXML.getElementsByTagName("company");
				var option = null;
				var text = null;
				//alert("results="+results+",length="+results.length); 

				option = document.createElement("option");
				option.setAttribute("value", "");
				option.appendChild(document.createTextNode("--------------------"));
				companyid.appendChild(option);

				for ( var i = 0; i < results.length; i++) {
					option = document.createElement("option");
					option.setAttribute("value", results[i].getAttribute("id"));
					//option.setAttribute("value", results[i].firstChild.nodeValue);
					option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
					companyid.appendChild(option);
					//alert(option);         
				}
				//alert("���!");
				setCompanyHiddenValue();
				//���� ��������Ӧ���ײ͵���Ϣ����ѡ��
				loadKtc();
				
			} else { //ҳ�治����
				alert('���������ҳ�����쳣');
			}
		}
	}


	//�����������ؿ��ײͣ�����������pid
	function loadKtc(){
	    //���Ȱ�ԭ�������������
	    clearKtc();
	    
	    //URLδβҪ�Ӹ�������������������ٴ��ύ
	    var url = '<%=basePath%>T_productsActionFindKtc.action?time='+ Math.random();
			//alert(url);
			//Ҫ�ύ��������������
			var content = "pid=" + document.getElementById("companypid").value; // "userName=" + name;
			//�����쳣�����ύ�ĺ���
			//alert(url+content);
			sendRequest("POST", url, content, "TEXT", loadKtcCallBack);
		}

		//�ص�����
		function   loadKtcCallBack() {

			// ���������
			if (http_request.readyState == 4) {
				// ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
				if (http_request.status == 200) {
					var mubiao = document.getElementById("productname");
					var results = http_request.responseXML.getElementsByTagName("product");
					var option = null;
					var text = null;
					//alert("results="+results+",length="+results.length); 

					option = document.createElement("option");
					option.setAttribute("value", "");
					option.appendChild(document.createTextNode("--------------------"));
					mubiao.appendChild(option);

					for ( var i = 0; i < results.length; i++) {
						option = document.createElement("option");
						option.setAttribute("value", results[i].getAttribute("id"));
						//option.setAttribute("value", results[i].firstChild.nodeValue);
						option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
						mubiao.appendChild(option);
						//alert(option);         
					}					
				} else { //ҳ�治����
					alert('���������ҳ�����쳣');
				}
			}
		}
		
	//�������ŵ�ѡ������
	function clearTjmd() {
		var obj = document.getElementById("companyid");
		while (obj.childNodes.length > 0) {
			obj.removeChild(obj.childNodes[0]);
		}
	}
	
	//�����칫˾ѡ������
	function clearCompanyid() {
		var obj = document.getElementById("companypid");
		while (obj.childNodes.length > 0) {
			obj.removeChild(obj.childNodes[0]);
		}
	}

	//��� ���ײ�ѡ������
	function clearKtc() {
		var obj = document.getElementById("productname");
		while (obj.childNodes.length > 0) {
			obj.removeChild(obj.childNodes[0]);
		}
	}
	
	function setCompanyHiddenValue() {
		//��ȡselect��option  ����
		var ss = document.form1.companypid;
		var hiddenValue = ss.options[ss.selectedIndex].text;
		//alert("name="+hiddenValue);
		//��ȡoption��text
		document.form1.companypname.value = hiddenValue;

	}

	function setTjmdHiddenValue() {
		//��ȡselect��option  ����
		var ss = document.form1.companyid;
		var hiddenValue = ss.options[ss.selectedIndex].text;
		//alert("name="+hiddenValue);
		//��ȡoption��text
		document.form1.companyname.value = hiddenValue;

	}

	//У�����֤�����Ƿ���ȷ
	function checkIdcard(num) {
		num = num.toUpperCase();
		//���֤����Ϊ15λ����18λ��15λʱȫΪ���֣�18λǰ17λΪ���֣����һλ��У��λ������Ϊ���ֻ��ַ�X��
		if (!(/(^\d{15}$)|(^\d{17}([0-9]|X)$)/.test(num))) {
			alert('��������֤�ų��Ȳ��ԣ����ߺ��벻���Ϲ涨��\n15λ����ӦȫΪ���֣�18λ����ĩλ����Ϊ���ֻ�X��');
			return false;
		}
		//У��λ����ISO 7064:1983.MOD 11-2�Ĺ涨���ɣ�X������Ϊ������10��
		//����ֱ�����������ں�У��λ
		var len, re;
		len = num.length;
		if (len == 15) {
			re = new RegExp(/^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/);
			var arrSplit = num.match(re);

			//������������Ƿ���ȷ
			var dtmBirth = new Date('19' + arrSplit[2] + '/' + arrSplit[3]
					+ '/' + arrSplit[4]);
			var bGoodDay;
			bGoodDay = (dtmBirth.getYear() == Number(arrSplit[2]))
					&& ((dtmBirth.getMonth() + 1) == Number(arrSplit[3]))
					&& (dtmBirth.getDate() == Number(arrSplit[4]));
			if (!bGoodDay) {
				alert('��������֤����������ڲ��ԣ�');
				return false;
			} else {
				//��15λ���֤ת��18λ
				//У��λ����ISO 7064:1983.MOD 11-2�Ĺ涨���ɣ�X������Ϊ������10��
				var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10,
						5, 8, 4, 2);
				var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5',
						'4', '3', '2');
				var nTemp = 0, i;
				num = num.substr(0, 6) + '19' + num.substr(6, num.length - 6);
				for (i = 0; i < 17; i++) {
					nTemp += num.substr(i, 1) * arrInt[i];
				}
				num += arrCh[nTemp % 11];
				return true;
			}
		}
		if (len == 18) {
			re = new RegExp(/^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/);
			var arrSplit = num.match(re);

			//������������Ƿ���ȷ
			var dtmBirth = new Date(arrSplit[2] + "/" + arrSplit[3] + "/"
					+ arrSplit[4]);
			var bGoodDay;
			bGoodDay = (dtmBirth.getFullYear() == Number(arrSplit[2]))
					&& ((dtmBirth.getMonth() + 1) == Number(arrSplit[3]))
					&& (dtmBirth.getDate() == Number(arrSplit[4]));
			if (!bGoodDay) {
				alert('��������֤����������ڲ��ԣ�');
				return false;
			} else {
				//����18λ���֤��У�����Ƿ���ȷ��
				//У��λ����ISO 7064:1983.MOD 11-2�Ĺ涨���ɣ�X������Ϊ������10��
				var valnum;
				var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10,
						5, 8, 4, 2);
				var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5',
						'4', '3', '2');
				var nTemp = 0, i;
				for (i = 0; i < 17; i++) {
					nTemp += num.substr(i, 1) * arrInt[i];
				}
				valnum = arrCh[nTemp % 11];
				if (valnum != num.substr(17, 1)) {
					alert('18λ���֤��У���벻��ȷ��Ӧ��Ϊ��' + valnum);
					return false;
				}
				return true;
			}
		}
		return false;
	}
	

	//��ʾ�������
	var vmessage ="<s:property value='message' />";
	if(vmessage!=""){
	    alert(vmessage);
	}	
</script>
<body onload="" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<s:form action="" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">��ҵ�����&gt;&gt; ԤԼ����&gt;&gt;�Ź�ԤԼ</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >�Ź�ԤԼ��Ϣ����ҳ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							     <input 	type="text" name="t_book.membername"
											id="membername" value="" maxlength="10" /><font color="#FF0000">*</font>	
					            	<s:hidden name="t_book.customerid" id="customerid" value="0" />
					            	<s:hidden  name="t_book.branchid" id="branchid" value="${sessionScope.branchid}"/>	
					            	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�Ա�</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<select
											name="t_book.paystatus" id="paystatus">
											<option value="">----------</option>
											<option value="1">��</option>
											<option value="2">Ů(δ��)</option>
											<option value="3">Ů(�ѻ�)</option>
										</select>								    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ֻ�����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							       <input 	type="text" name="t_book.memo" id="memo" maxlength="11">
							       <font color="#FF0000">*</font>	
							       <s:hidden  name="t_book.status"  id="status" value="1" />	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
 							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">���֤��:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							                             <input 	type="text" name="t_book.memo2" id="memo2" maxlength="18 " 	value="">
							       <font color="#FF0000">*</font>	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>                           
 							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    <input
											type="text" name="t_book.answertime" id="answertime"
											onclick='SelectDate(this)' readonly='true'> 
							    <font color="#FF0000">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�����������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    <input  type="text" name="t_book.starttime" id="starttime"   onclick='javascript:SelectDate(this)' readonly='true'>
							    <font color="#FF0000">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            				     		
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<select
											name="t_book.area" id="area" onChange="myRequest('1')">
											<option value="">----------</option>
											<option value="�Ϻ�">�Ϻ�</option>
											<option value="�Ͼ�">�Ͼ�</option>
											<option value="�人">�人</option>
											<option value="����">����</option>
										</select>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                    <select
											name="t_book.companypid" id="companypid"   onChange="loadTjmd('1')" >
											<option value="">---------------------</option>
										</select> 										
					            	<font color="red">*</font>
	                               <s:hidden id="companypname" name="t_book.companypname"   value="" />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����ŵ�:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                        <select
											name="t_book.companyid" id="companyid"
											onChange="setTjmdHiddenValue()">
											<option value="">---------------------</option>
										</select> <font color="red">*</font>
										<s:hidden id="companyname" name="t_book.companyname"  value="" />

									  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ײ�����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							       
							          <select
											name="t_book.productname" id="productname"
											onChange="">
											<option value="">---------------------</option>
										</select> <font color="red">*</font>
						     	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ͻ���ַ:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <s:textfield  name="t_book.memo3" maxlength='50'  id="memo3"/>								        
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ͻ���Դ:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <s:textfield  name="t_book.memo4" maxlength='50'  id="memo4"/>							        
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��ݵ���:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <s:textfield  name="t_book.memo5" maxlength='50'  id="memo5"/>						        
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">������֤ʱ��:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <input  type="text" name="t_book.memo6" id="memo6"   onclick='javascript:SelectDate(this)' readonly='true'>
							         								        
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                                                        										
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">ԤԼ����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                    <select name="t_book.booktype" id="booktype" >					            					            	
					            		<option value="3">�Ź�ԤԼ</option>
							        </select>
					            	<font color="red">*</font> 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>							
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="button" class="btn" value="    ����    " name="B1" onClick="cardYyTjcheck()">
								<input type="reset"  class="btn" value="    ���    " name="B2">
								<input type="button" class="btn" value="    ����    " name="B1" onClick="javascript:history.back(-1)">
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
	