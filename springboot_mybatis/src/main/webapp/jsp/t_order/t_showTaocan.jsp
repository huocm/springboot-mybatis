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

//������,�����Ѿ����õ��ײ���Ϣ��ʾ������
function loadTaocan(){
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    var orderid = parent.document.getElementById("orderid").value;
    var url = '<%=basePath%>T_showTaocanByOrderid.action?orderid='+orderid+'&time='+Math.random();
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
<body onload="loadTaocan()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<s:form action="T_order_subActionRemoveBatch.action" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">

  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
     
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
                            <tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                									
								<input type="button" class="btn" value="    ����ײ�    " name="B1" onClick="window.location.href='<%=basePath %>jsp/t_order/t_selectQYTC.jsp?orderid=<%=request.getParameter("orderid") %>'">
								<input type="button" class="btn" value="    ����    " name="B1" onClick="window.parent.location.href='<%=basePath %>T_orderBjdActionList.action'">
								<input type="submit" name="del" value="    ɾ���ײ�    " class="btn">
						      </td>
						   </tr>	
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">                               
		                          <table id="table0" width="100%" border="0" cellspacing="0" cellpadding="0">
		                           <tr>
		                            <td colspan="8">
		                             <div id="taocan"></div>			    
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
   
   </td>
  </tr>
</table>

</s:form>
</body>
</html>
	