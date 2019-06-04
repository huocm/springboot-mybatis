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
<title>T_member信息列表页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
     <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
</head>
<script type="text/javascript">
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


//请求函数
function loadCustomer(){
	
//URL未尾要加个随机数，以免请求不能再次提交
var url = '<%=basePath%>T_customerActionFindAllAjax.action?time='+Math.random();
//alert(url);
//要提交到服务器的数据
var content =""; // "userName=" + name;
//调用异常请求提交的函数
sendRequest("POST",url,content,"TEXT",loadCustomerCallBack );
}
    
//回调函数
function loadCustomerCallBack(){
// 请求已完成
if( http_request.readyState == 4) {
    // 信息已经成功返回，开始处理信息
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
		//加载企业对应套餐名称
		//loadTcmc();
        //alert("完毕!");
    } else { //页面不正常
        alert('您所请求的页面有异常');
    }
   }
}

//请求函数
function loadTcmc(){
	//URL未尾要加个随机数，以免请求不能再次提交
	var customername= document.getElementById("customername").value;
	//alert(customername);
	var url = '<%=basePath%>T_tcmcFindAll.action?customername='+customername+'&time='+Math.random();
	//alert(url);
	//要提交到服务器的数据
	var content =""; // "userName=" + name;
	//调用异常请求提交的函数
	sendRequest("POST",url,content,"TEXT",loadTcmcCallBack );
}
  
//回调函数
function loadTcmcCallBack(){
// 请求已完成
if( http_request.readyState == 4) {
  // 信息已经成功返回，开始处理信息
  if(http_request.status == 200) {                
      var mubiao = document.getElementById("productname");
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
      //alert("完毕!");
  } else { //页面不正常
      alert('您所请求的页面有异常');
  }
}
}

</script>
<body onload="loadCustomer(),jo()" class="mainBody" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

 <div  id=demo style="display:block" align="center">
 
<table   width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·财务报表&gt;&gt; 企业对账单管理</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >企业对账单查询</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_khdzdList" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">							  

							  &nbsp;企业名称
							  	<select  name="customername"   id="customername"  onchange="loadTcmc()">
					            			<!-- --><option value="">------------------------------------------</option> 
					            </select>
					             
							  &nbsp;套餐名称
							  	<select  name="productname"   id="productname"  >
					            			<!-- --><option value="">----------------------------</option> 
					            </select>
							   <br>
							  &nbsp;&nbsp;	客户名称<s:textfield  name="staffname" maxlength='20'  id="staffname"/>							  							  
							  <!--  -->					            
							  <!-- 
							  &nbsp;体检机构名称<s:textfield  name="company" maxlength='20'  label="company"/>
							  -->
							  &nbsp;开始时间<s:textfield  name="startdate" maxlength='20'     label="startdate" onclick='javascript:SelectDate(this)' readonly='true'/>
							  &nbsp;截止时间<s:textfield  name="enddate" maxlength='20'      label="enddate" onclick='javascript:SelectDate(this)' readonly='true'/>
							  <s:hidden  name="pageSize" label="pageSize" value="100"/>
							  <s:hidden  name="customername" label="customername" value="" />
							    &nbsp;<input type="submit" class="btn" value="    查询    " name="B1">
								&nbsp;<input  type="button"  class="btn"  name="dy"  value="    打印    "  onclick="fprint()"  >
								&nbsp;<input type="button"   class="btn"   value="另存为 Excel"  onclick="saveCode(tableExcel)">  
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;企业对账单信息列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">编号</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">企业名称</strong></th>   
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客户名称</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检结果图片</strong></th>          
        
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检机构</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">产品套餐</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">应付金额</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">录入人</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">录入时间</strong></th>          
		
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;操作&nbsp;</strong></th>					          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">   							
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" />&nbsp;					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customername" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="staffname" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="imagename" />					            	
					          </td>	
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="company" />			                 					                   
					          </td>					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="productname" />				                 					                   
					          </td>					         
					          <td height="25" align="center" valign="middle">&nbsp;					            
					            	<fmt:formatNumber value="${saleprice}" pattern="0.00"/>					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="user" />		                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="inserttime" nice="false" format="yyyy-MM-dd" />				                 					                   
					          </td>					       
					   			          
					          <td height="25" align="center" valign="middle">&nbsp;
					          <!-- 
					          	<a href='<s:url action="T_reportActionEdit.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/modify.png' border="0" alt="编辑" title="编辑"  height="15" >编辑</a>&nbsp;                              
                                <a href='<s:url action="T_reportActionDownload.action"><s:param name="fileName" value="imagename" /></s:url>'><img src='<%= basePath %>images/xiazai.png' border="0" alt="下载" title="下载"  height="15" >下载</a>&nbsp;                               
                               	-->
                                <a href='<%=basePath %>fileDownload?fileName=${imagename}' target="_blank"><img src='<%= basePath %>images/xiazai.png' border="0" alt="下载" title="下载"  height="15" >下载</a>&nbsp;                                                             	
                                <!-- 
                               	<a href='<s:url action="T_reportActionRemove.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="删除" title="删除"  height="15" >删除</a>&nbsp;
					          	-->
					          	<a href='<s:url action="T_reportActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="查看" title="查看"  height="15" >查看</a>
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="right" colspan="100"  >
							 			应收款金额总计：${showAmount }	( 元)&nbsp;&nbsp;(每次最多显示100条)&nbsp;&nbsp;					
					      </td>
                        </tr>
                      <tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							<!-- -->	 
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_khdzdList.action">
							 	<s:param name="pageSize" value="100" />
							 	<s:param name="productname" value="t_report.productname" />							 	
							    <s:param name="customername" value="t_report.customername" />
							 	<s:param name="staffname" value="t_report.staffname" />
							 	<s:param name="startdate" value="t_report.startdate" />
							 	<s:param name="enddate" value="t_report.enddate" />
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_khdzdList.action">
							 	<s:param name="pageSize" value="100" />
							 	<s:param name="productname" value="t_report.productname" />							 	
							 	<s:param name="customername" value="t_report.customername" />
							 	<s:param name="staffname" value="t_report.staffname" />
							 	<s:param name="startdate" value="t_report.startdate" />
							 	<s:param name="enddate" value="t_report.enddate" />
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_khdzdList.action">
							 	<s:param name="pageSize" value="100" />
							 	<s:param name="productname" value="t_report.productname" />							 							 	
							 	<s:param name="customername" value="t_report.customername" />
							 	<s:param name="staffname" value="t_report.staffname" />
							 	<s:param name="startdate" value="t_report.startdate" />
							 	<s:param name="enddate" value="t_report.enddate" />
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_khdzdList.action">
							 	<s:param name="pageSize" value="100" />
							 	<s:param name="productname" value="t_report.productname" />							 							 	
							 	<s:param name="customername" value="t_report.customername" />
							 	<s:param name="staffname" value="t_report.staffname" />
							 	<s:param name="startdate" value="t_report.startdate" />
							 	<s:param name="enddate" value="t_report.enddate" />
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条 
							 						
					      
					      <div  id=demo style="display:block" align="center">
							<input  type="button"  class="btn"  name="dy"  value="    打印    "  onclick="fprint()"  > &nbsp;&nbsp;
						  </div>
	                     	
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
	


</body>
</html>
 <script language="JavaScript" src="<%= basePath %>/js/calendar.js" ></script> 