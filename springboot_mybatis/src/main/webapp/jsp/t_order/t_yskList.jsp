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
//��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
if(http_request.status == 200) {                
  var mubiao = document.getElementById("customername");
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
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">�����񱨱�&gt;&gt; Ӧ�տ��ѯ</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >Ӧ�տ���Ϣ��ѯ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_yskList" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">
							 <!-- 
							  &nbsp;&nbsp;
							  �ͻ�����<s:textfield  name="customername" maxlength='20'  label="cardno"/>	&nbsp;&nbsp;			
							   -->			  
                               &nbsp;��ҵ����
							  	<select  name="customername"   id="customername"  >
					            			<!-- --> <option value="">-------------------------</option> 
					            </select>
							  &nbsp;									  

							  <!-- ������<s:textfield  name="creater" maxlength='20'  label="memo"/> &nbsp;&nbsp;-->
							  <!-- ������<s:textfield  name="creater" maxlength='20'  label="memo"/> &nbsp;&nbsp; -->
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

<table   id="tableExcel"  width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="3">
                <tr>
                  <td height="229" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;����Ӧ�տ���Ϣ�б�ҳ&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�������</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����������</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����ʱ��</strong></th>          					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�����</strong></th>           					            
					        	<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����״̬</strong></th>	
					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ͻ�����</strong></th>          					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ݹ�Ӧ�տ���(Ԫ)</strong></th>                 				                 
 
					           <!-- 
					           <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Ԥ�տ���(Ԫ)</strong></th> -->       					                   
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Ӧ�տ���(����+��������)</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���յ����(Ԫ)</strong></th>        
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">ʣ��Ӧ�ս��(Ԫ)</strong></th>        

                           </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" /> &nbsp;					          			                 					                   
					          </td>			          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="creater" />			                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="createtime" nice="false" format="yyyy-MM-dd hh:mm:ss" />					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="checker" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="checkstatus" />      					                   
					          </td>					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customername" />						          	     					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					               <fmt:formatNumber value="${saleprice+num}" pattern="0.00"/> 				                   
					          </td>
					          <!-- 
					          <td height="25" align="center" valign="middle">&nbsp;
						          <s:if test="${currentstatus}==0">
						              <fmt:formatNumber value="${ receiveamount}" pattern="0.00"/> 
						          </s:if>   
						          <s:else>
						          
						          </s:else>  					                   
					          </td> -->
					          <td height="25" align="center" valign="middle">&nbsp;
					              <fmt:formatNumber value="${profit+num}" pattern="0.00"/>		                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					              <fmt:formatNumber value="${receiveamount}" pattern="0.00"/> 			                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					              <fmt:formatNumber value="${profit+num - receiveamount }" pattern="0.00"/> 
					            	     						                   
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="/T_yskList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="customername" value="t_order.customername" />
							 	<s:param name="creater" value="t_order.creater" />								 	
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/T_yskList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="customername" value="t_order.customername" />
							 	<s:param name="creater" value="t_order.creater" />								 	
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/T_yskList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="customername" value="t_order.customername" />
							 	<s:param name="creater" value="t_order.creater" />								 	
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/T_yskList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="customername" value="t_order.customername" />
							 	<s:param name="creater" value="t_order.creater" />								 	
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>βҳ</a>
							 ��<s:property value="paginationSupport.totalCount"  />�� 									
					      </td>
                        </tr>
                      
                    </table></td>
                </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
	
</body>
</html>
