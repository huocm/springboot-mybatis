<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

response.setHeader("Pragma","No-cache");    
response.setHeader("Cache-Control","no-cache");    
response.setDateHeader("Expires", -10);   
%>
<% request.setCharacterEncoding("GBK");%>
<% response.setCharacterEncoding("GBK");%>

<%! //�����ַ����ķ�����
  public String codeString(String s)
    { String str=s;
       try{byte b[]=str.getBytes("iso-8859-1");
           str=new String(b);
           return str;
         }
      catch(Exception e)
         { 
		  return str;
         }
    }
%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<META HTTP-EQUIV="pragma" CONTENT="no-cache"> 
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"> 
<META HTTP-EQUIV="expires" CONTENT="Wed, 26 Feb 1997 08:21:57 GMT"> 

<title>T_card��Ϣ�б�ҳ</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<%=basePath %>js/myAjax.js" ></script>
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
    <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
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
function myRequest(){
//URLδβҪ�Ӹ�������������������ٴ��ύ
    var url = '<%=basePath%>T_companyActionFindAll.action?time='+Math.random();
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
          var mubiao = document.getElementById("company");
			var results = http_request.responseXML.getElementsByTagName("company");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    //option.setAttribute("value", results[i].getAttribute("id"));
			    option.setAttribute("value", results[i].firstChild.nodeValue );
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    mubiao.appendChild(option);  
			    //alert(option);         
        }        
    } else { //ҳ�治����
        alert('���������ҳ�����쳣');
    }
}

//ִ�л�ɫ
jo();
}


//----------------------ȫѡ���-----------//
function add(){
    checkfunctionIDS();
	var url = '<%= basePath %>rm/t_user_functionSave.jsp';
	//self.location.href= url;
	//alert(url);
	form1.action= url;
	form1.submit();
}

//�õ���ѡ��ѡ�е�ֵ
function getCheckboxValue(){
	var checkbox = checkfunctionIDS();
	if(checkbox!=false){
		return checkbox.value;
	}
}

//У���ѡ��
function   checkfunctionIDS(){                                   
   var obj,count,obj1;   
      obj=document.getElementsByName("ids");   
      count=0;   
      for(i=0;i<obj.length;i++)   
      {   
         if(obj[i].checked==true) 
         {
         	count++;
         	obj1 =obj[i];
         }
      }   
      if(count<1)   
      {   
         alert("������ѡ��һ����Դ���в�����");
         return false;   
      }   
      //else if (count>1)   
      //{   
      //   alert("��ѡ��һ����¼���в�������Ӳ�����ѡ��һ�����ڵ㣩��");   
      //   return  false;   
      //}      
      return obj1;              
} 

//ȫѡ����
function   quanxuan( idsname ){  
	//alert("idsname="+idsname+"");
	//eval(alert("eval print="+""+idsname));
	for (i=0; i<idsname.length; i++)
	{
	     //alert(idsname[i].value);
	     idsname[i].checked = true;
	     //alert("checked="+idsname[i].checked);       
	}   
}

//��ѡ����
function   fanxuan(idsname){   
	for (i=0; i<idsname.length; i++)
	{
	     idsname[i].checked = false;
	     //alert("checked="+idsname[i].checked);       
	} 
}

</script>
<body onload="myRequest()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">��ҵ�����&gt;&gt; �����Ŀ����</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >�����Ŀ��Ϣ��ѯ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_products_subActionList" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">
							  &nbsp;&nbsp;
							  ����������
							  <select id="company" name="company"   >					            					            	
					            	<!--  --> <option value="0">-----------------------------</option> 
							  </select>		
							  	&nbsp;&nbsp;						  
							  ��Ŀ����<s:textfield  name="name" maxlength='20'  value="" /> &nbsp;&nbsp;
							  �����Ŀ<s:textfield  name="memo" maxlength='20'   value="" /> &nbsp;&nbsp;
							    <input type="submit" class="btn" value="    ��ѯ    " name="B1">
								<input type="reset"  class="btn" value="    ���    " name="B2">
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
<s:form action="T_products_subActionRemoveBatch" theme="simple"  target="" >                   				
<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
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
					  <!-- 
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;����Ŀ��Ϣ�б�ҳ&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                       -->
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            
		                
                            <tr>                          
                                <!--  -->
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">ѡ��</strong></th>
					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��Ŀ���</strong></th>                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">������</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��Ŀ����</strong></th>                       
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�����Ŀ</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ٴ�����</strong></th> 
				            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ɱ���</strong></th>                  			             
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�����(��ɼ۸�)</strong></th>      
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��̼۸�</strong></th>                   
					            <th width="20%" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;����&nbsp;</strong></th>					          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
							  <!-- -->
							  <td height="25" align="center" valign="middle"><input type="checkbox" name="ids" value="<s:property value='id' />" /></td>		   							
					           
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="#stuts.count" />
					            &nbsp;					          					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="company" />&nbsp;					          				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="name" />&nbsp;					          				                 					                   
					          </td>			                 					                   
					          </td>                              
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo" />&nbsp;					          
					          </td>
					           <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo2" />&nbsp;					          					                 					                   
					          </td>
					         <!-- 
					         <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="createdate" nice="false" format="yyyy-MM-dd hh:mm:ss" />&nbsp;					          			                 					                   
					          </td>					          
					          		          
					          -->
					           
					          <td height="25" align="center" valign="middle">&nbsp;					            			
					            	<fmt:formatNumber value="${cost}" pattern="0.00"/>			          				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;					            			
					            	<fmt:formatNumber value="${price}" pattern="0.00"/>			          				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;					            			
					            	<fmt:formatNumber value="${amount}" pattern="0.00"/>			          				                 					                   
					          </td>					         
					          <td height="25" align="center" valign="middle">&nbsp;
					          	<a href='<s:url action="T_products_subActionEdit.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/modify.png' border="0" alt="�༭" title="�༭"  height="15" >�༭</a>&nbsp;
                              	<a href='<s:url action="T_products_subActionRemove.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="ɾ��" title="ɾ��"  height="15" >ɾ��</a>&nbsp;
					          	<a href='<s:url action="T_products_subActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="�鿴" title="�鿴"  height="15" >�鿴</a>
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <!--  
							 <a href="<%=basePath %>/T_products_subActionList.action?company=${ t_products_sub.company }&name=${t_products_sub.name }&memo=${t_products_sub.memo }&pageSize=100&startIndex=${paginationSupport.firstIndex }">��ҳ</a>
							 <a href="<%=basePath %>/T_products_subActionList.action?company=${ t_products_sub.company }&name=${t_products_sub.name }&memo=${t_products_sub.memo }&pageSize=100&startIndex=${paginationSupport.previousIndex }">��һҳ</a>
							 <a href="<%=basePath %>/T_products_subActionList.action?company=${ t_products_sub.company }&name=${t_products_sub.name }&memo=${t_products_sub.memo }&pageSize=100&startIndex=${paginationSupport.nextIndex }">��һҳ</a>
							 <a href="<%=basePath %>/T_products_subActionList.action?company=${ t_products_sub.company }&name=${t_products_sub.name }&memo=${t_products_sub.memo }&pageSize=100&startIndex=${paginationSupport.lastIndex }">βҳ</a>
							 -->
							 
							 
							<a href='<s:url value="/T_products_subActionList.action">
							 	<s:param name="company" value="t_products_sub.company" />  
							 	<s:param name="name" value="t_products_sub.name" />
							 	<s:param name="memo" value="t_products_sub.memo" />
							 	<s:param name="pageSize" value="800" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 	
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/T_products_subActionList.action">
							 	<s:param name="pageSize" value="800" />
							 	<s:param name="company" value="t_products_sub.company" />
							 	<s:param name="name" value="t_products_sub.name" />
							 	<s:param name="memo" value="t_products_sub.memo" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/T_products_subActionList.action">
							 	<s:param name="pageSize" value="800" />
							 	<s:param name="company" value="t_products_sub.company" />
							 	<s:param name="name" value="t_products_sub.name" />
							 	<s:param name="memo" value="t_products_sub.memo" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/T_products_subActionList.action">
							 	
							 	<s:param name="company" value="t_products_sub.company" />
							 	<s:param name="name" value="t_products_sub.name" />
							 	<s:param name="memo" value="t_products_sub.memo" />							 	
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 	<s:param name="pageSize" value="800" />
							 </s:url>'>βҳ</a>
							  
							 ��<s:property value="paginationSupport.totalCount"  />�� 									
					      </td>
                        </tr>
                        
                        <tr>
		                      <td height="36" colspan="13" align="center" valign="middle" bgcolor="#FFFFFF">
		                       <input type="button" name="add" value=" ���������Ŀ " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_products_sub/t_products_subAdd.jsp"/>'" style="cursor:hand">&nbsp;
					             <input type="submit" name="del" value="    ����ɾ��    " class="btn">&nbsp;
					             <input type="button" name="qx" value="    ȫѡ      " class="btn"  onClick="quanxuan(ids)" >&nbsp;
                                 <input type="button" name="fx" value="    ��ѡ      " class="btn"  onClick="fanxuan(ids)" >&nbsp;                                    
					             
					             <!--  <input type="button" name="add" value=" ����һ����Ŀ " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_products_sub/t_products_subAdd.jsp"/>'" style="cursor:hand">&nbsp;
					              <input type="button" name="add" value=" ����������Ŀ " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_products_sub/t_products_subAdd2.jsp"/>'" style="cursor:hand">&nbsp;
					              <input type="button" name="add" value=" ����������Ŀ " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_products_sub/t_products_subAdd3.jsp"/>'" style="cursor:hand">&nbsp;
		                          &nbsp;&nbsp;&nbsp;&nbsp;
					               �ϴ�����Ŀ���<input type="file" name="image"><input type="button" name="add" value="    �ϴ�    " class="btn" onClick="window.alert('�ϴ��ɹ���')" style="cursor:hand">&nbsp;
		                         <br> -->
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
</s:form>	
</body>
</html>
