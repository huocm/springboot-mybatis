<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<%@ page import="java.util.*,java.text.*,java.math.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%! //处理字符串的方法：
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


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>交易信息列表页</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
    <script language="JavaScript" src="<s:url value='/js/global.js'/>"></script>
    <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
    <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
    <script language="JavaScript" src="<s:url value='/js/sorttable.js'/>"></script>
</head>

<script>
//提示操作结果
var vmessage ="<s:property value='message' />";
if(vmessage!=""){
    alert(vmessage);
}

//加载人员和机构
function load(){
	loadUsers();
	
}	

//请求函数
function loadUsers(){
    //URL未尾要加个随机数，以免请求不能再次提交
    //var url = '<%=basePath%>T_user_detailActionFindAll.action?time='+Math.random();
   var url = '<%=basePath%>rm/t_user_detailListAjaxRes.jsp?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",loadUsersCallBack );
}
        
//回调函数
function loadUsersCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
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
            //alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
        //要在这个加载完成后，再调用下面的ajax，否则只会显示一个，另一个无输出。
        //loadCompany();
    }
}

//请求函数
function loadCompany(){
    //URL未尾要加个随机数，以免请求不能再次提交
    var url = '<%=basePath%>T_companyActionFindAll.action?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",loadCompanyCallBack );
}
        
//回调函数
function loadCompanyCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var companyid = document.getElementById("companyid");
			var results = http_request.responseXML.getElementsByTagName("company");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    companyid.appendChild(option);  
			    //alert(option);         
            }
            //alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
        loadCustomer();
    }
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
            var mubiao = document.getElementById("customerid");
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
	
    //提交
	function check(){	

//		var company = document.getElementById('companyid').value;		
//		if(company==null || company ==''){
//		    alert("体检机构不能为空！");
//			return false;
//		}

//	    var customername = document.getElementById('customerid').value;		
//		if(customername==null || customername ==''){
//		    alert("客户不能为空！");
//			return false;
//		}	
				
		form1.action = "<%= basePath %>T_money_logActionList.action";
		form1.submit();
		
	}

</script>
<body onload="load(),jo()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<s:form action="" theme="simple"  name="form1" target="" >  
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·账务管理&gt;&gt; 交易流水查询</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >应付/应付/已收/已付账款查询</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				                             				
							<tr>
							  <td width="100%" height="24" align="left" valign="middle" bgcolor="#F2F2F2">
							  &nbsp;&nbsp;类型:
							  <select  name="optype" id="optype">
							  		<option value="">----</option>
							   		<option value="应收">应收</option>
							   	    <option value="收款">收款</option>
							        <option value="应付">应付</option>
							        <option value="付款">付款</option>
							        <option value="费用">费用</option>
							        <option value="工资">工资</option>
							  </select>
							  &nbsp;&nbsp;操作人:
							  <select  name="operator" id="operator">
							  		<option value="">----------</option>							   	
							  </select>
							  
 							  <!--  
 							  &nbsp;&nbsp;体检/医疗机构:
 							  <select  name="companyid" id="companyid">
							  		<option value="">----</option>							   	
							  </select>
							  &nbsp;&nbsp;客户:
							  <select  name="customerid" id="customerid">
							  		<option value="">----</option>							   	
							  </select>-->
							  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							  <input type="button" class="btn" value="    查询    " name="B1" onClick="check()">
								<input type="reset"  class="btn" value="    清除    " name="B2">
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
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
 					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">流水号</strong></th>          
					            <!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">交易关联流水号</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">订单流水号</strong></th>          
					             -->
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">操作类型</strong></th>                   
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客户名称</strong></th>
					                    
					           	<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检/医疗机构名称</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">操作人</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">操作时间</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">交易金额</strong></th>                    
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">交易说明</strong></th>
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">到款时间</strong></th>					                      
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">发票编号</strong></th>
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;操作&nbsp;</strong></th>					          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" />				                 					                   
					          </td>
					          <!--<td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="commonid" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
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
					            <!--
					            <s:property value="%{formatDouble( operamount ) }" />
					            -->
					                         
					          </td>				                 					                   
					        					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="reason" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo2" />				                 					                   
					          </td>

					          <td height="25" align="center" valign="middle">&nbsp;
					          	 <!--<a href='<s:url action="T_money_logActionEdit.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/modify.png' border="0" alt="编辑" title="编辑"  height="15" >编辑</a>&nbsp;
                              	<a href='<s:url action="T_money_logActionRemove.action"><s:param name="id" value="id" /></s:url>'><img src='<%= basePath %>images/delete.png' border="0" alt="删除" title="删除"  height="15" >删除</a>&nbsp;
					          	-->
					          	<a href='<s:url action="T_money_logActionView.action"><s:param name="id" value="id" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="查看" title="查看"  height="15" >查看</a>
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_money_logActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="optype" value="t_money_log.optype" />
							 	<s:param name="operator" value="t_money_log.operator" />							 	
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_money_logActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="optype" value="t_money_log.optype" />
							 	<s:param name="operator" value="t_money_log.operator" />		
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_money_logActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="optype" value="t_money_log.optype" />
							 	<s:param name="operator" value="t_money_log.operator" />									 	
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_money_logActionList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="optype" value="t_money_log.optype" />
							 	<s:param name="operator" value="t_money_log.operator" />									 	
							 	<s:param name="startIndex" value="paginationSupport.lastIndex" />
							 </s:url>'>尾页</a>
							 共<s:property value="paginationSupport.totalCount"  />条 									
					      </td>
                        </tr>
                      <tr>
                      <!--<td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			              <input type="button" name="add" value="    新增    " class="btn" onClick="javascript:window.location.href='<s:url value="/jsp/t_money_log/t_money_logAdd.jsp"/>'" style="cursor:hand">&nbsp;
			              <input type="submit" name="del" value="    删除    " class="btn">
                         </td>-->
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
