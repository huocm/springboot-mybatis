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
//��ʾ�������
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
  alert(vmessage);
}


//----------------------ȫѡ���-----------//
function checkValue(){
    if(checkfunctionIDS()){  
		var url = '<%= basePath %>saveDdTaocanOne.action?orderid=${t_order_sub.orderid }&ordersubid=${t_order_sub.ordersubid }';
		//self.location.href= url;
		//alert(url);
		form3.action= url;
		form3.submit();
    }
}

//�õ���ѡ��ѡ�е�ֵ
function getCheckboxValue(){
	var checkbox = checkfunctionIDS();
	if(checkbox!=false){
		return checkbox.value;
	}
}

//У���ѡ��
function checkfunctionIDS(){                                   
 var obj,count,obj1;   
    obj=document.getElementsByName("male");   
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
    //return obj1; 
    return true;
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

function   getRadioBoxValue(radioName)  
{   
      //alert("getRadioBoxValue");
	    var obj = document.getElementsByName(radioName);             //������Ա�ǩ��name��ȡ�ؼ�  
            for(i   =   0;   i   <   obj.length;   i++)    {  
                if(obj[i].checked)    {  
                        return   obj[i].value;  
                }  
            }          
           return "undefined";        
}  


//��ֹҳ��ˢ�£���ֹF5
document.onkeydown=function (){
	if(event.keyCode==116){
		event.keyCode=0;
		event.cancelBubble=true;
		return false;
	}
}

</script>
<body onload="" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

                  				
<table width="100%"  border="1" cellspacing="0" cellpadding="0" bgcolor="">
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
					  <!-- -->
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >����Ҫ��ӵ��ײ͵������Ŀ��Ϣ</td>
                            </tr>
                        </table></td>
                      </tr>
                      
					  <tr>
                        <td>
                           <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="taocanTjxmAddList" theme="simple"  target="_self">                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">
							  &nbsp;&nbsp;
							  <input type="hidden"  name="companypid"  value="${t_order_sub.companypid }" />		  	
							  	&nbsp;&nbsp;						  
							  ��Ŀ����<s:textfield  name="name" maxlength='20'  value="" /> &nbsp;&nbsp;
							  �����Ŀ<s:textfield  name="memo" maxlength='20'   value="" /> &nbsp;&nbsp;
							  <s:hidden  id="orderid" name="orderid"  value='${t_order_sub.orderid }' />   
							  <s:hidden  id="ordersubid" name="ordersubid"  value='${t_order_sub.ordersubid }' />   
							  
							    <input type="submit" class="btn" value="    ��ѯ    " name="B1">
								<input type="reset"  class="btn" value="    ���    " name="B2">
							  
							  </td>                             
                            </tr>	
                              </s:form>																		   
                         </table>    
                         </td>
                      </tr>
                      
                      <s:form action="" name="form3" theme="simple"  target="" >  
                       
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            
		                
                            <tr>                          
                                <!--  -->
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">ѡ��</strong></th>
					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���</strong></th>                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">������</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��Ŀ����</strong></th>                       
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�����Ŀ</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ٴ�����</strong></th> 
				            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�����</strong></th>                  			             
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��̼۸�</strong></th>                   
					        					          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
							  <!-- -->
							  <td height="25" align="center" valign="middle">
							  	<input type="checkbox" name="male" value="<s:property value='id' />" />
							  </td>		   												           
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
					            			
					            	<fmt:formatNumber value="${price}" pattern="0.00"/>			          				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            			
					            	<fmt:formatNumber value="${amount}" pattern="0.00"/>			          				                 					                   
					          </td>					         
					
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <!-- 
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ									 
							<a href='<s:url value="/t_products_subTCSelectList.action">
							 	<s:param name="company" value="t_products_sub.company" />  
							 	<s:param name="name" value="t_products_sub.name" />
							 	<s:param name="memo" value="t_products_sub.memo" />
							 	<s:param name="orderid" value="${t_order_sub.orderid }" />
							 	<s:param name="ordersubid" value="${t_order_sub.ordersubid }" />							 								 	
							 	<s:param name="pageSize" value="500" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />							 	
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/t_products_subTCSelectList.action">
							 	<s:param name="pageSize" value="500" />
							 	<s:param name="company" value="t_products_sub.company" />
							 	<s:param name="name" value="t_products_sub.name" />
							 	<s:param name="memo" value="t_products_sub.memo" />
							 	<s:param name="orderid" value="${t_order_sub.orderid }" />
							 	<s:param name="ordersubid" value="${t_order_sub.ordersubid }" />							 								 	
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/t_products_subTCSelectList.action">
							 	<s:param name="pageSize" value="500" />
							 	<s:param name="company" value="t_products_sub.company" />
							 	<s:param name="name" value="t_products_sub.name" />
							 	<s:param name="memo" value="t_products_sub.memo" />
							 	<s:param name="orderid" value="${t_order_sub.orderid }" />
							 	<s:param name="ordersubid" value="${t_order_sub.ordersubid }" />							 								 	
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/t_products_subTCSelectList.action">
							 	
							 	<s:param name="company" value="t_products_sub.company" />
							 	<s:param name="name" value="t_products_sub.name" />
							 	<s:param name="memo" value="t_products_sub.memo" />
							 	<s:param name="orderid" value="${t_order_sub.orderid }" />
							 	<s:param name="ordersubid" value="${t_order_sub.ordersubid }" />							 	
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 	<s:param name="pageSize" value="500" />
							 </s:url>'>βҳ</a>
							  
							 ��<s:property value="paginationSupport.totalCount"  />�� 									
					      </td>
                        </tr>
                         -->
                        <tr>
		                      <td height="36" colspan="13" align="center" valign="middle" bgcolor="#FFFFFF">
		                         <input type="button" name="add" value="    ȷ����ӵ��ײ���    " class="btn"   onclick="checkValue()" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                     <input type="button" name="gb" value="    ����   " class="btn" onClick="javascript:window.location.href='<%=basePath %>T_orderActionEditTjxm.action?id=${t_order_sub.orderid }'" >&nbsp;
		                       	 <input type="button" name="qx" value="    ȫѡ      " class="btn"  onClick="quanxuan(male)" >&nbsp;
                                 <input type="button" name="fx" value="    ��ѡ      " class="btn"  onClick="fanxuan(male)" >&nbsp; 
                               </td>
		               </tr>
		               </s:form>	
		               
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
