<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>

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
%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" href="jsp/css/mainstyle.css" type="text/css">
<title>套餐产品信息增加页</title>
     <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
     <script language="JavaScript" src="<s:url value='/js/global.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
     <script language="JavaScript" src="<s:url value='/js/myAjax.js'/>" ></script>
<style type="text/css">
<!--
.STYLE5 {	color: #000000;
	font-size: 12px;
}
-->
</style>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>

<s:form action="" name="form1" theme="simple">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<s:url value='/images/1_09.gif'/>"><img src="<s:url value='/images/1_08.gif'/>" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<s:url value='/images/1_09.gif'/>" ><span class="daohang">·系统管理&gt;&gt; 套餐产品信息详情</span></td>
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
                              <td align="left" background="<s:url value='/images/1_27.gif'/>" class="daohang" >套餐产品信息详情页</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 							
							<tr>
							  <td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">套餐产品名称:</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property   value="t_products.name" />
							    <font color="#FF0000">*</font>
							  </td>
                                                                  
                              <td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">体检机构:</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<s:property   value="t_products.companypname" />
					            	<font color="#FF0000">*</font>					            					            	      	 
							  </td>
                            </tr>
							<tr>
							  <td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">成本价:</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<s:property   value="t_products.amount" />
							    <font color="#FF0000">*</font>
							  </td>
                                                                  
                              <td width="20%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">性别:</td>
                              <td width="30%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;				            		   
					            	<s:if test='${t_products.tctype}=="1"'>男</s:if>
					            	<s:elseif test='${t_products.tctype}=="2"'>女(未婚)</s:elseif>
					            	<s:elseif test='${t_products.tctype}=="3"'>女(已婚)</s:elseif>
					            	<font color="#FF0000">*</font>					            					            	      	 
							  </td>
                            </tr>											
				   
                         </table>
                        
						</td>
                      </tr>
                      
                      
                      <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="<s:url value='/images/1_27.gif'/>"><img src="<s:url value='/images/1_26.gif'/>" width="21" height="24"></td>
                              <td background="<s:url value='/images/1_27.gif'/>" class="daohang">&nbsp;套餐体检科目信息列表&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                            <tr >                          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">科目编号</strong></th>                  
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检机构</strong></th>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">科目名称</strong></th>                       
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">体检项目</strong></th>          
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">临床意义</strong></th>          		             
			                              
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">成本价格</strong></th>                  
				          
                            </tr>
                          <s:iterator value="t_card_products_subList" status="stuts">
							<tr id="aid<s:property value='id' />" onClick="changeTrColor(id)" style="cursor:hand" id="tr<s:property value='id' />" bgcolor="#FFFFFF" align="center">							  
							  <!-- 
							  <td height="25" align="center" valign="middle">
							  <input type="checkbox" name="ids" value="<s:property value='id' />" />
							  </td>		 
							   -->  							
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="id" />
					            &nbsp;					          					                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="company" />&nbsp;					          				                 					                   
					          </td>
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="name" />&nbsp;					          				                 					                   
					          </td>			                 					                   
					          </td>                              
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo" />&nbsp;					          
					          </td>	
					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="memo2" />&nbsp;					          
					          </td>						           

					          <td height="25" align="center" valign="middle">&nbsp;
					            	<s:property value="amount" />&nbsp;			                 					                   
					          </td>				    
					        </tr>					      
					      </s:iterator>
					    </table></td>
                      </tr>
                     
                      <tr align="center">
                              <td height="24" bgcolor="#F2F2F2" colspan="5">                                	
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


 
</s:form>
</body>
</html>
	
