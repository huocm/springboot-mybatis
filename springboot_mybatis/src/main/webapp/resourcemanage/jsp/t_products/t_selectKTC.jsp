<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
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
    var name = document.getElementById("name").value;
    if(name.length==0){
       alert("�������ײ����ƣ�");
       return false;
    }
       
    var pid = document.getElementById("pid").value;
    if(pid.length==0){
       alert("��ѡ����������");
       return false;
    }
   // var companyid = document.getElementById("companyid").value;
    //if(companyid.length==0){
    //   alert("��ѡ������ŵ꣡");
    //   return false;
   // }

    var tctype = document.getElementById("tctype").value;
    if(tctype.length==0){
       alert("��ѡ���Ա�");
       return false;
    }
    
    form1.action ="<%=basePath%>T_cardTCActionSave.action";        
    form1.submit();
   
}

//������
function loadCompany(){
	//alert("----------------");
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

function clear(){
   var obj = document.getElementById("companyid");
   while(obj.childNodes.length > 0) {
        obj.removeChild(obj.childNodes[0]);
    }
}

//������,����ŵ�
function loadTjmd(){
    //���Ȱ�ԭ�������������
    clear();

    //URLδβҪ�Ӹ�������������������ٴ��ύ
    var url = '<%=basePath%>T_companyActionFindTjmdAll.action?time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content ="pid="+document.getElementById("pid").value; // "userName=" + name;
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
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    companyid.appendChild(option);  
			    //alert(option);         
            }
            //alert("���!");
            //ֻҪ����ŵ������ϡ���Ҫ���ض�Ӧ�ŵ������
            loadProductsSub();
            
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
    }
}

//������,�����ŵ�id��ѯ�ŵ��Ӧ�������Ŀ�б�
function loadProductsSub(){
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    var pid  = document.getElementById("pid").value;
    var url = '<%=basePath%>T_productsSubAllByMDAjax.action?pid='+pid+'&time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content =""; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",loadProductsSubCallBack );
}
        
//�ص�����
function loadProductsSubCallBack(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
            var mubiao = document.getElementById("products_sub");
			//var results = http_request.responseXML.getElementsByTagName("result");
            if(mubiao != undefined){
                 //���ص����ı���ʽ��Ϣ
                 mubiao.innerHTML = http_request.responseText;  
                 //alert(http_request.responseText)                 
            }
			
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
        //ͬʱ���ػ�������
        
    }
}
</script>
<body onload="loadCompany()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">��ҵ�����&gt;&gt; ���ײͳɱ�����(�ײͳɱ�����)</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >����ײ�</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
                                                       
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ײ�����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="name" maxlength='45'  id="name"/>
							    <font color="red">*</font>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>												
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<select id="pid" name="pid"   onChange="loadProductsSub()">					            					            	
					            	<option value="0">--------------------</option>
							        </select>
					            	<font color="red">*</font>
					            	<s:hidden  id="companypname" name="companypname" value=""/>      	 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
						<!-- 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����ŵ�:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<select id="companyid" name="companyid" onChange="loadProductsSub()">					            					            	
					            	<option value="0">--------------------</option>
							        </select>
					            	<font color="red">*</font>
					            
					            	<s:hidden  id="company" name="company" value=""/>  
					            	   	 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr> 
                         -->                               
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�Ա�:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<select id="tctype" name="tctype" >					            					            	
					            	<option value="">--------</option>
					            	<option value="1">��</option>
					            	<option value="2">Ůδ��</option>
					            	<option value="3">Ů�ѻ�</option>
							        </select>
							    <font color="red">*</font>
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
	                      		<input type="button" class="btn" value="    �����ײ�    " name="B1" onclick="check()">
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
	