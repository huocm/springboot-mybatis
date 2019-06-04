<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%//@include file="../sessionCustomerValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="com.jxc.domain.T_card" %>
<%@ page import="com.jxc.domain.T_member" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<link href="<%=basePath %>css/public.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/page.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath %>js/jquery-1.6.min.js" type="text/javascript"></script>
<script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>  
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script> 
       <script language="JavaScript"  src="<%= basePath %>/js/calendar.js"></script>    
<title>�����������,��������ϵͳ,��������ƽ̨,��������-�Ϻ���̽����������޹�˾</title>

<meta name="Keywords" content="�Ϻ���̽�������,�����������,��������ϵͳ,�����������ƽ̨,�Ϻ���������ϵͳ,�Ϻ������������,�Ϻ���������ϵͳ,�Ϻ������������,��������,һվʽ��������ƽ̨,������������,����,�������"/>
<meta name="Description" content="����ǹ������������ִ���Ϣ������ҽ�Ƽ����Ľ�������������ǹ����ִ������Ƽ����ȵĽ����������ƽ̨�̡�������һֱרע�ڽ���������ҵ��ͨ�����½����������뷽ʽ��������ҵ��Դ���ḻ���������Ʒ�������������Ⱥ�ڵĽ����������������ҽ�ƻ��������յȽ��ڻ�����������ҵ����Ϊ�ͻ��ṩ������ֵ�����������������ʵ�ֽ������ɡ�"/>
    <style type="text/css">
        #nav ul li a#page3 /*  �˴�pagex ��˵��ж����Ҫ��Ӧ*/
        {
            -webkit-box-shadow: 3px 3px 5px #333;
            box-shadow: 3px -3px 5px #333;
            height: 35px;
            padding-top: 12px;
            background-color: #008000;  /*  ԭΪ00a0e9*/
            margin-top: 3px;
        }
        td
        {
            padding: 5px 0;
            line-height: 30px;
        }
    </style>
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
		    alert("�绰����Ϊ�գ�");
			return false;
		}
		if(memo.length!=11){
		    alert("�绰�������Ϊ11λ���֣�");
			return false;
		}	
		if(isNaN(memo)){
		    alert("�绰�������Ϊ11λ���֣�");
			return false;
		}			

	    var answertime = document.getElementById('answertime').value;	
        if(answertime==null || answertime ==''){
		    alert("������ڲ���Ϊ�գ�");
			return false;
		}	
		
		var rds = document.getElementsByName("companyid");
        var ckd = "0";
        for(var i=0;i<rds.length;i++){
	         if(rds[i].checked){
	            ckd="1";
	         }
	     }
	     if(ckd=="0"){
	     	alert("����������Ϊ�գ�");
	     	return false;
	     }

		//var memberid = document.getElementById('memberid').value;		
		//if(memberid==null || memberid ==''){
		//    alert("����memberid�˺Ų���Ϊ�գ�");
		//	return false;
		//}     
		
	    var customerid = document.getElementById('customerid').value;		
		if(customerid==null || customerid ==''){
		    alert("����Ӧ����ҵ�˺Ų���Ϊ�գ�");
			return false;
		}        
		form1.action = "<%= basePath %>T_bookActionSave.action";
		form1.submit();
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
		    alert("�绰����Ϊ�գ�");
			return false;
		}
		if(memo.length!=11){
		    alert("�绰�������Ϊ11λ���֣�");
			return false;
		}	
		if(isNaN(memo)){
		    alert("�绰�������Ϊ11λ���֣�");
			return false;
		}			
		
	    var answertime = document.getElementById('answertime').value;	
	    if(answertime==null || answertime ==''){
		    alert("������ڲ���Ϊ�գ�");
			return false;
		}	

	    var branchid = document.getElementById('branchid').value;		
        if(branchid==null || branchid ==''){
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
		    
		form1.action = "<%= basePath %>T_bookActionSave.action";
		form1.submit();
   
}
       
//������
function myRequest(){
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    var url = '<%=basePath%>T_companyActionFindAll.action?time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content ="branchid="+document.getElementById("branchid").value; // "userName=" + name;
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
function loadTjmd(){
    //���Ȱ�ԭ�������������
    clearTjmd();

    setCompanyHiddenValue();

    //URLδβҪ�Ӹ�������������������ٴ��ύ
    var url = '<%=basePath%>T_companyActionFindTjmdAll.action?time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content ="pid="+document.getElementById("companypid").value; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    //alert(url+content);
    sendRequest("POST",url,content,"TEXT",loadTjmdCallBack );
}
        
//�ص�����
function loadTjmdCallBack(){

    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
            var companyid = document.getElementById("companyid");
			var results = http_request.responseXML.getElementsByTagName("company");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			
		    option = document.createElement("option");
		    option.setAttribute("value", "");
		    option.appendChild(document.createTextNode("--------------------"));
		    companyid.appendChild(option);  
		    
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    //option.setAttribute("value", results[i].firstChild.nodeValue);
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
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
function clearTjmd(){
   var obj = document.getElementById("companyid");
   while(obj.childNodes.length > 0) {
        obj.removeChild(obj.childNodes[0]);
    }
}

//�����칫˾ѡ������
function clearCompanyid(){
   var obj = document.getElementById("companypid");
   while(obj.childNodes.length > 0) {
        obj.removeChild(obj.childNodes[0]);
    }
}

function setCompanyHiddenValue(){
	//��ȡselect��option  ����
	var ss = document.form1.companypid;
	var hiddenValue = ss.options[ss.selectedIndex].text;
	//alert("name="+hiddenValue);
	//��ȡoption��text
    document.form1.companypname.value = hiddenValue;
    
}

function setTjmdHiddenValue(){
	//��ȡselect��option  ����
	var ss = document.form1.companyid;
	var hiddenValue = ss.options[ss.selectedIndex].text;
	//alert("name="+hiddenValue);
	//��ȡoption��text
    document.form1.companyname.value = hiddenValue;
    
}        
    </script>
    <!--[if IE 6]>
    <script src="/js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
       EvPNG.fix('div, ul, img, li, input'); 
    </script>
    <![endif]-->
<title>

</title></head>
<!--
 <body onload="loadCompay()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
 -->
<body  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

    <!-- ��¼���˳�����¼���û�����ʾ -->
    <div id="topNav" class="h-30 bg-f0f0f0">
         <%@include file="banner.jsp" %>   
    </div>    
    <!-- logo -->
    <div id="header" class="w-1200">
        <img src="<%=basePath %>images/logo.png" class="float-l" />
    </div>
    
    <!-- �����˵� -->
    <div id="nav" class="relative w-1200">
 		<%@include file="header.jsp" %>  
    </div>
          
   <div id="dcontent" class="w-1200 m-b20 align-l" style="">
 
   <form name="form1" method="post">
          <%
          if(request.getSession().getAttribute("flag")==null||request.getSession().getAttribute("flag").equals("")){
        	  //δ��¼
         %>
         <p class=" font-16 font-color-444 font-lh30"><br>���ȵ�¼��Ȼ����ʹ�øù��ܣ�<br></p> 
          <%
          }else if(request.getSession().getAttribute("flag")!=null&&request.getSession().getAttribute("flag").toString().equals("card")){
        	  //���ŵ�½
        	  T_card card = ((T_card)request.getSession().getAttribute("customer"));
         %>
        <p class=" font-16 font-color-444 font-lh30">��ҪԤԼ��</p>
        <table cellpadding="0" cellspacing="0" border="0" style="width: 70%;">      
           <tr>
                <td align="right">
                    �������� 
                </td>
                <td align="left">
                    <input class="border-1-ccc p-9" type="text" name="t_book.membername" id="membername" value=""  maxlength="10" />
                    <font color="red">*</font>
                    <s:hidden  name="t_book.customerid"  id="customerid" value="0" />
                </td>
            </tr>
            <tr>
                <td align="right">
                    ѡ���Ա�
                </td>
                <td align="left">
                   <select name="t_book.paystatus" id="paystatus"  >					            					            	
					            		<option value="">----------</option>
					            		<option value="1">��</option>
					            		<option value="2">Ů(δ��)</option>
					            		<option value="3">Ů(�ѻ�)</option>
							        </select>
							        <font color="red">*</font>
                    
                </td>
            </tr> 
   
            <tr>
                <td align="right">
                    �绰
                </td>
                <td align="left">
                    <input class="border-1-ccc p-9" type="text" name="t_book.memo" id="memo"   value=""  maxlength="11"/><font color="red">*</font>
                </td>
            </tr>           
            <tr>
                <td align="right">
                     ѡ���������
                </td>
                <td align="left">
                       <input  class="border-1-ccc p-9" type="text"  size="20" name="t_book.answertime"   id="answertime"  value="" onclick='javascript:SelectDate(this)' readonly='true' />
                      <font color="#FF0000">*</font>
                        <s:hidden  name="t_book.status"  id="status" value="1" />	
                        <s:hidden  name="t_book.booktype"  id="booktype" value="2" />
                </td>
            </tr>  
            <tr>
                <td align="right">
                     ѡ�����������
                </td>
                <td align="left">
                       <input  class="border-1-ccc p-9" type="text"  size="20" name="t_book.starttime"   id="starttime"  value="" onclick='javascript:SelectDate(this)' readonly='true' />                                          
                </td>
            </tr>                             
           <tr>
                <td align="right">
                    ѡ��������
                </td>
                <td align="left">
                   <select name="t_book.branchid" id="branchid" onchange="myRequest()" >					            					            	
					            		<option value="">----------</option>
					            		<option value="1111">�Ϻ�</option>
					            		<option value="2222">�Ͼ�</option>
					            		<option value="3333">�人</option>
					            		<option value="4444">����</option>
							        </select>
							        <font color="red">*</font>
                    
                </td>
            </tr> 
            <tr>
                <td align="right">
                     ѡ��������
                </td>
                <td align="left">
                       <select name="t_book.companypid" id="companypid" onChange="loadTjmd()">					            					            	
					        <option value="">---------------------</option>
					   </select>
					   <font color="red">*</font>
					   <s:hidden  id="companypname" name="t_book.companypname" value=""/> 
					   
                </td>
            </tr>
            <tr>
                <td align="right">
                     ѡ������ŵ�
                </td>
                <td align="left">
                       <select name="t_book.companyid" id="companyid" onChange="setTjmdHiddenValue()">					            					            	
					      <option value="">---------------------</option>
					   </select>
					   <font color="red">*</font>
					   <s:hidden  id="companyname" name="t_book.companyname" value=""/>
					   
					   <s:hidden  id="productname"  name="t_book.productname"   value="<%=card.getAmount() %>" />
					    
					    <!--
					    <s:hidden  id="costall" name="t_book.costall" value="<%=card.getCost() %>"/>
					    <s:hidden  id="priceall"  name="t_book.priceall"   value="<%=card.getAmount() %>" />
					    -->
                </td>
            </tr>            
           <!-- 
           <tr>
                <td align="right">
                     ����ײͽ��
                </td>
                <td align="left">
                      <input type="text" name="t_book.productname" id="productname"  class="border-1-ccc p-9"  value="<%=card.getAmount() %>"  readonly="true"/> <font color="#FF0000">*</font>	
							        <s:hidden  id="priceall"  name="t_book.priceall"   value="<%=card.getAmount() %>" />
							        <s:hidden  id="costall" name="t_book.costall" value="<%=card.getCost() %>"/>
							      
                </td>
           </tr> 
           --> 
          <tr>
                <td>
                </td>
                <td>
                    <input type="button" value="�ύԤԼ����" onclick="cardYyTjcheck()" class="border-1-ccc p-9 bg-tjfk font-16 font-color-fff" style="cursor: pointer;" />
                </td>
            </tr>
        </table>            
         <%	  
          }else if(request.getSession().getAttribute("flag")!=null&&request.getSession().getAttribute("flag").toString().equals("member")){
        	  //member ��Ա��½
              T_member member = ((T_member)request.getSession().getAttribute("customer"));
          %>
        <p class=" font-16 font-color-444 font-lh30">����дԤԼ��Ϣ��</p>
        <table cellpadding="0" cellspacing="0" border="0" style="width: 70%;">          
            <tr>
                <td align="right">
                    �������� 
                </td>
                <td align="left">
                    <input  type="text" name="t_book.membername" id="membername" value="" class="border-1-ccc p-9"  maxlength="10" /><font color="red">*</font>
                   <s:hidden  name="t_book.customerid"  id="customerid" value="${sessionScope.customer.customerid }" />
                   
                </td>
            </tr>
            <tr>
                <td align="right">
                    ѡ���Ա�
                </td>
                <td align="left">
                   <select name="t_book.paystatus" id="paystatus"  >					            					            	
					            		<option value="">----------</option>
					            		<option value="1">��</option>
					            		<option value="2">Ů(δ��)</option>
					            		<option value="3">Ů(�ѻ�)</option>
							        </select>
							        <font color="red">*</font>
                    
                </td>
            </tr> 
  
            <tr>
                <td align="right">
                    �绰
                </td>
                <td align="left">
                    <input class="border-1-ccc p-9" type="text" name="t_book.memo" id="memo"   value=""  length="11" maxlength="11"/><font color="red">*</font>
                </td>
            </tr>           
          
            <tr>
                <td align="right">
                     ѡ���������
                </td>
                <td align="left">
                       <input  class="border-1-ccc p-9" type="text"  size="20" name="t_book.answertime"   id="answertime"  value="" onclick='javascript:SelectDate(this)' readonly='true' />
                      <font color="#FF0000">*</font>
                        <s:hidden  name="t_book.status"  id="status" value="1" />	
                        <s:hidden  name="t_book.booktype"  id="booktype" value="1" />
                        
                </td>
            </tr>            
            <tr>
                <td align="right">
                     ѡ�����������
                </td>
                <td align="left">
                       <input  class="border-1-ccc p-9" type="text"  size="20" name="t_book.starttime"   id="starttime"  value="" onclick='javascript:SelectDate(this)' readonly='true' />                                          
                </td>
            </tr>      
             <tr bgcolor="white">
                <td>
                    ѡ��
                </td>
                <td>
                   �ײ�����                 
                <td>
                   ������                 
                </td>
                </td>
                <td>
                   �ŵ�����                 
                </td>
            </tr> 
           
             <s:iterator value="order_subList" status="status">
             <tr>
                <td>                 
                  <input type="radio" name="companyid"  id="companyid"  value="${ companyid };${ companyname };${ companypid };${ companypname };${ branchid };${ cost };${ saleprice };${ memo}" />
                <!--  
                ${ companyid };${ companyname };${ companypid };${ companypname };${ branchid };${ cost };${ saleprice };${ memo}
                --> 
                </td>
                <td>
                   ${ memo }                
                </td> 
                <td>
                   ${ companypname }                
                </td>
                <td>
                   ${ companyname }                
                </td>
            </tr> 
            </s:iterator>
            <tr>
                <td>
                </td>
                <td>
                    <input type="button" value="�ύԤԼ����" onclick="memberTjCheck()" class="border-1-ccc p-9 bg-tjfk font-16 font-color-fff" style="cursor: pointer;" />
                </td>
            </tr>
        </table>  
             <% }%> 
    
   <p class=" font-16 font-color-444 font-lh30">�ҵ���ʷԤԼ��Ϣ��</p>
        <table cellpadding="0" cellspacing="0" border="0" style="width: 100%;">      
           <tr>
                <td align="center">
                    �������� 
                </td>
                <td align="center">
                   ԤԼʱ�� 
                </td>
                <td align="center">
                   �绰
                </td>
                <td align="center">
                    ������ 
                </td>                
                <td align="center">
                    ����ŵ� 
                </td>
                <!-- <td align="center">
                    ԤԼ�ײ�����
                </td>
                
                <td align="center">
                    ״̬
                </td>
                 -->
                <td align="center">
                    ԤԼ����
                </td>                                                                                       
            </tr>
            
        <s:iterator value="paginationSupport.items" status="stuts">
            <tr>
                <td align="center">
                    <s:property value="membername" />
                </td>
                <td align="center">
                   <s:property value="answertime" />
                 
                </td>
                <td align="center">
                   ${memo }
                </td>
                <td align="center">
                    ${companypname }
                </td>                
                <td align="center">
                    ${companyname }
                </td>
                 <!-- <td align="center">
                    ${productname }
                </td>         
               
                <td align="center">
                    <s:if test="${status=='1'}">ԤԼ�ɹ�</s:if>
					<s:elseif test="${status=='0'}">ԤԼʧЧ</s:elseif> 	
				</td>  
                 -->
                <td align="center">
                    <s:if test="${booktype=='1'}">��ԱԤԼ</s:if>
					<s:elseif test="${booktype=='2'}">��ԤԼ</s:elseif> 	
				</td>  				                                                        
            </tr>     
            </s:iterator>
    </table>          
  
         
    </div>
   </form>

    <div id="nav" class="relative w-1200">
 		<%@include file="footer.jsp" %>
    </div>
 
 </body>
</html>
