<%@ page language="java" contentType="text/html;charset=GBK"
	pageEncoding="GBK" errorPage="Error.jsp"%>
<%//@include file="sessionCustomerValidate.jsp" %>
<%@include file="taglibs.jsp" %>
<%@ page import="com.jxc.domain.T_card"%>
<%@ page import="com.jxc.domain.T_member"%>

<%
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ request.getContextPath()+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>��̽���_�������_ȫ��λ����������������</title>
<meta name="keywords" content="���,��̽������,�������,�������,��������,��̽���" />
<meta name="description"
	content="��̽������������ȫ�����ȵ�������ģ��ǽ�����졢�����ٽ�����ҽ���Ϻ�˽�˱���ҽ���Ƚ����������ļ�����;�ṩ�������(�����/Ů�����)������������ҵԱ������ȫ��λ�����������" />

<link href="css/sub_css/jincheng.css" rel="stylesheet" type="text/css" />
<link href="css/sub_css/reservationform.css" rel="stylesheet" type="text/css" />

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<script src="<%=basePath2 %>js/jquery-1.6.min.js" type="text/javascript"></script>
<script language="JavaScript" src="<%= basePath2 %>/js/myAjax.js"></script>
<!--<script language="JavaScript" src="<%= basePath2 %>jscript/date.js" ></script>    -->
<script language="JavaScript" src="<%= basePath2 %>/js/calendar.js"></script>

</head>
<script type="text/javascript">
    
     //��ԱԤԼ�ύ
	function memberTjCheck(){	
	
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

	    var starttime = document.getElementById('starttime').value;	
	    if(starttime==null || starttime ==''){
		    alert("����������ڲ���Ϊ�գ�");
			return false;
		}	
	    
		//var rds = document.getElementsByName("companyid");
        //var ckd = "0";
        //for(var i=0;i<rds.length;i++){
	    //     if(rds[i].checked){
	    //        ckd="1";
	    //     }
	    // }
	    // if(ckd=="0"){
	    // 	alert("����������Ϊ�գ�");
	     //	return false;
	    // }

		//var memberid = document.getElementById('memberid').value;		
		//if(memberid==null || memberid ==''){
		//    alert("����memberid�˺Ų���Ϊ�գ�");
		//	return false;
		//}     

	    var area = document.getElementById('area').value;		
		if(area==null || area ==''){
		    alert("��ѡ����У�");
			return false;
		}     

	    var companypid = document.getElementById('companypid').value;		
		if(companypid==null || companypid ==''){
		    alert("��ѡ����������");
			return false;
		}    
		
	    var companyid = document.getElementById('companyid').value;		
		if(companyid==null || companyid ==''){
		    alert("��ѡ������ŵ꣡");
			return false;
		}    
		
	    var customerid = document.getElementById('customerid').value;		
		if(customerid==null || customerid ==''){
		    alert("����Ӧ����ҵ�˺Ų���Ϊ�գ�");
			return false;
		}        
		form1.action = "<%= basePath2 %>T_bookActionSave.action";
		form1.submit();
		alert("ԤԼ��Ϣ�Ѿ��ύ��ԤԼ��Ϣ���ͨ���󣬻ᷢ��ԤԼ�ɹ����ŵ����ֻ���"+memo+"�ϣ����עԤԼ����֪ͨ��лл��ʹ�ý��ԤԼƽ̨��");
}
           
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
		
	    var companypname = document.getElementById('companypname').value;		
        if(companypname==null || companypname ==''){
		    alert("���������Ʋ���Ϊ�գ�");
			return false;
		}	
		
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
		    
		form1.action = "<%= basePath2 %>T_bookActionSave.action";
		form1.submit();
		alert("ԤԼ��Ϣ�Ѿ��ύ���������ڱ�ҳ���²��鿴ԤԼ��Ϣ��");
   
}

//������
function myRequest(xz){
	//alert("-------xz="+xz)
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    var url = '<%=basePath2%>T_companyActionFindYyAll.action?time='+Math.random();
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
    var url = '<%=basePath2%>T_companyActionFindTjmdAll.action?time='+ Math.random();
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
				var results = http_request.responseXML
						.getElementsByTagName("company");
				var option = null;
				var text = null;
				//alert("results="+results+",length="+results.length); 

				option = document.createElement("option");
				option.setAttribute("value", "");
				option.appendChild(document
						.createTextNode("--------------------"));
				companyid.appendChild(option);

				for ( var i = 0; i < results.length; i++) {
					option = document.createElement("option");
					option.setAttribute("value", results[i].getAttribute("id"));
					//option.setAttribute("value", results[i].firstChild.nodeValue);
					option.appendChild(document
							.createTextNode(results[i].firstChild.nodeValue));
					companyid.appendChild(option);
					//alert(option);         
				}
				//alert("���!");
				setCompanyHiddenValue();
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
<body>
	<form name="form1" method="post">

		<%@include file="header.jsp"%>

		<div class="list_banner" id="list_banner">
			<img src="<%=basePath %>images/sub_images/nban7.jpg" />
		</div>
		<div class="list_banner_bg">
			<span class="home"><a href="<%=basePath2%>index.jsp">��ҳ</a>><a
				href="<%=basePath2%>booking.jsp">��Աר��</a>><a>����ԤԼ</a></span>
			<div class="midd">

				<div class="midd_lef">
					<h2>��Աר��</h2>
					<div class="list_hr" style="float: left;"></div>

					<div class="lis">
						<span><a href="<%=basePath2%>gryyFind.action">����ԤԼ</a></span>
						<span><a href="<%=basePath2%>tjbgxzFind.action">��챨������</a></span>
					    <span><a href="<%=basePath%>vip.jsp">VIPר�����</a></span>

					</div>
					<div class="list_hr2" style="float: right;"></div>
					<div id="clear"></div>
				</div>
				<div class="midd_right">


					<%
          if(request.getSession().getAttribute("flag")==null||request.getSession().getAttribute("flag").equals("")){
        	  //δ��¼
         %>
					<p class=" font-16 font-color-444 font-lh30">
						<br>���ȵ�¼��Ȼ����ʹ�øù��ܣ�<br>
					</p>
					<%
          }else if(request.getSession().getAttribute("flag")!=null&&request.getSession().getAttribute("flag").toString().equals("card"))
          {
        	  //���ŵ�½
        	  T_card card = ((T_card)request.getSession().getAttribute("customer"));
         %>

					<!-- -->
					<div class="information">
						<h2>
							��ҪԤԼ��ע�⣺ԤԼ�ɹ����Զ���֪ͨΪ׼��
							<h2>
								<div class="reservationForm">
									<p>
										<label class="labeltext" for="name">����������</label> <input
											class="border-1-ccc p-9" type="text" name="t_book.membername"
											id="membername" value="" maxlength="10" /> <span>*</span>
										<s:hidden name="t_book.customerid" id="customerid" value="0" />
									</p>
									<p>
										<label class="labeltext" for="gender_m">ѡ���Ա�</label> <select
											name="t_book.paystatus" id="paystatus">
											<option value="">----------</option>
											<option value="1">��</option>
											<option value="2">Ů(δ��)</option>
											<option value="3">Ů(�ѻ�)</option>
										</select>							
										<span>&nbsp;&nbsp;*</span>
									</p>
									<p>
										<label class="labeltext" for="tel">�ֻ����룺</label> <input
											type="text" name="t_book.memo" id="memo" maxlength="11">
										<span>*</span>�����ն���֪ͨ��
									</p>
									<p>
										<label class="labeltext" for="tel">���֤���룺</label> <input
											type="text" name="t_book.memo2" id="memo2" maxlength="18 "
											value=""><span>*</span>
									</p>
									<p>
										<label class="labeltext" for="date1">������ڣ�</label> <input
											type="text" name="t_book.answertime" id="answertime"
											onclick='SelectDate(this)' readonly='true'> <span>*</span>

									</p>
									<p>
										<label class="labeltext" for="date2">����������ڣ�</label> <input
											type="text" name="t_book.starttime" id="starttime"
											onclick='javascript:SelectDate(this)' readonly='true'><span>*</span>
									</p>
									<p>
										<label class="labeltext" for="medicalcity">ѡ�������У�</label> <select
											name="t_book.area" id="area" onChange="myRequest('1')">
											<option value="">----------</option>
											<option value="�Ϻ�">�Ϻ�</option>
											<option value="�Ͼ�">�Ͼ�</option>
											<option value="�人">�人</option>
											<option value="����">����</option>
										</select> <span>*</span>
									</p>
									<p>
										<label class="labeltext" for="medicalcom">ѡ����������</label> <select
											name="t_book.companypid" id="companypid"
											onChange="loadTjmd('1')" >
											<option value="">---------------------</option>
										</select> <span>*</span>
										<s:hidden id="companypname" name="t_book.companypname"
											value="" />
									</p>
									<p>
										<label class="labeltext" for="medicalstore">ѡ������ŵ꣺</label> <select
											name="t_book.companyid" id="companyid"
											onChange="setTjmdHiddenValue()">
											<option value="">---------------------</option>
										</select> <span>*</span>
										<s:hidden id="companyname" name="t_book.companyname"  value="" />
										<s:hidden id="productname" name="t_book.productname" 	value="<%=card.getMemo2() %>" />
										
									</p>
									<p>
										<s:hidden name="t_book.status" id="status" value="1" />
										<s:hidden name="t_book.booktype" id="booktype" value="2" />
										<input class="tijiaobtn" name="" type="image" value=""   onclick=" return cardYyTjcheck()"     src="<%=basePath %>images/sub_images/btn_02.png" />
									</p>

								</div>
					</div>
					<!--  -->
					<%	  
          }else if(request.getSession().getAttribute("flag")!=null&&request.getSession().getAttribute("flag").toString().equals("member")){
        	  //member ��Ա��½
              T_member member = ((T_member)request.getSession().getAttribute("customer"));
          %>
					<div class="information">
						<h2>
							��ҪԤԼ��ע�⣺ԤԼ�ɹ����Զ���֪ͨΪ׼��
							<h2>
								<div class="reservationForm">
									<p>
										<label class="labeltext" for="name">����������</label> <input
											type="text" name="t_book.membername" id="membername"   value="<%=request.getSession().getAttribute("customerName") %>"readonly="true" /> 
											<span>*</span>
										<s:hidden name="t_book.customerid" id="customerid"   value="${sessionScope.customer.customerid }" />
									</p>
									<p>
										<label class="labeltext" for="gender_m">ѡ���Ա�</label> <label
											class="checkbox"> <select name="t_book.paystatus"
											id="paystatus">
												<option value="">----------</option>
												<option value="1">��</option>
												<option value="2">Ů(δ��)</option>
												<option value="3">Ů(�ѻ�)</option>
										</select>
										</label> <span>&nbsp;&nbsp;*</span>
									</p>
									<p>
										<label class="labeltext" for="tel">�ֻ����룺</label> <input
											type="text" name="t_book.memo" id="memo" length="11"
											maxlength="11"> <span>*</span>�����ն���֪ͨ��
									</p>
									<p>
										<label class="labeltext" for="tel">���֤���룺</label> <input
											type="text" name="t_book.memo2" id="memo2" maxlength="18 "
											value="<%= request.getSession().getAttribute("accountno") %>">
									</p>
									</p>
									<p>
										<label class="labeltext" for="date1">������ڣ�</label> <input
											type="text" name="t_book.answertime" id="answertime"
											onclick='javascript:SelectDate(this)' readonly='true'>
										<span>*</span>
										<s:hidden name="t_book.status" id="status" value="1" />
										<s:hidden name="t_book.booktype" id="booktype" value="1" />
									</p>
									<p>
										<label class="labeltext" for="date2">����������ڣ�</label> <input
											type="text" name="t_book.starttime" id="starttime"
											onclick='javascript:SelectDate(this)' readonly='true'><span>*</span>
									</p>
									<p>
										<label class="labeltext" for="medicalcity">ѡ�������У�</label> <select
											name="t_book.area" id="area" onchange="myRequest(2)">
											<option value="">----------</option>
											<option value="�Ϻ�">�Ϻ�</option>
											<option value="�Ͼ�">�Ͼ�</option>
											<option value="�人">�人</option>
											<option value="����">����</option>
										</select> <span>*</span>
									</p>
									<p>
										<label class="labeltext" for="medicalcom">ѡ����������</label> <select
											name="t_book.companypid" id="companypid"
											onChange="loadTjmd(2)">
											<option value="">---------------------</option>
										</select> <span>*</span>
										<s:hidden id="companypname" name="t_book.companypname"
											value="" />
									</p>
									<p>
										<label class="labeltext" for="medicalstore">ѡ������ŵ꣺</label> <select
											name="t_book.companyid" id="companyid"
											onChange="setTjmdHiddenValue()">
											<option value="">---------------------</option>
										</select> <span>*</span>
										<s:hidden id="companyname" name="t_book.companyname" value="" />
										<s:hidden id="productname" name="t_book.productname" value="${sessionScope.customer.memo }" />
									</p>
									<p>
										<input class="tijiaobtn" name="" type="image" value=""
											src="<%=basePath %>images/sub_images/btn_02.png"
											onclick=" return memberTjCheck()" />
									</p>

								</div>
					</div>
					<% }%>

				</div>

				<div id="clear"></div>
				<div class="line1"></div>

				<div class="reservationForm">
					<p class="labeltext">ԤԼ��Ϣ��</p>
					
					<ul >
						<li class="width170px bold">����</li>
						<li class="width170px bold">ԤԼʱ��</li>
						<li class="width170px bold">�ֻ�����</li>
						<li class="width220px bold">������</li>
						<li class="width200px bold">����ŵ�</li>
						<!-- <li class="width150px bold">ԤԼ����</li> -->
					</ul>

					<s:iterator value="paginationSupport.items" status="stuts">
						<ul>
							<li class="width170px">${membername }</li>
							<li class="width170px">${answertime }</li>
							<li class="width170px">${memo }</li>
							<li class="width220px">${companypname }</li>
							<li class="width200px">${companyname }</li>
							<!--<li class="width150px"><s:if test="${booktype=='1'}">��ԱԤԼ</s:if>
								<s:elseif test="${booktype=='2'}">��ԤԼ</s:elseif> <s:elseif
									test="${booktype=='3'}">�Ź�ԤԼ</s:elseif></li> -->
						</ul>
					</s:iterator>
                  
				</div>
				<div id="clear"></div>
			</div>
			<div id="clear"></div>
			<div class="height30px"></div>
		</div>
		<div id="clear"></div>

        <%@include file="footer.jsp" %>	


		</div>
	</form>
</body>
</html>
              
