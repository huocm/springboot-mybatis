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
    //�ύ
	function check(){	

	    var customername = document.getElementById('customername').value;		
		if(customername==null || customername ==''){
		    alert("�ͻ�����Ϊ�գ�");
			return false;
		}	
		var linkman = document.getElementById('linkman').value;		
		if(linkman==null || linkman ==''){
		    alert("��ϵ�˲���Ϊ�գ�");
			return false;
		}
		//if(isNaN(num) ){
		//    alert("��Ա��������Ϊ���֣�");
		//	return false;
		//}		
	    
	    //var linktel = document.getElementById('linktel').value;		
        //if(linktel==null || linktel ==''){
		//    alert("��ϵ�˵绰����Ϊ�գ�");
		//	return false;
		//}
		
		form1.action = "<%= basePath %>T_orderActionSaveOrderDYB.action";
		form1.submit();
		
	}

//������
function loadTaocan(){
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    companyid = document.getElementById("companyid").value;
    var url = '<%=basePath%>T_productsSubAllByMDAjax.action?companyid='+companyid+'&time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content =""; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",loadTaocanCallBack );
}
        
//�ص�����
function loadTaocanCallBack(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
			 var mubiao = document.getElementById("taocan");
			//var results = http_request.responseXML.getElementsByTagName("result");
            if(mubiao != undefined){
                 //���ص����ı���ʽ��Ϣ
                 mubiao.innerHTML = http_request.responseText;  
                 //alert(http_request.responseText)                 
            }
            //alert("���!");
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
        
    }
}
</script>
<body onload="" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<s:form  name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">��ҵ�����&gt;&gt; ���۵�����</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td  valign="top" >
                    
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >��ҵ�ײ�ά��</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">                                             
                          					 
						   <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">���۵����</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.id }&nbsp;
                              <s:hidden  id="orderid" name="orderid" value="${t_order.id }" /></td>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����״̬ </td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.checkstatus }&nbsp;</td>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��������</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.createtime }&nbsp;</td>                                                            
                            </tr>
							<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ͻ�����</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.customername }&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��ϵ��</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.linkman }&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��ϵ��ʽ</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.linktel }&nbsp;</td>                                                          
                            </tr>
																				         
	                        <tr>
		                        <td valign="top" bgcolor="cbcbcb"  colspan="8">
		                          <iframe id="taocan" src="<%=basePath %>jsp/t_order/t_showTaocan.jsp?orderid=${t_order.id }"    onload="this.height=this.contentWindow.document.body.scrollHeight+900" marginwidth="0" framespacing="0" marginheight="0" frameborder="0" width="100%"  scrolling="yes">
		                          </iframe>
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
	