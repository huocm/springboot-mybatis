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
function myRequest(){
  //URL未尾要加个随机数，以免请求不能再次提交
  var url = '<%=basePath%>T_companyActionFindAll.action?time='+Math.random();
  //alert(url);
  //要提交到服务器的数据
  var content =""; // "userName=" + name;
  //调用异常请求提交的函数
  sendRequest("POST",url,content,"TEXT",callBack );
}
      
//回调函数
function callBack(){
  // 请求已完成
  if( http_request.readyState == 4) {
      // 信息已经成功返回，开始处理信息
      if(http_request.status == 200) {                
            var pid = document.getElementById("pid");
			var results = http_request.responseXML.getElementsByTagName("company");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    pid.appendChild(option);  
			    //alert(option);         
          }

          //如果是页面第一次加载，还没有出发onchange事件，则执行一次加载体检机构下级门店数据
          var name = document.getElementById("name").value;
          //alert("0"== name  );
          if(  "0"== name  ){
        	  //加载门店数据初始化 
        	  //loadTjmd();
          }
          
      } else { //页面不正常
          alert('您所请求的页面有异常');
      }
  }

  //执行换色
  jo();
}

function clear(){
 var obj = document.getElementById("name");
 while(obj.childNodes.length > 0) {
      obj.removeChild(obj.childNodes[0]);
  }
}

//请求函数
function loadTjmd(){
  //首先把原来的数据清除掉
  clear();

  //URL未尾要加个随机数，以免请求不能再次提交
  var url = '<%=basePath%>T_companyActionFindTjmdAll.action?time='+Math.random();
  //alert(url);
  //要提交到服务器的数据
  var content ="pid="+document.getElementById("pid").value; // "userName=" + name;
  //调用异常请求提交的函数
  //alert(url+content);
  sendRequest("POST",url,content,"TEXT",loadTjmdCallBack );
}
      
//回调函数
function loadTjmdCallBack(){
  // 请求已完成
  if( http_request.readyState == 4) {
      // 信息已经成功返回，开始处理信息
      if(http_request.status == 200) {                
          var name = document.getElementById("name");
			var results = http_request.responseXML.getElementsByTagName("company");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			    option = document.createElement("option");
			    option.setAttribute("value", "0" );
			    option.appendChild(document.createTextNode("-------------------------"));
			    name.appendChild(option);  
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    //option.setAttribute("value", results[i].getAttribute("id"));
			    option.setAttribute("value",       results[i].firstChild.nodeValue      );
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    name.appendChild(option);  
			    //alert(option);         
          }
          //alert("完毕!");
      } else { //页面不正常
          alert('您所请求的页面有异常');
      }
  }
}

</script>
<body onload="myRequest()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

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
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·账务管理&gt;&gt; 应付账款查询</span></td>
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
                     <!-- -->
                      <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >应付账款查询</td>
                            </tr>
                        </table></td>
                      </tr>
                       
                      <tr>
                        <td bgcolor="cbcbcb"> 
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <s:form action="T_jgyfcxList" theme="simple"  target="" >                   				
							<tr>
							  <td width="100%" height="24" align="left" valign="middle" bgcolor="#F2F2F2">
							  &nbsp;体检机构名称
							  <select id="pid" name="pid" onChange="loadTjmd()">					            					            	
					            	   <option value="0">------------------------</option>  
							  </select>
						
							  &nbsp;体检门店名称      
							  <select id="name" name="name" onChange="">					            					            	
					            	<!--  --> <option value="0">------------------------</option> 
							  </select>
							  
							  &nbsp;<input type="submit" class="btn" value="    查询    " name="B1">
								&nbsp;<input type="reset"  class="btn" value="    清除    " name="B2">
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
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;应付体检机构款项信息列表&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>                      
                      
                      
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0" class="sortable">
                            <tr>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">编号</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检/医疗机构名称</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">区域</strong></th>          
					            <!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">类型</strong></th>  -->                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">电话</strong></th>
					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">应付总金额(元)</strong></th>                                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">已付总金额(元)</strong></th>                                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">未付总金额(元)</strong></th>                                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">地址</strong></th>                                                                  
					            <th width="" height="22"alogn="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">&nbsp;操作&nbsp;</strong></th>					          
                            </tr>
                          <s:iterator value="paginationSupport.items" status="stuts">
							<tr id="a<s:property value='companyid'/>" onClick="changeTrColor(id)" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companyid" />&nbsp;					          				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="name" />				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="area" />				                 					                   
					          </td>
					          <!-- 
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="companytype" />				                 					                   
					          </td>	
					           -->				          					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="tel" />			                 					                   
					          </td>
					          
					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            	
					            	<fmt:formatNumber value="${payamount}" pattern="0.00"/>			                 					                   
					          </td>					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            				 
					            	<fmt:formatNumber value="${payedamount}" pattern="0.00"/>                					                   
					          </td>					         
					          <td height="25" align="center" valign="middle">&nbsp;
					            		
					            	<fmt:formatNumber value="${payamount - payedamount}" pattern="0.00"/>			                 					                   
					          </td>
					          					          
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="address" />			                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					          	<a href='<s:url action="T_reportActionList.action"><s:param name="id" value="companyid" /><s:param name="returnUrl" value="view" /></s:url>'><img src='<%= basePath %>images/view.png' border="0" alt="查看" title="查看"  height="15" >查看</a>
					          </td>
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                       <tr>
                        <td height="22" align="right" colspan="100" bgcolor="#FFFFFF">
							 			总计：${showAmount }	(元)&nbsp;&nbsp;(每次最多显示10条)&nbsp;&nbsp;					
					      </td>
                        </tr>
                      <tr>
                     <!--  -->
                      <tr>
                        <td height="22" align="center" colspan="100" bgcolor="#FFFFFF">
							 共 <b><s:property value="paginationSupport.totalPageNo" /></b>页,当前第<b> <s:property value="paginationSupport.currentPageNo " /></b>页
							 <a href='<s:url value="/T_jgyfcxList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="pid" value="t_company.pid" />
							 	<s:param name="name" value="t_company.name" />							 	
							 	<s:param name="startIndex" value="paginationSupport.firstIndex" />
							 </s:url>'>首页</a>
							 <a href='<s:url value="/T_jgyfcxList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="pid" value="t_company.pid" />
							 	<s:param name="name" value="t_company.name" />	
							 	<s:param name="startIndex" value="paginationSupport.previousIndex" />
							 </s:url>'>上一页</a>							 
							 <a href='<s:url value="/T_jgyfcxList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="pid" value="t_company.pid" />
							 	<s:param name="name" value="t_company.name" />	
							 	<s:param name="startIndex" value="paginationSupport.nextIndex" />
							 </s:url>'>下一页</a>
							 <a href='<s:url value="/T_jgyfcxList.action">
							 	<s:param name="pageSize" value="10" />
							 	<s:param name="pid" value="t_company.pid" />
							 	<s:param name="name" value="t_company.name" />	
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