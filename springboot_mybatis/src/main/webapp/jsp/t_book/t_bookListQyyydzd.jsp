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
<title>T_book��Ϣ�б�ҳ</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
    <script language="JavaScript" src="<%= basePath %>/js/calendar.js"></script>    
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
</head>
<script>
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
</script>
<body class="mainBody"  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

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
         	<!--   <div id="querylink" onclick="showquery()" >-���ز�ѯ����&nbsp;&nbsp; </div>    -->
        </td>
      </tr>
     <!--  <tr id="querytable"   style="display:block">   -->
        <tr>
        <td colspan="5" align="center"  valign="middle"  bgcolor="#FFFFFF" >
          
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
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>"    height="24"></td>
                              <td  width="100%"  align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >ԤԼ��Ϣ���˵�</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_qyyydzd" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">							  
							  &nbsp;&nbsp;	��ҵ����<s:textfield  name="customername" maxlength='20'  id="customername"/>							  							  
							  &nbsp;&nbsp;	������<s:textfield  name="companypname" maxlength='20'  label="companypname"/>
							  &nbsp;&nbsp;	����ŵ�<s:textfield  name="companyname" maxlength='20'  label="companyname"/>
							  <br>
							  &nbsp;&nbsp;	��ʼʱ��<s:textfield  name="startdate" maxlength='20'  label="startdate" onclick='javascript:SelectDate(this)' readonly='true'/>
							  &nbsp;&nbsp;	��ֹʱ��<s:textfield  name="enddate" maxlength='20'  label="enddate" onclick='javascript:SelectDate(this)' readonly='true'/>
							  <s:hidden  name="pageSize" label="pageSize" value="100"/>
							  
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
  
<table   id="tableExcel"   width="100%"  onLoad='jo()' border="0" cellspacing="0" cellpadding="0" bgcolor="">
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
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��ҵ����</strong></th>	
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">������</strong></th>                 
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����ŵ�</strong></th>					          			          
					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�͑�����</strong></th>          
					            <!-- 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��ҵ����</strong></th>                               
					             -->
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�绰</strong></th>          
                 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Լ�����ʱ��</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ײ�����</strong></th>                   

                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" />		                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customername" />				                 					                   
					          </td>	
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companypname" />					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companyname" />					                 					                   
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
							<!-- 
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="/T_bookActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/T_bookActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/T_bookActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/T_bookActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>βҳ</a>
							 ��<s:property value="paginationSupport.totalCount"  />�� 									
					       -->
					        
					       
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
