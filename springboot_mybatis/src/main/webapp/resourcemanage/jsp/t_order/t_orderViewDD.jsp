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
<title>T_order信息编辑页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
     <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
<style type="text/css">
<!--
.STYLE5 {	color: #000000;
	font-size: 12px;
}
-->
</style>
</head>
<script type="text/javascript" language="javascript">
  
//请求函数,加载已经配置的套餐信息显示出来。
function loadTaocan(){
    //URL未尾要加个随机数，以免请求不能再次提交
    //var orderid = parent.document.getElementById("orderid").value;
    var url = '<%=basePath%>T_editTaocanByOrderid.action?orderid=<%=request.getParameter("id") %>&time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",loadTaocanCallBack );
}
        
//回调函数
function loadTaocanCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
			 var mubiao = document.getElementById("taocan");
			//var results = http_request.responseXML.getElementsByTagName("result");
            if(mubiao != undefined){
                 //返回的是文本格式信息
                 mubiao.innerHTML = http_request.responseText;  
                 //alert(http_request.responseText)                 
            }
            //alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
        
    }
}
	
</script>
<body onload="loadTaocan()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>"><span class="daohang">·财务管理&gt;&gt; 订单管理</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang">订单信息修改</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">·基本信息：</td>
                            </tr>	   				 
							<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">订单编号</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.id }&nbsp;
                              <s:hidden  id="orderid" name="orderid" value="${t_order.id }" /></td>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">订单状态 </td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.checkstatus }&nbsp;</td>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">创建日期</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.createtime }&nbsp;</td>                                                            
                            </tr>                            
                            <tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">体检总金额</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.saleprice }&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">体检成本金额</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${orderCostAll }&nbsp;</td>                                                          
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">创建人</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.creater }&nbsp;</td>                                                          
                            </tr> 
   	        
                          
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">·客户信息：</td>
                            </tr>		                                                       
							<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">客户名称</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.customername }&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">联系人</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;***<!-- ${t_order.linkman } -->&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">联系方式</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;***<!--  ${t_order.linktel }  -->&nbsp;</td>                                                          
                            </tr>

                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">·费用相关信息：</td>
                            </tr>		  				            
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">车费(元)</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.malecost}&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">住宿费(元)</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.marriedcost }&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">差旅费用(元)</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.unmarriedcost }&nbsp;</td>                                                          
                            </tr>
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">其它费用(元)</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.maleprice }&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">其它费用原因</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.reason }&nbsp;</td>  
                             <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">毛利率</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
                              (( ${t_order.saleprice} +${t_order.num} - ${t_order.saleprice}*0.0555 - ${orderCostAll} - ${t_order.malecost}  - ${t_order.marriedcost}  - ${t_order.unmarriedcost} -  ${t_order.maleprice} )/  (${t_order.saleprice} + ${t_order.num}) )*100  } &nbsp;
                             	  = <fmt:formatNumber value="${ (( t_order.saleprice +t_order.num - t_order.saleprice*0.0555 - orderCostAll - t_order.malecost  - t_order.marriedcost  - t_order.unmarriedcost -  t_order.maleprice )/  (t_order.saleprice + t_order.num) )*100  }" pattern="0.00"/>%&nbsp;
                              </td>
                            </tr>                     
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">收入(元)</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.num }&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">备注(收入相关)</td>
                              <td width="30%" colspan="4" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.memo }&nbsp;</td>                       							                                                                                         
                              <!-- 
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">&nbsp;</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;</td>                     
           					 -->
           					</tr>           					
           					<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">其它条款</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF"  colspan="5">&nbsp;
                              <s:textarea name="memo2" cols="130" rows="3" value="${t_order.memo2 }" id="memo2" />&nbsp;长度不能512个汉字
                              </td>                             
                            </tr>							                                                                                         
                            </tr>
                            <!-- 
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">·流程审批人员：</td>
                            </tr>		  				            
           					<tr>          					
        					  <td width="10%" height="24" align="right" valign="middle" bgcolor="#FFFFFF">订单审核人</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" colspan="5">&nbsp; ${checker }</td>        
                             </tr>
                            -->
                            <tr>
                             <td align="left" height="24" bgcolor="#F2F2F2"  class="daohang" colspan="6">·订单套餐信息：</td>
                            </tr>	
                     
                            <tr>
		                        <td valign="top" bgcolor="cbcbcb"  colspan="8">
			                        <table id="table0" width="100%" border="0" cellspacing="0" cellpadding="0">
			                           <tr>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>套餐名称</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>体检机构</td>
										<!-- <td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>体检门店</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>成本价</td> 
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>金程价格</td>-->
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>销售价格</td>
										<td height='25' align='center' valign='middle'  bgcolor='#FFFFFF'>人员数量</td>
										
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
										
										</td>
									   </tr>   
									   </s:iterator>    
									                    					      							   
								    </table>
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
</s:form>

<script  language="javascript">
function   fprint()
{  try{
		   demo.style.display=(demo.style.display == "none")?"block":"none";
		   window.print();
		   demo.style.display = "block";
	  }catch(e){ alert("请注意你的打印机：\n\n.可能打印机还没准备好；\n.可能打印机出现了故障。");}
	   
}
</script>

<div  id=demo style="display:block" align="center">
<input  type="button"  class="btn"  name="dy"  value="    打印    "  onclick="fprint()"  > &nbsp;&nbsp;
<input type="button"   class="btn"  value="    返回    " name="B1" onClick="javascript:history.back(-1)">
</div>
</body>
</html>
	