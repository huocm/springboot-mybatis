<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<% request.setCharacterEncoding("GBK");%>
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
<s:head theme="ajax" />
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>�ײͲ�Ʒ��Ϣ����ҳ</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
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
function check(){
   //��ȡselect��option  ����
	var productname = document.form1.name.value;
	if(productname.length==0){
	   alert("�������ײͲ�Ʒ����");
	   return false;
	}
	
    var companyid = document.form1.companyid.value;
	if(companyid.length==0){
	   alert("��ѡ��������");
	   return false;
	}
    
    var tjjgcompany = document.form1.tjjgcompany.value;
	if(tjjgcompany.length==0){
	   alert("��ѡ������������");
	   return false;
	}
	
	  //�ж��Ƿ�ѡ������쵥��
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
         alert("������ѡ��һ������Ŀ���в�����");
         return false;   
      }   
    
    document.form1.action = "<%=basePath%>/T_products_productssub_relAction.action";
    document.form1.submit();
}

</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">��ϵͳ����&gt;&gt; �ײͲ�Ʒ��Ϣά��</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >�ײͲ�Ʒ��Ϣ����ҳ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
								
							<tr>
							  <td colspan="5" height="24" align="center" valign="middle" bgcolor="#F2F2F2">
							   &nbsp;&nbsp;<font color="red"><s:fielderror /></font>
							  </td>
							</tr>
							
							<tr>
							  <td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�ײͲ�Ʒ����:</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="name" maxlength='45' readonly="true" label="name" value="<%=request.getParameter("productname") %>" />
							    <font color="#FF0000">*</font>
							  </td>
                                                                  
                              <td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">������:</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<s:textfield id="tjjgcompany" name="tjjgcompany" readonly="true" label="tjjgcompany" value="<%=request.getParameter("company") %>" />
					            	<font color="#FF0000">*</font>					            					            	
					            	<s:hidden  id="companyid" name="companyid" value="<%=request.getParameter("companyid") %>" />      	 
							  </td>
                            </tr>
											
				   
                         </table>
                        
						</td>
                      </tr>
                      
                      
                      <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;����Ŀ��Ϣ�б�&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                            <tr >                          
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">ѡ��</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��Ŀ���</strong></th>                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">������</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��Ŀ����</strong></th>                       
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�����Ŀ</strong></th>          
					            <!-- 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����ʱ��</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ٴ�����</strong></th>          		             
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">δ��Ů</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ѻ�Ů</strong></th>          
					            -->					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���Լ۸�</strong></th>                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">δ��Ů�۸�</strong></th>          
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ѻ�Ů�۸�</strong></th>          
				          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" id="tr<s:property value='id' />" bgcolor="#FFFFFF" align="center">							  
							  <td height="25" align="center" valign="middle">
							  <input type="checkbox" name="ids" value="<s:property value='id' />" /></td>		   							
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" />
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
					            	<s:property value="maleprice" />&nbsp;					          				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="marriedprice" />&nbsp;			                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="unmarriedprice" />&nbsp;					          				                 					                   
					          </td>					    
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                     
                      <tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="5">                                	
	                      		<input type="button" class="btn" value="    �����ײͲ�Ʒ    " name="B1" onclick="check()">
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


 
</s:form>
</body>
</html>
	