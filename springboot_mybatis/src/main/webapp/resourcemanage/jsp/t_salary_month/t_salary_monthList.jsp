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
<title>T_salary_month信息列表页</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
    <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
</head>
<script>
//排序使用
var domok=document.all||document.getElementById
if (domok)
document.write('<SCRIPT SRC="<s:url value='/js/sorttable.js'/>" ><\/SCRIPT>')
</script>
<script>
//提示操作结果
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}
</script>
<body class="mainBody" onLoad='if (domok) initTable("table0")' leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>


<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·T_salary_month&gt;&gt; t_salary_month</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >T_salary_month信息查询</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_salary_monthActionList" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">
							  &nbsp;&nbsp;
							  Id<s:textfield  name="id" maxlength='20'  label="id"/><br>
							  Customerid<s:textfield  name="customerid" maxlength='20'  label="customerid"/><br>
							  Classes<s:textfield  name="classes" maxlength='20'  label="classes"/><br>
							  Basesalary<s:textfield  name="basesalary" maxlength='20'  label="basesalary"/><br>
							  Rolesalary<s:textfield  name="rolesalary" maxlength='20'  label="rolesalary"/><br>
							  Bounty<s:textfield  name="bounty" maxlength='20'  label="bounty"/><br>
							  Award<s:textfield  name="award" maxlength='20'  label="award"/><br>
							  Minus<s:textfield  name="minus" maxlength='20'  label="minus"/><br>
							  Insurance<s:textfield  name="insurance" maxlength='20'  label="insurance"/><br>
							  Tax<s:textfield  name="tax" maxlength='20'  label="tax"/><br>
							  Addamount<s:textfield  name="addamount" maxlength='20'  label="addamount"/><br>
							  Addreason<s:textfield  name="addreason" maxlength='20'  label="addreason"/><br>
							  Subtract<s:textfield  name="subtract" maxlength='20'  label="subtract"/><br>
							  Subtractreason<s:textfield  name="subtractreason" maxlength='20'  label="subtractreason"/><br>
							  Memo<s:textfield  name="memo" maxlength='20'  label="memo"/><br>
							  Memo2<s:textfield  name="memo2" maxlength='20'  label="memo2"/><br>
							  Ticheng<s:textfield  name="ticheng" maxlength='20'  label="ticheng"/><br>
							  Zengyuanjiang<s:textfield  name="zengyuanjiang" maxlength='20'  label="zengyuanjiang"/><br>
							  Manager<s:textfield  name="manager" maxlength='20'  label="manager"/><br>
							  Admin<s:textfield  name="admin" maxlength='20'  label="admin"/><br>
							  Ndj<s:textfield  name="ndj" maxlength='20'  label="ndj"/><br>
							  Nddbj<s:textfield  name="nddbj" maxlength='20'  label="nddbj"/><br>
							  Username<s:textfield  name="username" maxlength='20'  label="username"/><br>
							  Payamount<s:textfield  name="payamount" maxlength='20'  label="payamount"/><br>
							  Payedamount<s:textfield  name="payedamount" maxlength='20'  label="payedamount"/><br>
							  Years<s:textfield  name="years" maxlength='20'  label="years"/><br>
							  Months<s:textfield  name="months" maxlength='20'  label="months"/><br>
							  Createtime<s:textfield  name="createtime" maxlength='20'  label="createtime"/><br>
							    <input type="submit" class="btn" value="    查询    " name="B1">
								<input type="reset"  class="btn" value="    清除    " name="B2">
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
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;T_salary_month信息列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                            <tr>
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">select</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Id</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Customerid</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Classes</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Basesalary</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Rolesalary</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Bounty</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Award</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Minus</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Insurance</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Tax</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Addamount</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Addreason</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Subtract</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Subtractreason</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Memo</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Memo2</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Ticheng</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Zengyuanjiang</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Manager</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Admin</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Ndj</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Nddbj</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Username</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Payamount</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Payedamount</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Years</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Months</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">Createtime</strong></th>          
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;infor&nbsp;</strong></th>					          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
							  <td height="25" align="center" valign="middle"><input type="checkbox" name="ids" value="<s:property value='id' />" /></td>		   							
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" />
					            &nbsp;					          
					          <!--					            <s:property value='id' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customerid" />
					            &nbsp;					          
					          <!--					            <s:property value='customerid' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="classes" />
					            &nbsp;					          
					          <!--					            <s:property value='classes' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="basesalary" />
					            &nbsp;					          
					          <!--					            <s:property value='basesalary' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="rolesalary" />
					            &nbsp;					          
					          <!--					            <s:property value='rolesalary' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="bounty" />
					            &nbsp;					          
					          <!--					            <s:property value='bounty' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="award" />
					            &nbsp;					          
					          <!--					            <s:property value='award' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="minus" />
					            &nbsp;					          
					          <!--					            <s:property value='minus' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="insurance" />
					            &nbsp;					          
					          <!--					            <s:property value='insurance' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="tax" />
					            &nbsp;					          
					          <!--					            <s:property value='tax' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="addamount" />
					            &nbsp;					          
					          <!--					            <s:property value='addamount' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="addreason" />
					            &nbsp;					          
					          <!--					            <s:property value='addreason' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="subtract" />
					            &nbsp;					          
					          <!--					            <s:property value='subtract' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="subtractreason" />
					            &nbsp;					          
					          <!--					            <s:property value='subtractreason' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo" />
					            &nbsp;					          
					          <!--					            <s:property value='memo' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo2" />
					            &nbsp;					          
					          <!--					            <s:property value='memo2' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="ticheng" />
					            &nbsp;					          
					          <!--					            <s:property value='ticheng' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="zengyuanjiang" />
					            &nbsp;					          
					          <!--					            <s:property value='zengyuanjiang' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="manager" />
					            &nbsp;					          
					          <!--					            <s:property value='manager' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="admin" />
					            &nbsp;					          
					          <!--					            <s:property value='admin' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="ndj" />
					            &nbsp;					          
					          <!--					            <s:property value='ndj' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="nddbj" />
					            &nbsp;					          
					          <!--					            <s:property value='nddbj' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="username" />
					            &nbsp;					          
					          <!--					            <s:property value='username' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="payamount" />
					            &nbsp;					          
					          <!--					            <s:property value='payamount' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="payedamount" />
					            &nbsp;					          
					          <!--					            <s:property value='payedamount' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="years" />
					            &nbsp;					          
					          <!--					            <s:property value='years' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="months" />
					            &nbsp;					          
					          <!--					            <s:property value='months' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="createtime" nice="false" format="yyyy-MM-dd hh:mm:ss" />
&nbsp;					          
					          <!--					            <s:property value='createtime' />
					          &nbsp;-->					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					          	<a href='<s:url action="T_salary_monthActionEdit.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/modify.png' border="0" alt="编辑" title="编辑"  height="15" >编辑</a>&nbsp;
                              	<a href='<s:url action="T_salary_monthActionRemove.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="删除" title="删除"  height="15" >删除</a>&nbsp;
					          	<a href='<s:url action="T_salary_monthActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="查看" title="查看"  height="15" >查看</a>
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_salary_monthActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_salary_monthActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_salary_monthActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_salary_monthActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条 									
					      </td>
                        </tr>
                      <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			              <input type="button" name="add" value="    新增    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_salary_month/t_salary_monthAdd.jsp"/>'" style="cursor:hand">&nbsp;
			              <input type="submit" name="del" value="    删除    " class="btn">
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
