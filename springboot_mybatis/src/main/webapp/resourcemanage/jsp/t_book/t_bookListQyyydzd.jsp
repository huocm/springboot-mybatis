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
<title>T_book信息列表页</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
    <script language="JavaScript" src="<%= basePath %>/js/calendar.js"></script>    
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
</head>
<script>
//提示操作结果
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}
function   fprint()
{  try{
		   demo.style.display=(demo.style.display == "none")?"block":"none";
		   window.print();
		   demo.style.display = "block";
	  }catch(e){ alert("请注意你的打印机：\n\n.可能打印机还没准备好；\n.可能打印机出现了故障。");}	   
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
        <td width="789" align="left" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·业务管理&gt;&gt; 预约对账单</span></td>
        <td align="right" background="<s:url value='/images/1_09.gif'/>" class="daohang" >
         	<!--   <div id="querylink" onclick="showquery()" >-隐藏查询条件&nbsp;&nbsp; </div>    -->
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
                              <td  width="100%"  align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >预约信息对账单</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_qyyydzd" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">							  
							  &nbsp;&nbsp;	企业名称<s:textfield  name="customername" maxlength='20'  id="customername"/>							  							  
							  &nbsp;&nbsp;	体检机构<s:textfield  name="companypname" maxlength='20'  label="companypname"/>
							  &nbsp;&nbsp;	体检门店<s:textfield  name="companyname" maxlength='20'  label="companyname"/>
							  <br>
							  &nbsp;&nbsp;	开始时间<s:textfield  name="startdate" maxlength='20'  label="startdate" onclick='javascript:SelectDate(this)' readonly='true'/>
							  &nbsp;&nbsp;	截止时间<s:textfield  name="enddate" maxlength='20'  label="enddate" onclick='javascript:SelectDate(this)' readonly='true'/>
							  <s:hidden  name="pageSize" label="pageSize" value="100"/>
							  
							    <input type="submit" class="btn" value="    查询    " name="B1">
								<input type="reset"  class="btn" value="    清除    " name="B2">
								<input  type="button"  class="btn"  name="dy"  value="    打印    "  onclick="fprint()"  > 
								<input type="button"   class="btn"   value="另存为 Excel"  onclick="saveCode(tableExcel)">
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;预约信息列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">预约编号</strong></th> 
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">企业名称</strong></th>	
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检机构</strong></th>                 
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检门店</strong></th>					          			          
					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客戶姓名</strong></th>          
					            <!-- 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">企业名称</strong></th>                               
					             -->
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">电话</strong></th>          
                 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">约定体检时间</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">套餐名称</strong></th>                   

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
							 			预约人数总计：&nbsp;&nbsp;(每次最多显示5000条)&nbsp;&nbsp;					
					                    -->
					      </td>
                        </tr>
                      <tr>                      
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							<!-- 
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_bookActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_bookActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_bookActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_bookActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条 									
					       -->
					        
					       
					      </td>
                        </tr>
                      <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			               <!--
			               <input type="button" name="add" value="    新增    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_book/t_bookAdd.jsp"/>'" style="cursor:hand">&nbsp;
			              <input type="submit" name="del" value="    删除    " class="btn"> 
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
