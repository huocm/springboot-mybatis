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
     <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
 
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>   
    
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
			    
			   //����������
			    myRequest();					
			    //alert("���!");
			} else { //ҳ�治����
			    alert('���������ҳ�����쳣');
			}
	}
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
//���������
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
      var companyname = document.getElementById("companyname").value;
      //alert("0"== companyname  );
      if(  "0"== companyname  ){
    	  //�����ŵ����ݳ�ʼ�� 
    	  loadTjmd();
      }
      
  } else { //ҳ�治����
      alert('���������ҳ�����쳣');
  }
}

//ִ�л�ɫ
jo();
}

function clear(){
var obj = document.getElementById("companyname");
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
//���������
if( http_request.readyState == 4) {
  // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
  if(http_request.status == 200) {                
            var mubiao = document.getElementById("companyname");
			var results = http_request.responseXML.getElementsByTagName("company");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			//<option value="0">-----------------------------</option>
			    option = document.createElement("option");
			    option.setAttribute("value",  "");
			    option.appendChild(document.createTextNode("-----------------------------"));
			    mubiao.appendChild(option);  
			    
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    //option.setAttribute("value", results[i].getAttribute("id"));
			    option.setAttribute("value",       results[i].firstChild.nodeValue      );
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
<body onload="loadCustomer();" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
    
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
        <td width="789" align="left" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">��ҵ�����&gt;&gt; ԤԼ���˵�</span></td>
        <td align="right" background="<s:url value='/images/1_09.gif'/>" class="daohang" >
       		<!--  <div id="querylink" onclick="showquery()" >-���ز�ѯ����&nbsp;&nbsp; </div>  -->
        </td>
      </tr>
     <!--  <tr id="querytable"   style="display:block">   -->
        <tr>
        <td colspan="5" align="center" valign="middle" bgcolor="#FFFFFF" >
          
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >ԤԼ��Ϣ���˵�</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <form action="<%=basePath %>T_tjjgyydzd.action"  name="form1"  method="post"  >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">							  							   
							    &nbsp;��ҵ����
							  	<select  name="customername"   id="customername"  >
					            	<option value="">-----------------------------</option> 
					            </select>
					           &nbsp;������
							  <select id="pid" name="pid" onChange="loadTjmd()">					            					            	
					            	 <option value="0">-----------------------------</option>
							  </select>	
												
					             
							  &nbsp;����ŵ�      
							  <select id="companyname" name="companyname"   >					            					            	
					            	<!--  --> <option value="">-----------------------------</option>   
							  </select>	
							    <br>					  
					          &nbsp;��ʼʱ��<input type="text"  name="startdate" onclick='javascript:SelectDate(this)' readonly='true'/>
							  &nbsp;��ֹʱ��<input type="text"  name="enddate"  onclick='javascript:SelectDate(this)' readonly='true'/>							 						  							 
							     <input type="hidden"  name="pageSize" value="100"/>
							  
							    <input type="submit" class="btn" value="    ��ѯ    " name="B1">
								<input type="reset"  class="btn" value="    ���    " name="B2">
								<input  type="button"  class="btn"  name="dy"  value="    ��ӡ    "  onclick="fprint()"  > 
								<input type="button"   class="btn"   value="���Ϊ Excel"  onclick="saveCode(tableExcel)">
							  </td>                             
                            </tr>	
                              </form>	
       					  																	   
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;ԤԼ��Ϣ�б�ҳ&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">ԤԼ���</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">������</strong></th>                 
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����ŵ�</strong></th>					          			          
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��ҵ����</strong></th>						            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�͑�����</strong></th>          
					            <!-- 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��ҵ����</strong></th>                               
					             -->
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�绰</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���֤����</strong></th>                    
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Լ�����ʱ��</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ײ�����</strong></th>                   

                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" />		                 					                   
					          </td>

					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companypname" />					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companyname" />					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customername" />				                 					                   
					          </td>						          					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="membername" />				                 					                   
					          </td>					          
					         <!-- 
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customername" />				                 					                   
					          </td>
					           -->
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo2" />				                 					                   
					          </td>					          							                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	${answertime}<s:date name="answertime" nice="false" format="yyyy-MM-dd" />			                 					                   
					          </td>					  
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="productname" />			                 					                   
					          </td>

					          
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="right" colspan="100" bgcolor="#FFFFFF">
							 			<!-- 
							 			ԤԼ�����ܼƣ�&nbsp;&nbsp;(ÿ�������ʾ5000��)&nbsp;&nbsp;					
					                    -->
					      </td>
                        </tr>
                      <tr>                      
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							<!-- -->
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="/T_tjjgyydzd.action">
							 	<s:param name="pageSize" value="100" />
							 	<s:param name="customername" value="t_book.customername" />
							 	<s:param name="companyname" value="t_book.companyname" />							 	
							 	<s:param name="pid" value="t_book.pid" />
							 	<s:param name="startdate" value="t_book.startdate" />							 	
							 	<s:param name="enddate" value="t_book.enddate" />							 	
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/T_tjjgyydzd.action">
							 	<s:param name="pageSize" value="100" />
							 	<s:param name="customername" value="t_book.customername" />
							 	<s:param name="companyname" value="t_book.companyname" />							 	
							 	<s:param name="pid" value="t_book.pid" />
							 	<s:param name="startdate" value="t_book.startdate" />							 	
							 	<s:param name="enddate" value="t_book.enddate" />								 	
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/T_tjjgyydzd.action">
							 	<s:param name="pageSize" value="100" />
							 	<s:param name="customername" value="t_book.customername" />
							 	<s:param name="companyname" value="t_book.companyname" />							 	
							 	<s:param name="pid" value="t_book.pid" />
							 	<s:param name="startdate" value="t_book.startdate" />							 	
							 	<s:param name="enddate" value="t_book.enddate" />	
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/T_tjjgyydzd.action">
							 	<s:param name="pageSize" value="100" />
							 	<s:param name="customername" value="t_book.customername" />
							 	<s:param name="companyname" value="t_book.companyname" />							 	
							 	<s:param name="pid" value="t_book.pid" />
							 	<s:param name="startdate" value="t_book.startdate" />							 	
							 	<s:param name="enddate" value="t_book.enddate" />	
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>βҳ</a>
							 ��<s:property value="paginationSupport.totalCount"  />�� 									
					       
					        
					       
					      </td>
                        </tr>
                      <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			               <!--
			               <input type="button" name="add" value="    ����    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_book/t_bookAdd.jsp"/>'" style="cursor:hand">&nbsp;
			              <input type="submit" name="del" value="    ɾ��    " class="btn"> 
			              -->
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
 <script language="JavaScript" src="<%= basePath %>/js/calendar.js" ></script> 