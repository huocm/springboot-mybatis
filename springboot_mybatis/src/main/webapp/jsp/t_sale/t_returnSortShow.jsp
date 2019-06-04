<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />

<% request.setCharacterEncoding("GBK");%>
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
	public String getLastChar(String str){	
		return str!=""?str.substring( str.length()-1, str.length()):str;
	}
	
    public String format(Object d){
        String str= String.valueOf(d);
        try{
 		        while( str.contains(".") ){
 		        	System.out.println("----1111111---"+str);
  		        	if(  "0".equals( getLastChar(str)) ){
 		        		System.out.println("----22222---");
 		        		str = str.substring( 0, str.length()-1 );
 		        		if( ".".equals( getLastChar(str)) ){		
 		        			str = str.substring(0, str.length()-1);
 		        		}
 		        	}else{
 		        		break;
 		        	}
 		        		
 		        }
 		        
 		        return str;
          }
       catch(Exception e)
          { 
 		  return str;
          }
      
     }
%>
<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>T_buy信息增加页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/myAjax.js'/>" ></script>
<style type="text/css">
<!--
.STYLE5 {	color: #000000;
	font-size: 12px;
}
-->
</style>
</head>
<script type="text/javascript">
function confirmTh(temp){
    var customerid = window.parent.document.getElementById("customerid").value;
	document.form2.action="<%=bathPath%>jsp/t_sale/t_returnSave.jsp?customerid="+customerid;
    form2.target="_parent";
    //alert(document.form2.action);
    form2.submit();
}
</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>

<%@ page import="java.util.*" %>
<%@ page import="com.jxc.domain.*" %>
<%@ page import="java.text.*" %>

<form action="" name="form2" method="post" >

<table id="table0" width="98%" border="1"  cellspacing="0" cellpadding="0">
 <tr> 
  <td colspan="5" height="25" align="left" valign="middle"  class="daohang" >
    &nbsp; 当前退货单中所有商品  
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

NumberFormat numberFormat = NumberFormat.getNumberInstance(); 
DecimalFormat decimalFormat = new DecimalFormat("#####0.00");

Map map = (HashMap)session.getAttribute("tuihuo");
	if(map!=null){
	    Iterator it = map.values().iterator();
		T_buy vo = new T_buy();
		while(it.hasNext()){
			vo  = (T_buy)it.next();
			%>
			<tr> 
		     <td height="25" align="center" valign="middle">&nbsp;
		      <%= vo.getName() %><%= vo.getCreatedate().getYear()+1900 %>-<%= vo.getCreatedate().getMonth()+1 %>-<%= vo.getCreatedate().getDate() %>
		     </td>
		     <td height="25" align="center" valign="middle">&nbsp;<%= vo.getType() %></td>
		     <td height="25" align="center" valign="middle">&nbsp;<%= format( vo.getNum() )%></td>
		     <td height="25" align="center" valign="middle">&nbsp;<%=  decimalFormat.format( vo.getSaleprice() )%></td>		     
		     <td height="25" align="center" valign="middle">&nbsp;
		      <%= decimalFormat.format( vo.getNum()*vo.getSaleprice() )%>
		     </td>
		    </tr>  
			<%		
		}
	}
%>
   <tr> 
     <td colspan="7" height="25" align="center" valign="middle"  class="daohang" >
  		<input type="button" name="qc" value="  删除退货单中商品  " class="btn"   onClick="window.location.href='<%=bathPath%>jsp/t_sale/t_returnClean.jsp'" />&nbsp;
		<input type="button" name="dy" value="  退货  " class="btn"  onClick="confirmTh(1)">&nbsp;
     </td>
   <tr>
</table>
</form>

</body>
</html>
	