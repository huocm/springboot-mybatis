<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@include file="../../taglibs.jsp" %>

<s:head theme="ajax" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>订单信息增加页</title>
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
<script type="text/javascript">
  

</script>
<body onload="" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·业务管理&gt;&gt; 报价单管理</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td  valign="top" >
                    
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>" ><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >企业套餐维护</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">                                             
                          					 
						   <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">报价单编号</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.id }&nbsp;
                              <s:hidden  id="orderid" name="orderid" value="${t_order.id }" /></td>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">报价状态 </td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.checkstatus }&nbsp;</td>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">报价日期</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.createtime }&nbsp;</td>                                                            
                            </tr>
							<tr>
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">客户名称</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF" >&nbsp;${t_order.customername }&nbsp;</td>                             
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">联系人</td>
                              <td width="20%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.linkman }&nbsp;</td>  
                              <td width="10%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">联系方式</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;${t_order.linktel }&nbsp;</td>                                                          
                            </tr>
																				         
	                        <tr>
		                        <td valign="top" bgcolor="cbcbcb"  colspan="8">
		                          <iframe id="taocan" src="<%=basePath %>jsp/t_order/t_showTaocanView.jsp?orderid=${t_order.id }"    onload="this.height=this.contentWindow.document.body.scrollHeight+900" marginwidth="0" framespacing="0" marginheight="0" frameborder="0" width="100%" scrolling="no">
		                          </iframe>
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
<br>
<!--
<input  type="button"  name="dy"  value="打印"  onclick="btnPrint(document.windows)"  > &nbsp;&nbsp;
-->
<input  type="button"  class="btn"  name="dy"  value="    打印    "  onclick="fprint()"  > &nbsp;&nbsp;

<input type="button" class="btn" value="    返回    " name="B1" onClick="javascript:history.back(-1)">

<!--
 <input  type="button"  name="gb"  value="关闭"  onclick="window.close()"  >
 -->

</div>

</body>
</html>