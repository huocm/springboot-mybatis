<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c"        uri="http://java.sun.com/jstl/core"%>
<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<s:head theme="ajax" />
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
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
function myRequestSub(){
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
    clear();
}
        
//�ص�����
function callBackSub(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
            var productid = document.getElementById("id");
			var results = http_request.responseXML.getElementsByTagName("product");
			var option = null;
			var text = null;
			//�����Ĭ����
			option = document.createElement("option");
			option.setAttribute("value", "");
			option.appendChild(document.createTextNode("ȫ��"));
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

function clear(){
   var obj = document.getElementById("id");
   while(obj.childNodes.length > 0) {
        obj.removeChild(obj.childNodes[0]);
    }

}

function check(){
  
   //var buydate = document.getElementById("buydate").value;
   //var createdate = document.getElementById("createdate").value;   
     //var picker = dojo.widget.byId("buydate");    
     //string value
     //var buydate = picker.getValue();
     //alert(buydate);
     //var picker2 = dojo.widget.byId("createdate");    
     //string value
     //var createdate = picker2.getValue();
     //alert(createdate);
          
     //date value
     //var dateValue = picker.getDate();
     //alert(dateValue);
   
   var pid = document.getElementById("pid").value;
   var id = document.getElementById("id").value;

   //form1.action = "${basePath}T_buyActionList.action?id="+id+"&pid="+pid+"&buydate="+buydate+"&createdate="+createdate;
   form1.action = "${basePath}T_buyActionList.action?id="+id+"&pid="+pid;
   //alert(form1.action );
   form1.submit();
   
}

</script>
<body onLoad="myRequest()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">���ֿ����&gt;&gt; ������Ʒ</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="50" valign="top" >

                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >������Ʒ��Ϣ��ѯҳ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="" name="form1" theme="simple"  target="under" >                   				
							<tr>
							  <td width="20%" height="24" align="left" valign="middle" bgcolor="#F2F2F2">
							  &nbsp;&nbsp;��Ʒ����:<select id="pid" name="t_buy.pid" onChange="myRequestSub()">
							    <option value="">ȫ��</option> 
							  </select>	
							  </td>  
							  <td width="30%" height="24" align="left" valign="middle" bgcolor="#F2F2F2">						        
							  &nbsp;&nbsp;��Ʒϸ��:
							  <select id="id" name="t_buy.id">
							  	<option value="">ȫ��</option>
							  </select>
							  <!-- ��������:<s:datetimepicker id="createdate" name="t_buy.createdate" value="today" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/>
							  ��������:<s:datetimepicker id="buydate" name="t_buy.buydate" value="today" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/>
							   -->
							  </td>  
							  <td width="50%" height="24" align="left" valign="middle" bgcolor="#F2F2F2">	
							  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <input type="button" class="btn" value="    ��ѯ    " name="B1" onClick="check()">
								
							  </td>                             
                            </tr>	
                              </s:form>																		   
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

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="table">
<tr>
	<td width="82%" bgcolor="#ad9875">
			<iframe src="T_buyActionList.action" align="top" width="100%" scrolling="no" frameborder="0" height="500" name="under"></iframe>
	</td>
</tr>
</table>


</body>
</html>