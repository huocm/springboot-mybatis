<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@include file="../../taglibs.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_order��Ϣ�༭ҳ</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
<style type="text/css">
<!--
.STYLE5 {	color: #000000;
	font-size: 12px;
}
-->
</style>
</head>
<script type="text/javascript" language="javascript">

function tijiao(){
 form1.action="<%=basePath%>T_orderActionSHTG.action";
 form1.submit();
}

function tuihui(){
 form1.action="<%=basePath%>T_orderActionTH.action";
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
<body onload="" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">����������&gt;&gt; ����˶���&gt;&gt;����</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" ><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">����������Ϣ</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">��������Ϣ��</td>
                            </tr>	   				 
							<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">�������</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.id }&nbsp;
                              <s:hidden  id="id" name="id" value="${t_order.id }" />
                              </td>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">����״̬ </td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.checkstatus }&nbsp;</td>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">��������</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.createtime }&nbsp;</td>                                                            
                            </tr>                            
                            <tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">�����ܽ��</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.saleprice }&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">�������ɱ����</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${ orderCostAll }&nbsp;</td>                                                          
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">������</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.creater }&nbsp;</td>                                                          
                            </tr> 
   	                          
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">���ͻ���Ϣ��</td>
                            </tr>		                                                       
							<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">�ͻ�����</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.customername }&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">��ϵ��</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;***<!-- ${t_order.linkman }  -->&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">��ϵ��ʽ</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;***<!--  ${t_order.linktel }  -->&nbsp;</td>                                                          
                            </tr>

                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">�����������Ϣ��</td>
                            </tr>		  				            
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">����(Ԫ)</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.malecost}&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">ס�޷�(Ԫ)</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.marriedcost }&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">���÷���(Ԫ)</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.unmarriedcost }&nbsp;</td>                                                          
                            </tr>
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">��������(Ԫ)</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.maleprice }&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">��������ԭ��</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.reason }&nbsp;</td>
                             <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">ë����</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                              	<fmt:formatNumber value="${ (( t_order.saleprice - t_order.saleprice*0.0555 - orderCostAll - t_order.malecost  - t_order.marriedcost  - t_order.unmarriedcost -  t_order.maleprice )/  t_order.saleprice)*100  }" pattern="0.00"/>%&nbsp;
                              </td>                     
           					<tr>
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">��������</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF"  colspan="5">&nbsp;
                              <s:textarea name="memo2" cols="130" rows="3" value="${t_order.memo2 }" id="memo2" />&nbsp;���Ȳ���512������
                              </td>                             
                            </tr>                         
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="10">�������ײ���Ϣ��</td>
                            </tr>	                     
                            <tr>
		                        <td valign="top" bgcolor="cbcbcb"  colspan="8">
			                        <table id="table0" width="100%" border="0" cellspacing="0" cellpadding="0">
			                           <tr>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>�ײ�����</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>������</td>
										<!-- <td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>����ŵ�</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>�ɱ���</td> 
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>ԭ���ۼ�</td>-->
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>���ۼ۸�</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>��Ա����</td>										
									   </tr>      
									  
									  <s:iterator value="t_order_subList" status="stuts">  
									   <tr>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ memo }</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ companypname }</td>
										<!--<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ companyname }</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ cost }</td> 
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ profit }</td>-->
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ saleprice }</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>${ num }</td>
										
									   </tr>   
									   </s:iterator>    
									                    					      							   
								    </table>
		                        </td>
		                    </tr>			                  
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">��������ʷ���������</td>
                            </tr>		  				            

                        <s:iterator value="t_ideaList" status="stuts">
							<tr>
							  <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">������</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${checker}&nbsp;</td>                             
                              <td width="15%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">������ɫ</td>
                              <td width="15%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${rolename }&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">���</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${result };${idea }&nbsp;</td> 
                            </tr>                          
                        </s:iterator> 
                         
                            <tr>
                              <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">���������������</td>
                            </tr>		  				            
           					<tr>
           					  <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">������</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${sessionScope.userName}&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">������ɫ</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${sessionScope.userRoles}&nbsp;</td>  
                              <td width="10%" height="50" align="right" valign="middle" bgcolor="#FFFFFF">���</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                              	<input type="text" name="idea" id="idea" size="50" maxlength="50">                             	
                              </td>    					        
                            </tr>   
                            
        
                        </table>
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
		
<div  id="demo" style="display:block" align="center">

<% if(request.getSession().getAttribute("userRoles").toString().contains("�ܲ��ͷ���")){ %>
<input  type="button"  class="btn"  name="shtg"  value="    ȷ��    "  onClick="tijiao()"  > &nbsp;&nbsp;
<% }else if(request.getSession().getAttribute("userRoles").toString().contains("�ֹ�˾������")){ %>
<input  type="button"  class="btn"  name="shtg"  value="    ��ͬɨ�����    "  onClick="tijiao()"  > &nbsp;&nbsp;
<input  type="button"  class="btn"  name="dy"  value="    �鿴/��ӡ��ͬ    "  onClick="window.open('<%=basePath %>T_orderActionHTView.action?id=${t_order.id }')"  > &nbsp;&nbsp;
<input  type="button"  class="btn"  name="th"  value="    �˻�    "  onClick="tuihui()"  > &nbsp;&nbsp;
<% }else{ %>	
<input  type="button"  class="btn"  name="shtg"  value="    ���ͨ��    "  onClick="tijiao()"  > &nbsp;&nbsp;	
<input  type="button"  class="btn"  name="th"  value="    �˻�    "  onClick="tuihui()"  > &nbsp;&nbsp;
<%} %>

<input  type="button"  class="btn"  name="dy"  value="    ��ӡ����    "  onClick="fprint()"  > &nbsp;&nbsp;
<input  type="button"  class="btn"  name="B1"  value="    ����    "  onClick="javascript:history.back(-1)"/>

</div>
<br>
</s:form>
</body>
</html>
	