<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>




<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>����ѯ��Ϣ�б�ҳ</title>
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
</head>
<script>
//����ʹ��
var domok=document.all||document.getElementById
if (domok)
document.write('<SCRIPT SRC="<s:url value='/js/sorttable.js'/>" ><\/SCRIPT>')
</script>

<body class="mainBody"  onLoad='jo()'  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <!-- <tr>
    <td height="3" bgcolor="2d6094"></td>
  </tr> -->
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <!--<tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom" background="<s:url value='/images/1_09.gif'/>"><span class="daohang">��������&gt;&gt; �����Ϣ�б�</span></td>
      </tr> -->
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;�����Ϣ�б�ҳ&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                       <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                            <tr>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��������</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">ϸ������</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�����</strong></th> 				                      
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��������</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��λ</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">���</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��ע</strong></th>          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
							  <!-- 
							  <td height="25" align="center" valign="middle"><input type="checkbox" name="ids" value="<s:property value='id' />" /></td>		   							
					           -->
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="parentname" />&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="name" />&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="num" />&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="company" />&nbsp;					                 					                   
					          </td>
			                  <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="type" />&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="standard" />&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo" />&nbsp;					                 					                   
					          </td>
					        <!-- 
					          <td height="25" align="center" valign="middle">&nbsp;	
                              	<a href='<s:url action="T_products_subActionRemove.action"><s:param name="id" value="id" /></s:url>'>ɾ��</a>&nbsp;
					          	<a href='<s:url action="T_products_subActionEdit.action"><s:param name="id" value="id" /></s:url>'>�༭</a>&nbsp;
					          	<a href='<s:url action="T_products_subActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'>�鿴</a>
					           
					          </td>
					           -->
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 �� <b><s:property value="paginationSupport.totalPageNo" /></b>ҳ,��ǰ��<b> <s:property value="paginationSupport.currentPageNo " /></b>ҳ
							 <a href='<s:url value="/T_products_subActionFindByCause.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 	<s:param name="id" value="%{t_products_sub.sid}" />
							 	<s:param name="pid" value="%{t_products_sub.spid}" />
							 </s:url>'>��ҳ</a>
							 <a href='<s:url value="/T_products_subActionFindByCause.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 	<s:param name="id" value="%{t_products_sub.sid}" />
							 	<s:param name="pid" value="%{t_products_sub.spid}" />
							 </s:url>'>��һҳ</a>							 
							 <a href='<s:url value="/T_products_subActionFindByCause.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 	<s:param name="id" value="%{t_products_sub.sid}" />
							 	<s:param name="pid" value="%{t_products_sub.spid}" />
							 </s:url>'>��һҳ</a>
							 <a href='<s:url value="/T_products_subActionFindByCause.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 	<s:param name="id" value="%{t_products_sub.sid}" />
							 	<s:param name="pid" value="%{t_products_sub.spid}" />
							 </s:url>'>βҳ</a>
							 ��<s:property value="paginationSupport.totalCount"  />�� 									
					      </td>
                        </tr>
                      <tr>
                      
                    </table></td>
                </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>

<script  language="javascript">
//ʹ��˵����ֻҪ������Ϣҳ�������ҳ�漴�ɡ��磻
function   fprint()
{  try{
		   demo.style.display=(demo.style.display == "none")?"block":"none";
		   window.print();
		   demo.style.display = "block";
	  }catch(e){ alert("��ע����Ĵ�ӡ����\n\n.���ܴ�ӡ����û׼���ã�\n.���ܴ�ӡ�������˹��ϡ�");} 
}
</script>
<div id=demo style="display:block" align="center">
<input  type="button"  name="dy"  value="��ӡ"  onclick="fprint()"  > &nbsp;&nbsp;
<!-- <input  type="button"  name="gb"  value="�ر�"  onclick="window.close()"  > -->
</div>

	
</body>
</html>
