<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
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
    
    public String df(double d){
       String str= String.valueOf(d);
       try{
		        if( str.contains(".") ){
		            str = str.substring(0, str.indexOf(".")+3);
		        }  
		        return str;
         }
      catch(Exception e)
         { 
		  return str;
         }
     
    }
    
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_sale信息列表页</title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/myAjax.js'/>" ></script>
</head>
<script>
//排序使用
var domok=document.all||document.getElementById
if (domok)
document.write('<SCRIPT SRC="<s:url value='/js/sorttable.js'/>" ><\/SCRIPT>')
</script>

<script type="text/javascript">
//查询客户上次交易价格用的
var fieldname;

//查找上次销售给该经销商的价格
//function findLastPrice(temp){
function findLastPrice(){
    //先付值，由回调函数使用该值
    //fieldname = temp;
    //alert("fieldname="+fieldname);
    var customerid = self.parent.document.getElementById("customerid").value;
    var productid = self.parent.document.getElementById("productid").value;
    //alert("customerid="+customerid+"&productid="+productid);
	var url = '<%=bathPath%>jsp/t_sale/findLastPrice.jsp?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content ="customerid="+customerid+"&productid="+productid; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",callBackFindLastPrice );
}

function callBackFindLastPrice(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
        	var results = http_request.responseText;
			//var results = http_request.responseXML.getElementsByTagName("price");
			//alert(results.length);
			var msg1 = document.getElementById("saleprice");			
			//for(var i = 0; i < results.length; i++) {			     	
            if(results!=null){
                 //msg1.value= results[0].getAttribute("id");	
                 
                 //alert(results);
                 //var msg2 = document.getElementById( fieldname );
                 var msg2 = document.getElementById("saleprice");
                 //alert(msg2);
                 msg2.value= results ;
                 
                 //var msg = document.getElementById("showJyPrice");
                 //msg.innerHTML = "<font color='red'>建议销售价格："+results+"&nbsp;</font>";		            
            }

        } else { //页面不正常
            alert('您所请求的页面有异常');
        }
    }

}

function init(){
     findLastPrice();
     window.setTimeout("slectCustomer()", 1000);
}

function tjckd(){

    var pid = self.parent.document.getElementById("pid").value;
    var productid = self.parent.document.getElementById("productid").value;
    var saleprice = document.getElementById("saleprice").value;
    var salenum = document.getElementById("salenum").value;

    if(saleprice==""){
      alert("请输入销售价格！");
      document.getElementById("saleprice").focus();     
      return false;
    }
    if(isNaN(saleprice)){
      alert("请输入正确的销售价格！");
      document.getElementById("saleprice").focus();     
      return false;
    }
    if(salenum==""){
      alert("请输入销售数量！");
      document.getElementById("salenum").focus();
      return false;
    }
    if(isNaN(salenum)){
      alert("请输入正确的销售数量！");
      document.getElementById("salenum").focus();     
      return false;
    }
    form1.action="<%=bathPath%>jsp/t_sale/t_saleSort.jsp?pid="+pid+"&productid="+productid;
    //alert(form1.action);
    document.form1.submit();
}

</script>
<body  onload="init()"  class="mainBody" leftmargin="0" topmargin="-20" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="" name="form1" theme="simple">    
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF">
          <table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      
                      <!--<tr>
                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF">
                          <table width="100%"  border="0" cellspacing="5" cellpadding="0">
					   <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="1%" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td width="19%" align="left"  background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;可销售商品信息&nbsp;</td>
                              <td width="80%" align="right" background="<s:url value='/images/1_27.gif'/>" class="daohang">
                              	<div id="showJyPrice"></div>
                              </td>
                            </tr>
                        </table></td>
                      </tr>-->
                      <tr>
                        <td valign="top" bgcolor="#cbcbcb">

                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                            <tr> 
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">商品名称</strong></th>                          
					           	<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">成本价</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">生产日期</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">规格</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">库存</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">单位</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">销售单价(元)</strong></th>                       
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">数量</strong></th>               					            					                            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">操作</strong></th>               					            					                            
                           </tr> 

							<tr  bgcolor="#FFFFFF" align="center">   												          					        
					          <td height="25" align="center" valign="middle">&nbsp;					            	
					            	<s:property value="t_buy.name" />&nbsp;	
					            	<input type="hidden"  name="productid" value="<s:property value="t_buy.productid" />">
					            	<input type="hidden"  name="pid" value="<s:property value="t_buy.pid" />">
					            	<input type="hidden"  name="price" value="<s:property value="t_buy.price" />">
					            	<input type="hidden"  name="num" value="<s:property value="t_buy.num" />">
					            	<input type="hidden"  name="company" value="<s:property value="t_buy.company" />">
					            	<input type="hidden"  name="type" value="<s:property value="t_buy.type" />">
					            	<input type="hidden"  name="standard" value="<s:property value="t_buy.standard" />">
					            	<input type="hidden"  name="name" value="<s:property value="t_buy.name" />">
					            	<input type="hidden"  name="memo" value="<s:property value="t_buy.memo" />">
					            	<input type="hidden"  name="memo2" value="<s:property value="t_buy.memo2" />">
					            	<input type="hidden"  name="createdate" value="<s:date name="t_buy.createdate" nice="false" format="yyyy-MM-dd" />">		
					            					                 					                   					            	            				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="t_buy.price" />&nbsp;				                 					                   
					          </td>				         
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="t_buy.createdate" nice="false" format="yyyy-MM-dd" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="t_buy.standard" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="t_buy.num" />&nbsp;
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="t_buy.type" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<input type="text" id="saleprice" name="saleprice" value=""  size="5" maxlength="5" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
                                <input type="text" id="salenum" name="salenum"  size="6" maxlength="6" />	
					          </td>   
					          <td height="25" align="center" valign="middle">&nbsp;
					            <input  type="button" id="tjck" name="tjck" value=" 添加到出库单 " class="btn"  onClick="tjckd()">
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
    </table></td>
  </tr>
</table>

</s:form>	

<script type="text/javascript">
function confirmTrade(flag){
    //var customerid = document.getElementById("customerid").value;
    //window.parent.location.href='<%=bathPath%>jsp/t_sale/t_saleConfirm.jsp?customerid='+customerid;
    
    var customerid = self.parent.document.getElementById("customerid").value;
    if(customerid ==""){
    	alert("请选择客户！");
    	return false;
    }
    if(flag==1){        
    	document.form2.action='<%=bathPath%>jsp/t_sale/t_salePrint.jsp?customerid='+customerid;
    	document.form2.target='_blank';
    }else if(flag==2){
   		document.form2.action='<%=bathPath%>jsp/t_sale/t_saleConfirm.jsp?customerid='+customerid;
   		document.form2.target='_self';
    }

    document.form2.submit();
    //window.parent.location.href='<%=bathPath%>jsp/t_sale/t_saleConfirm.jsp';
}

function  tz(){
    var pid = self.parent.document.getElementById("pid").value;
    var productid = self.parent.document.getElementById("productid").value;
    var url ="<%=bathPath%>jsp/t_sale/t_saleTradeClean.jsp?pid="+pid+"&productid="+productid;
    //alert(url);
	window.location.href= url;
}

</script>

<%@ page import="java.util.*" %>
<%@ page import="com.jxc.domain.*" %>

<form action="" name="form2" method="post" >

<table id="table0" width="98%" border="1" cellspacing="0" cellpadding="0">
 <tr> 
  <td colspan="4" height="25" align="left" valign="middle"  class="daohang" >
    &nbsp; 当前出库单中所有商品  
  </td>
  <td  height="25" align="center" valign="middle"  class="daohang" >
    &nbsp;<input type="button" name="cq" value="  出库  " class="btn"  onClick="confirmTrade(2)" >&nbsp;   
  </td>
 </tr>
 <tr> 
     <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">商品名称</strong></th>
     <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">单位</strong></th>
     <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">数量</strong></th>
     <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">销售单价(元)</strong></th>                                           
     <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">总金额(元)</strong></th>            
    </tr>    
<%
    Map map = (HashMap)session.getAttribute("trade");
	if(map!=null){
	    Iterator it = map.values().iterator();
		T_sale vo = new T_sale();		
		while(it.hasNext()){
			vo  = (T_sale)it.next();
			%>
			<tr> 
		     <td height="25" align="center" valign="middle">&nbsp;
		      <%= vo.getName() %> <%if(vo.getNum()>0){ out.println(vo.getMemo()); }%><!-- 如果库存大于0，则显示生产日期，否则，不显示 -->
		     </td>
		     <td height="25" align="center" valign="middle">&nbsp;<%= vo.getType() %></td>
		     <td height="25" align="center" valign="middle">&nbsp;<%= vo.getSalenum() %></td>
		     <td height="25" align="center" valign="middle">&nbsp;<%= vo.getSaleprice() %></td>		     
		     <td height="25" align="center" valign="middle">&nbsp;		     
		        <%=df( (float)(vo.getSalenum()*vo.getSaleprice()) )%>
		     </td>
		    </tr>  
			<%		
		}
	}
%>
   <tr> 
     <td colspan="7" height="25" align="center" valign="middle"  class="daohang" >
  		<input type="button" name="qc" value="  删除出库单中商品  " class="btn"  onClick="tz()" />&nbsp;
		<input type="button" name="dy" value="  打印出库单  " class="btn"  onClick="confirmTrade(1)">&nbsp;
     </td>
   <tr>
</table>
</form>
</body>
</html>
