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
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
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
//请求已完成
if( http_request.readyState == 4) {
//信息已经成功返回，开始处理信息
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
  //alert("完毕!");
} else { //页面不正常
  alert('您所请求的页面有异常');
}
}
}
</script>
<body onload="loadCustomer(); jo()"  class="mainBody"    leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

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
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·财务报表&gt;&gt; 应收款查询</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >应收款信息查询</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_yskList" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">
							 <!-- 
							  &nbsp;&nbsp;
							  客户名称<s:textfield  name="customername" maxlength='20'  label="cardno"/>	&nbsp;&nbsp;			
							   -->			  
                               &nbsp;企业名称
							  	<select  name="customername"   id="customername"  >
					            			<!-- --> <option value="">-------------------------</option> 
					            </select>
							  &nbsp;									  

							  <!-- 发起人<s:textfield  name="creater" maxlength='20'  label="memo"/> &nbsp;&nbsp;-->
							  <!-- 审批人<s:textfield  name="creater" maxlength='20'  label="memo"/> &nbsp;&nbsp; -->
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

<table   id="tableExcel"  width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;订单应收款信息列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">订单编号</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">订单发起人</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">发起时间</strong></th>          					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">审核人</strong></th>           					            
					        	<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">订单状态</strong></th>	
					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客户名称</strong></th>          					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">暂估应收款金额(元)</strong></th>                 				                 
 
					           <!-- 
					           <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">预收款金额(元)</strong></th> -->       					                   
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">应收款金额(体检款+费用收入)</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">已收到金额(元)</strong></th>        
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">剩余应收金额(元)</strong></th>        

                           </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" /> &nbsp;					          			                 					                   
					          </td>			          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="creater" />			                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="createtime" nice="false" format="yyyy-MM-dd hh:mm:ss" />					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="checker" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="checkstatus" />      					                   
					          </td>					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="customername" />						          	     					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					               <fmt:formatNumber value="${saleprice+num}" pattern="0.00"/> 				                   
					          </td>
					          <!-- 
					          <td height="25" align="center" valign="middle">&nbsp;
						          <s:if test="${currentstatus}==0">
						              <fmt:formatNumber value="${ receiveamount}" pattern="0.00"/> 
						          </s:if>   
						          <s:else>
						          
						          </s:else>  					                   
					          </td> -->
					          <td height="25" align="center" valign="middle">&nbsp;
					              <fmt:formatNumber value="${profit+num}" pattern="0.00"/>		                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					              <fmt:formatNumber value="${receiveamount}" pattern="0.00"/> 			                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					              <fmt:formatNumber value="${profit+num - receiveamount }" pattern="0.00"/> 
					            	     						                   
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_yskList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="customername" value="t_order.customername" />
							 	<s:param name="creater" value="t_order.creater" />								 	
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_yskList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="customername" value="t_order.customername" />
							 	<s:param name="creater" value="t_order.creater" />								 	
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_yskList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="customername" value="t_order.customername" />
							 	<s:param name="creater" value="t_order.creater" />								 	
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_yskList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="customername" value="t_order.customername" />
							 	<s:param name="creater" value="t_order.creater" />								 	
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条 									
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
