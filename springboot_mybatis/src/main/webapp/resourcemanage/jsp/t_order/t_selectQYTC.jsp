<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%//@include file="../../sessionValidate.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_member��Ϣ�б�ҳ</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
     <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
</head>
<script type="text/javascript">
function check(){
    var pid = document.getElementById("pid").value;
    if(pid.length==0){
       alert("��ѡ����������");
       return false;
    }
   // var companyid = document.getElementById("companyid").value;
   // if(companyid.length==0){
   //    alert("��ѡ������ŵ꣡");
   //    return false;
   // }
    var memo = document.getElementById("memo").value;
    if(memo.length==0){
       alert("�������ײ����ƣ�");
       return false;
    }
    
    var orderid = parent.document.getElementById("orderid").value;
    //alert("------parentWindow orderid="+orderid); 
    
    form1.action ="<%=basePath%>T_orderActionSaveTaocanOne.action?orderid="+orderid;        
    form1.submit();
   
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
            var pid = document.getElementById("pid");
			var results = http_request.responseXML.getElementsByTagName("company");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    pid.appendChild(option);  
			    //alert(option);         
            }
            //alert("���!");
            //ֻҪ����ŵ������ϡ���Ҫ���ض�Ӧ�ŵ������
            //loadProductsSub();
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
        
    }
}

function setCompanyHiddenValue() {
	//��ȡselect��option  ����
	var ss = document.form1.pid;
	var hiddenValue = ss.options[ss.selectedIndex].text;
	//alert("name="+hiddenValue);
	//��ȡoption��text
	document.form1.company.value = hiddenValue;

}

</script>
<body onload="loadCompany()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >�����ҵ�ײ�</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ײ�����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="memo" maxlength='45'  id="memo"/>
							    <font color="red">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>														
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<!-- <select id="pid" name="pid" onChange="loadProductsSub()"> -->
					            	<select id="pid" name="pid" onChange="setCompanyHiddenValue()">					            					            	
					            	<option value="0">--------------------</option>
							        </select>
					            	<font color="red">*</font>
					            	<s:hidden  id="orderid" name="orderid"  value='<%=request.getParameter("orderid") %>' />   
					            	<s:hidden  id="company" name="company"   value=""/>    
					  
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							 <tr>
		                        <td valign="top" bgcolor="cbcbcb"  colspan="8">
		                          <table id="table0" width="100%" border="0" cellspacing="0" cellpadding="0">
		                           <tr>
		                            <td colspan="8">
		                             <div id="products_sub"></div>			    
							        </td>
							        </tr>					      							   
							    </table></td>
		                    </tr>
	                         	                           
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	  	 
	                      		<input type="button" class="btn" value="    ��һ��(����/��������Ŀ)     " name="B1" onclick="check()">
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
	