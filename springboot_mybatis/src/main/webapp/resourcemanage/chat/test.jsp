 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
 <%@ page import="java.util.*" %> 
<%@ page import = "com.common.servlet.CounterListener" %>
<%@ page import = "com.common.servlet.AttributeListener" %>
<%@ page import ="com.common.app.sign.domain.T_user_detail" %>
 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
 <head>                                       
 <meta http-equiv="refresh" content="5">                                                                                                                    
 <meta http-equiv="Content-Type" content="text/html; charset=GBK">                                                                                           
 <title>聊天室</title>                                                                                                                                           
 <script type="text/javascript" src="<%=basePath %>js/jquery-1.6.min.js"></script>

     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>                                                                                             
 </head>                                                                                                                                                         
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·业务管理&gt;&gt; 预约管理</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="229" valign="top" >
                    
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >预约信息修改页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">预约编号</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_book.id"  id="id"  readonly="true"  /><font color="#FF0000">*</font>					    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<!-- 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">企业名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_book.customername" maxlength='20'  id="customername" readonly="true" /><font color="#FF0000">*</font>
					            	<s:hidden  name="t_book.customerid"  id="customerid"/>
					            	<s:hidden  name="t_book.branchid" id="branchid" />	
					            	<s:hidden  name="t_book.id" id="id" />	
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							 -->
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">预约人</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_book.membername" maxlength='20'  id="membername"  readonly="true"  /><font color="#FF0000">*</font>
					            	 <!--<s:hidden  name="t_book.memberid"  id="memberid"/>--> 		
					            	 <s:hidden  name="t_book.id" id="id" />					    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">电话:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							       <s:textfield  name="t_book.memo"  maxlength="20" id="memo"  readonly="true"  /><font color="#FF0000">*</font>	
							       
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">套餐产品名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <s:textfield  name="t_book.productname" maxlength='50'  id="productname"  readonly="true"  /><font color="#FF0000">*</font>	
							        <!--<s:hidden  name="t_book.productid"   label="productid"/>-->
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">原约定体检日期:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    ${t_book.answertime}
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">原约定备用体检日期:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
      							    ${t_book.starttime}
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">约定（新）体检日期:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;     							     
      							     <s:datetimepicker name="t_book.answertime" id="answertime" value="today" label="Format (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/> 
							    <font color="#FF0000">*</font>（只能修改 约定（新）体检日期）
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>	
                            						
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">登记人:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:textfield  name="t_book.userid"  value="${userName}" label="userid" readonly="true"/>
							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检机构名称:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                                    <s:textfield  id="companyname" name="t_book.companyname"   readonly="true" />
					            	<font color="red">*</font>
					            	<s:hidden  id="companyid" name="t_book.companyid" value=""/> 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">预约类型:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                              <s:hidden  id="booktype" name="t_book.booktype" value="${t_book.booktype}"/>
                                   <s:if test="${t_book.booktype}==1">企业员工预约</s:if>
                                   <s:if test="${t_book.booktype}==2">卡工预约</s:if>
					            	<font color="red">*</font> 
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>							
							<tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="4">                                	
	                      		<input type="submit" class="btn" value="    修改    " name="B1" onClick="">
								<input type="reset"  class="btn" value="    清除    " name="B2">
								<input type="button" class="btn" value="    返回    " name="B1" onClick="javascript:history.back(-1)">
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


<table id="right-tb" class="tb01" border="0" cellpadding="0" cellspacing="0">
	<tr>
	  <td class="right-dt1" colspan="4">
	  <div class="ricon">
	  在线人数统计并显示
	  <% 
	  Date date = new Date(); 
	  out.print("    当前时间："+(date.getYear()+1900)+"年");
	  out.print((date.getMonth()+1)+"月");
	  out.print(date.getDate()+"日");
	  out.print(date.getHours()+"时");
	  out.print(date.getMinutes()+"分");
	  out.print(date.getSeconds()+"秒");
	  
	  %>
	  </div>
	  </td>
	</tr>	
	<tr>
		<td class="right-dt4">
		当前访问人数：<%= CounterListener.getCounter() %>  （人）
		</td>
	</tr>
	<%
	//清除所有,请不要随便使用
	//AttributeListener.reset();
	//显示所有
	Map users  = AttributeListener.getOnlineUsers();
	if(users!= null){
	%>
	<tr>
		<td class="right-dt4">
		当前在线客服人员:<%=users.size() %>  （人）
		</td>
	</tr>
	<%
	    Iterator it = users.values().iterator();
	    while(it.hasNext()){
			T_user_detail user = (T_user_detail)it.next();
		%>
	<tr>
		<td class="right-dt4">
		用户：<%= user.getUsername() %>  -------ip：<%= user.getAcctip() %> 
		
		</td>
	</tr>
	<%}
	} %>
	<tr>
		<td class="right-dtf"></td>
	</tr>
</table>
 
 
  member:
 <!--
  <div id="member" style="overflow-y:auto ;height: 300px;width: 100px;border: 1px solid #CCC;padding: 10px;">
 </div>   
  -->
                                                                                                                                                          
 content:
 <div id="content" style="font-size: 12px;overflow-y:auto ;height: 300px;width: 300px;border: 1px solid #CCC;padding: 10px;float: left;">
 </div>                  
                                            
                                                                                                                                                                 
                                                                                                                                                                 
 say:<textarea rows="5" cols="35" id="say"></textarea><br/>
 <input onclick="send();" type="button" value="发送"/>
                                                      
 <script type="text/javascript">                                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                 
function send(){                                                                                                                                                 
$.ajax({                                                                                                                                                         
  type: "POST",                                                                                                                                                  
  url: "content.jsp",                                                                                                                                            
  data: "say="+$("#say").val(),                                                                                                                                  
  success: function(msg){                                                                                                                                        
  	getContent();                                                                                                                                                  
  	$("#say").val("");                                                                                                                                             
  }                                                                                                                                                              
  });                                                                                                                                                                                                                                                                                                                             
} //end send;
                                                                                                                                                                
getContent();                                                                                                                                                    
                                                                                                                                                   
window.setInterval(function(){getContent();},3000);                                                                                                 
                                                                                                                                                                 
                                                                                                                                                                 
function getContent(){                                                                                                                                           
$.ajax({                                                                                                                                                         
  type: "POST",                                                                                                                                                  
  url: "content.jsp",                                                                                                                                            
  success: function(msg){                                                                                                                                        
  $("#content").html(msg);                                                                                                                                       
  }                                                                                                                                                              
});                                                                                                                                                              
}                                                                                                                                                                
                                                                                                                                                                                                                                                                                                                              
</script>                                                                                                                                                        
</body>                                                                                                                                                          
</html>                                                                                                                                                          
