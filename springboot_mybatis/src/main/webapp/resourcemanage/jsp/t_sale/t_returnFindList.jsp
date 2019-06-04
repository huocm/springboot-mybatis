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
                      <tr>
                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%"  border="0" cellspacing="5" cellpadding="0">
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="1%" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td width="19%" align="left"  background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;退货商品信息&nbsp;</td>
                              <td width="80%" align="right" background="<s:url value='/images/1_27.gif'/>" class="daohang">
                              	<div id="showJyPrice"></div>
                              </td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="#cbcbcb">

                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                            <tr> 
                                <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">商品名称</strong></th>                          
					           	<!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">成本价</strong></th> 
					             -->
					             <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">生产日期</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">规格</strong></th> 
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">单位</strong></th>         					            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">数量</strong></th>               					            					                            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">总金额(元)</strong></th>                       
                                 
                            </tr> 
                         <s:iterator value="paginationSupport.items" status="stuts">
							<tr  bgcolor="#FFFFFF" align="center">   							
					          					        
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="name" />&nbsp;				                 					                   
					          </td>
					          <!-- <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="price" />&nbsp;				                 					                   
					          </td> -->				         
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:date name="createdate" nice="false" format="yyyy-MM-dd" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="standard" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="type" />&nbsp;				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					                <s:text name="format.money">
									    <s:param name="value" value="buynum" />
									</s:text>&nbsp;
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					          <s:text name="format.money">
									    <s:param name="value" value="amount" />
									</s:text>&nbsp;
                              </td>
					          
					        </tr>					      
					      </s:iterator>

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


</body>
</html>

