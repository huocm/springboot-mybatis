<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<%@ page import="java.util.*,java.text.*,java.math.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
<%!
public String formatDouble(double s){
    DecimalFormat fmt = new DecimalFormat("0.00");
    return fmt.format(s);
}

%>


<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Ӫҵ��ͳ��</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
    <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
    <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
</head>
<script>
//��ʾ�������
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}

//������Ա�ͻ���
function load(){
	loadUsers();
	
}	

//������
function loadUsers(){
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    //var url = '<%=basePath%>T_user_detailActionFindAll.action?time='+Math.random();
   var url = '<%=basePath%>rm/t_user_detailListAjaxRes.jsp?time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content =""; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",loadUsersCallBack );
}
        
//�ص�����
function loadUsersCallBack(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
            var mubiao = document.getElementById("operator");
			var results = http_request.responseXML.getElementsByTagName("result");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    mubiao.appendChild(option);  
			    //alert(option);         
            }
            //alert("���!");
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
        //Ҫ�����������ɺ��ٵ��������ajax������ֻ����ʾһ������һ���������
        //loadCompany();
    }
}
	
    //�ύ
	function check(){	

//		var company = document.getElementById('companyid').value;		
//		if(company==null || company ==''){
//		    alert("����������Ϊ�գ�");
//			return false;
//		}

//	    var customername = document.getElementById('customerid').value;		
//		if(customername==null || customername ==''){
//		    alert("�ͻ�����Ϊ�գ�");
//			return false;
//		}	
				
		form1.action = "<%= basePath %>T_money_logYyetj.action?pageSize=10000000&startIndex=0";
		form1.submit();
		
	}

	function   fprint()
	{  try{
			   demo.style.display=(demo.style.display == "none")?"block":"none";
			   window.print();
			   demo.style.display = "block";
		  }catch(e){ alert("��ע����Ĵ�ӡ����\n\n.���ܴ�ӡ����û׼���ã�\n.���ܴ�ӡ�������˹��ϡ�");}	   
	}
</script>
<body onload="load(),jo()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<s:form action="" theme="simple"  name="form1" target="" >  

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
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">�����񱨱�&gt;&gt; ˰���ѯͳ��</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >˰���ѯ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				                             				
							<tr>
							  <td width="100%" height="24" align="left" valign="middle" bgcolor="#F2F2F2">
							  
							  &nbsp;&nbsp;������:
							  <select  name="operator" id="operator">
							  		<option value="">--------</option>							   	
							  </select>	
							  &nbsp;&nbsp;����ʱ��Σ� 
							  <s:datetimepicker name="startdate"  id="startdate" value="" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/> 
							  <s:datetimepicker name="enddate"  id="enddate" value="" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/> 
							  
							  &nbsp;&nbsp;
							  <input type="button" class="btn" value="    ��ѯ    " name="B1" onClick="check()">
								<input type="reset"  class="btn" value="    ���    " name="B2">
								<input  type="button"  class="btn"  name="dy"  value="    ��ӡ    "  onclick="fprint()"  >								
								<input type="button"   class="btn"   value="���Ϊ Excel"  onclick="saveCode(tableExcel)">
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

</div>

<table    id="tableExcel"   width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="3">
                <tr>
                  <td height="229" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                     
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
 					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">������ˮ��</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���׹�����ˮ��</strong></th>          
					            <!-- 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">������ˮ��</strong></th>          
					             -->
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��������</strong></th>                   
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ͻ�����</strong></th>
					                    
					           	<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���/ҽ�ƻ�������</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">������</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����ʱ��</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�������</strong></th>                    
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">˰��</strong></th>  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����˵��</strong></th>          
                            </tr>
                           
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="commonid" />				                 					                   
					          </td>
					          <!--<td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="orderno" />				                 					                   
					          </td>-->	
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="optype" />			                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customername" />
					            &nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companyname" />
					            &nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="operator" />            					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="opertime" nice="false" format="yyyy-MM-dd hh:mm:ss" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;				            	
					           		
					                 <fmt:formatNumber value="${operamount}" pattern="0.00"/>				     			                         			                 					                   
					          </td>			
					          <td height="25" align="center" valign="middle">&nbsp;				            	
					       		
					                 <fmt:formatNumber value="${operamount *0.10}" pattern="0.00"/>	     			                         			                 					                   
					          </td>				          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="reason" />				                 					                   
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="right" colspan="100" bgcolor="#FFFFFF">
							 			 ˰���ܼƣ�${showAmount }	&nbsp;&nbsp;&nbsp;&nbsp;					
					      </td>
                        </tr>
                      <tr>
                      
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
