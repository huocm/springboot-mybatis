<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>�ͻ���Ϣ����ҳ</title>
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
<script type="text/javascript">
//������Ա�ͻ���
function load(){
	loadUsers();
	//loadBranch(); �ŵ�loadUsers()ִ�������ٵ��ã������޷���ʾ���ݡ�
}	
	
//������
function loadUsers(){
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    //var url = '<%=basePath%>T_user_detailActionFindAll.action?time='+Math.random();
   var url = '<%=basePath%>rm/t_user_detailListAjaxRes.jsp?time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content =""; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",loadUsersCallBack );
}
        
//�ص�����
function loadUsersCallBack(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
            var mubiao = document.getElementById("checker");
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
        //Ҫ�����������ɺ��ٵ��������ajax������ֻ����ʾһ������һ���������
        loadCustomer();
    }
}
//�ύ
	function check(){	

	    var customername = document.getElementById('customername').value;		
		if(customername==null || customername ==''){
		    alert("�ͻ�����Ϊ�գ�");
			return false;
		}	
		var num = document.getElementById('num').value;		
		if(num==null || num ==''){
		    alert("��Ա��������Ϊ�գ�");
			return false;
		}
		if(isNaN(num) ){
		    alert("��Ա��������Ϊ���֣�");
			return false;
		}		
	    
	    var saleprice = document.getElementById('saleprice').value;		
        if(saleprice==null || saleprice ==''){
		    alert("��Ա���۲���Ϊ�գ�");
			return false;
		}
        if(isNaN(saleprice) ){
		    alert("��Ա���۱���Ϊ���֣�");
			return false;
		}			
		
		document.form1.orderamount.value = num*saleprice;
		//alert(num*saleprice);
		
		//var receiveamount = document.getElementById('receiveamount').value;		
        //if(isNaN(receiveamount) ){
		//    alert("���տ������Ϊ���֣�");
		//	return false;
		//}
			
	    var checker = document.getElementById('checker').value;		
		if(checker==null || checker ==''){
		    alert("����˲���Ϊ�գ�");
			return false;
		}	
		
		form1.action = "<%= basePath %>T_orderActionSave.action";
		form1.submit();
		
	}

</script>
<body onload="load()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="T_customerActionSave" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">���ͻ�����&gt;&gt; �����ͻ�</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >�ͻ���Ϣ����ҳ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">
                              <tr>
                                  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ͻ����:</td>
                                  <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                      <s:textfield  name="t_customer.number" maxlength='45' readonly="true"  label="number"/><font color="#FF0000">*</font>
                                      <s:hidden  value="t_customer.id"	/>
                                  </td>
                                  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>
                              </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ͻ�����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_customer.name" maxlength='45' readonly="true"  label="name"/><font color="#FF0000">*</font>
					            	<s:hidden  value="t_customer.id"	/>								    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�绰:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property  value="t_customer.tel" />
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��ַ:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property  value="t_customer.address" />							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
									
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ͻ�����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property  value="t_customer.memo" />					            	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�����տ���(Ԫ):</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_customer.bcreceiveamount"   id="bcreceiveamount"/>	<font color="red">*</font>						    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�����տ��Ӧ����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<select  name="t_customer.orderno"  id="orderno">
					            		<option value="">------</option>
					            	</select><font color="#FF0000">*</font>	
					            							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							     <td colspan="3"  bgcolor="#F2F2F2"><font color="red"><s:fielderror /></font> </td> 
							  </tr>
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="submit" class="btn" value="    ����    " name="B1">
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
	