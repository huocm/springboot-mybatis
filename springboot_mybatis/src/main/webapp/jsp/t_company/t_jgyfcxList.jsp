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

          //�����ҳ���һ�μ��أ���û�г���onchange�¼�����ִ��һ�μ����������¼��ŵ�����
          var name = document.getElementById("name").value;
          //alert("0"== name  );
          if(  "0"== name  ){
        	  //�����ŵ����ݳ�ʼ�� 
        	  //loadTjmd();
          }
          
      } else { //ҳ�治����
          alert('���������ҳ�����쳣');
      }
  }

  //ִ�л�ɫ
  jo();
}

function clear(){
 var obj = document.getElementById("name");
 while(obj.childNodes.length > 0) {
      obj.removeChild(obj.childNodes[0]);
  }
}

//������
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
          var name = document.getElementById("name");
			var results = http_request.responseXML.getElementsByTagName("company");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			    option = document.createElement("option");
			    option.setAttribute("value", "0" );
			    option.appendChild(document.createTextNode("-------------------------"));
			    name.appendChild(option);  
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    //option.setAttribute("value", results[i].getAttribute("id"));
			    option.setAttribute("value",       results[i].firstChild.nodeValue      );
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    name.appendChild(option);  
			    //alert(option);         
          }
          //alert("���!");
      } else { //ҳ�治����
          alert('���������ҳ�����쳣');
      }
  }
}

</script>
<body onload="myRequest()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

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
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">���������&gt;&gt; Ӧ���˿��ѯ</span></td>
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
                     <!-- -->
                      <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >Ӧ���˿��ѯ</td>
                            </tr>
                        </table></td>
                      </tr>
                       
                      <tr>
                        <td bgcolor="cbcbcb"> 
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_jgyfcxList" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="24" align="left" valign="middle" bgcolor="#F2F2F2">
							  &nbsp;����������
							  <select id="pid" name="pid" onChange="loadTjmd()">					            					            	
					            	   <option value="0">------------------------</option>  
							  </select>
						
							  &nbsp;����ŵ�����      
							  <select id="name" name="name" onChange="">					            					            	
					            	<!--  --> <option value="0">------------------------</option> 
							  </select>
							  
							  &nbsp;<input type="submit" class="btn" value="    ��ѯ    " name="B1">
								&nbsp;<input type="reset"  class="btn" value="    ���    " name="B2">
								&nbsp;<input  type="button"  class="btn"  name="dy"  value="    ��ӡ    "  onclick="fprint()"  >
								&nbsp;<input type="button"   class="btn"   value="���Ϊ Excel"  onclick="saveCode(tableExcel)">
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

<table  id="tableExcel"   width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;Ӧ��������������Ϣ�б�&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>                      
                      
                      
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���/ҽ�ƻ�������</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����</strong></th>          
					            <!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����</strong></th>  -->                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�绰</strong></th>
					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Ӧ���ܽ��(Ԫ)</strong></th>                                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�Ѹ��ܽ��(Ԫ)</strong></th>                                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">δ���ܽ��(Ԫ)</strong></th>                                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��ַ</strong></th>                                                                  
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;����&nbsp;</strong></th>					          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="a<s:property value='companyid'/>" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companyid" />&nbsp;					          				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="name" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="area" />				                 					                   
					          </td>
					          <!-- 
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companytype" />				                 					                   
					          </td>	
					           -->				          					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="tel" />			                 					                   
					          </td>
					          
					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            	
					            	<fmt:formatNumber value="${payamount}" pattern="0.00"/>			                 					                   
					          </td>					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            				 
					            	<fmt:formatNumber value="${payedamount}" pattern="0.00"/>                					                   
					          </td>					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            		
					            	<fmt:formatNumber value="${payamount - payedamount}" pattern="0.00"/>			                 					                   
					          </td>
					          					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="address" />			                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					          	<a href='<s:url action="T_reportActionList.action"><s:param name="id" value="companyid" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="�鿴" title="�鿴"  height="15" >�鿴</a>
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                       <tr>
                        <td height="22" align="right" colspan="100" bgcolor="#FFFFFF">
							 			�ܼƣ�${showAmount }	(Ԫ)&nbsp;&nbsp;(ÿ�������ʾ10��)&nbsp;&nbsp;					
					      </td>
                        </tr>
                      <tr>
                     <!--  -->
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="/T_jgyfcxList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="pid" value="t_company.pid" />
							 	<s:param name="name" value="t_company.name" />							 	
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/T_jgyfcxList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="pid" value="t_company.pid" />
							 	<s:param name="name" value="t_company.name" />	
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/T_jgyfcxList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="pid" value="t_company.pid" />
							 	<s:param name="name" value="t_company.name" />	
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/T_jgyfcxList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="pid" value="t_company.pid" />
							 	<s:param name="name" value="t_company.name" />	
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