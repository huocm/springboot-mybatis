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
//��ʾ�������
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}

function   fprint()
{  try{
		   demo.style.display=(demo.style.display == "none")?"block":"none";
		   window.print();
		   demo.style.display = "block";
	  }catch(e){ alert("��ע����Ĵ�ӡ����\n\n.���ܴ�ӡ����û׼���ã�\n.���ܴ�ӡ�������˹��ϡ�");}	   
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
//���������
if( http_request.readyState == 4) {
// ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
if(http_request.status == 200) {                
    var mubiao = document.getElementById("name");
		var results = http_request.responseXML.getElementsByTagName("result");
		var option = null;
		var text = null;
		//alert("results="+results+",length="+results.length); 
		for(var i = 0; i < results.length; i++) {
		    option = document.createElement("option");
		    //alert( results[i].firstChild.nodeValue );
		    //option.setAttribute("value", results[i].getAttribute("id"));
		    option.setAttribute("value",  results[i].firstChild.nodeValue );
		    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
		    mubiao.appendChild(option);		
		    //alert(option);         
    }
    //alert("���!");
} else { //ҳ�治����
    alert('���������ҳ�����쳣');
}
}
}
</script>
<body onload="loadCustomer(); jo()"  class="mainBody"    leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<div  id=demo style="display:block" align="center"> 

<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">���������&gt;&gt; Ӧ�տ��ѯ</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="0" valign="top" >

                    <table width="100%" border="0" cellspacing="1" cellpadding="0">
                    <!-- -->
                     <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >�ͻ�Ӧ�տ��ѯ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_khyscxList.action" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="24" align="left" valign="middle" bgcolor="#F2F2F2">
							  <!-- &nbsp;&nbsp;�ͻ�����:<s:textfield  name="name" maxlength='45'  label="name"/> -->
                               &nbsp;��ҵ����
							  	<select  name="name"   id="name"  >
					            			<!--  --><option value="">-------------------------</option> 
					            </select>
							  &nbsp;									  
							  &nbsp;&nbsp;�绰:<s:textfield  name="tel" maxlength='45'  label="tel"/>
							  <input type="submit" class="btn" value="    ��ѯ    " name="B1">
								<input type="reset"  class="btn" value="    ���    " name="B2">
								<input  type="button"  class="btn"  name="dy"  value="    ��ӡ    "  onclick="fprint()"  >
								<input type="button"   class="btn"   value="���Ϊ Excel"  onclick="saveCode(tableExcel)">
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

</div>

<table   id="tableExcel"   width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="1" cellpadding="0">
            <tr>
              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="1">
                <tr>
                  <td height="29" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="1" cellpadding="0">
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;�ͻ�Ӧ���˿���Ϣ&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
                                <!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">ѡ��</strong></th>					      
					             -->
					             <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ͻ�����</strong></th>               
					            <!--
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�绰</strong></th> 
					             -->         
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��ַ</strong></th>                  
					            <!--
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��ϵ��</strong></th> 
					             -->                 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ͻ�����</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ݹ�Ӧ�տ��ܽ��</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Ӧ�տ��ܽ��</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�����˿��ܽ��</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">δ��Ӧ���˿��ܽ��</strong></th> 					            					            					                               
					              <!--
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;����&nbsp;</strong></th>					          
                           --> 
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
							  <!-- 
							  <td height="25" align="center" valign="middle"><input type="checkbox" name="ids" value="<s:property value='id' />" /></td>		   												          
					          -->
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="name" />&nbsp;					          		          					                 					                   
					          </td>
					          
					         <!-- 
					         <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="tel" />&nbsp;					          
					          </td> 
					         <!--
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="linkman" />&nbsp;				                 					                   
					          </td>
					          -->
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="address" />&nbsp;				                 					                   
					          </td>
					          <!-- <td height="25" align="center" valign="middle">&nbsp;
					                <s:if test ="%{iskfp!=0}"> <s:property value="iskfp" /> </s:if>
					            	<s:else>������Ʊ</s:else>&nbsp;					                 					                   
					          </td> -->
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;					            	
					            		<fmt:formatNumber value="${totalorderamount}" pattern="0.00"/>				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            		<fmt:formatNumber value="${totalamount}" pattern="0.00"/>				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;				            	
					            		<fmt:formatNumber value="${receivedamount}" pattern="0.00"/>				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            		<fmt:formatNumber value="${totalamount -receivedamount}" pattern="0.00"/>			                 					                   
					          </td>					          					          					          
					         <!-- <td height="25" align="center" valign="middle">&nbsp;
					          	<a href='<s:url action="T_customerActionEdit.action"><s:param name="id" value="id" /></s:url>' >&nbsp;<img src='<%= basePath %>images/modify.png' border="0" alt="�޸�" title="�޸�"  height="15" >�༭</a>&nbsp;
                              	<a href='<s:url action="T_customerActionRemove.action" ><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="ɾ��" title="ɾ��"  height="15" >ɾ��</a>&nbsp;                             	 
					          	 
					          	<a href='<s:url action="T_orderActionList.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'>
					          	<img src='<%= basePath %>images/view.png' border="0" alt="�鿴" title="�鿴"  height="15" >�鿴����</a>
					         
					          </td>    -->
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <!--  -->
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="/T_khyscxList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 	<s:param name="name" value="%{t_customer.name}" />
							 	<s:param name="tel" value="%{t_customer.tel}" />
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/T_khyscxList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 	<s:param name="name" value="%{t_customer.name}" />
							 	<s:param name="tel" value="%{t_customer.tel}" />							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/T_khyscxList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 	<s:param name="name" value="%{t_customer.name}" />
							 	<s:param name="tel" value="%{t_customer.tel}" />							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/T_khyscxList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 	<s:param name="name" value="%{t_customer.name}" />
							 	<s:param name="tel" value="%{t_customer.tel}" />							 </s:url>'>βҳ</a>
							 ��<s:property value="paginationSupport.totalCount"  />�� 									
					      </td>
                        </tr>
                                         
                    </table>
                    
                    
                    </td>
                </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
<!-- 
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="table">
<tr>
	<td width="82%" bgcolor="#ad9875">
			<iframe src="T_khyscxList.action" align="top" width="100%" scrolling="no" frameborder="0" height="600" name="under"></iframe>
	</td>
</tr>
</table>
 -->

</body>
</html>