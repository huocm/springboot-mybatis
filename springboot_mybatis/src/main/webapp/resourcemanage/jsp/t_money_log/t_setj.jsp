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


<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>营业额统计</title>
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
				
		form1.action = "<%= basePath %>T_money_logYyetj.action?pageSize=10000000&startIndex=0";
		form1.submit();
		
	}

	function   fprint()
	{  try{
			   demo.style.display=(demo.style.display == "none")?"block":"none";
			   window.print();
			   demo.style.display = "block";
		  }catch(e){ alert("请注意你的打印机：\n\n.可能打印机还没准备好；\n.可能打印机出现了故障。");}	   
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
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·财务报表&gt;&gt; 税额查询统计</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >税额查询</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				                             				
							<tr>
							  <td width="100%" height="24" align="left" valign="middle" bgcolor="#F2F2F2">
							  
							  &nbsp;&nbsp;操作人:
							  <select  name="operator" id="operator">
							  		<option value="">--------</option>							   	
							  </select>	
							  &nbsp;&nbsp;发生时间段： 
							  <s:datetimepicker name="startdate"  id="startdate" value="" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/> 
							  <s:datetimepicker name="enddate"  id="enddate" value="" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/> 
							  
							  &nbsp;&nbsp;
							  <input type="button" class="btn" value="    查询    " name="B1" onClick="check()">
								<input type="reset"  class="btn" value="    清除    " name="B2">
								<input  type="button"  class="btn"  name="dy"  value="    打印    "  onclick="fprint()"  >								
								<input type="button"   class="btn"   value="另存为 Excel"  onclick="saveCode(tableExcel)">
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
 					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">交易流水号</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">交易关联流水号</strong></th>          
					            <!-- 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">订单流水号</strong></th>          
					             -->
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">操作类型</strong></th>                   
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">客户名称</strong></th>
					                    
					           	<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检/医疗机构名称</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">操作人</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">操作时间</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">订单金额</strong></th>                    
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">税额</strong></th>  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">交易说明</strong></th>          
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
							 			 税额总计：${showAmount }	&nbsp;&nbsp;&nbsp;&nbsp;					
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
