<%@ page language="java" contentType="text/html;charset=GBK"
	pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@page import="java.sql.Timestamp"%>

<%@include file="../../taglibs.jsp"%>
<%@include file="../../sessionValidate.jsp"%>
<%@ page import="java.util.*"%>
<%@ page import="com.jxc.domain.*"%>
<%@ page import="com.jxc.service.*"%>
<%@ page import="com.jxc.dao.impl.*"%>
<%@ page import="com.common.db.DaoConfig" %>
<%@ page import="com.ibatis.sqlmap.client.SqlMapClient" %>
<%@page import="com.common.utils.BeanUtils"%>
<%@ page import="java.text.*" %>
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
//String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<% 
java.sql.Date date = new java.sql.Date(System.currentTimeMillis());
Timestamp time = new Timestamp(System.currentTimeMillis());
double totalamount = 0.00;
TradeDaoImpl dao = new TradeDaoImpl();
NumberFormat numberFormat = NumberFormat.getNumberInstance(); 
DecimalFormat decimalFormat = new DecimalFormat("######0.00");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title></title>
    <link rel="stylesheet" href="<s:url value='/css/style.css'/>" type="text/css">
</head>

<body  class="mainBody" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>

<table  id="table0"  width="366"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="5" width="99%" valign="middle">
       <table  border="0" width="100%" topmargin="-50">
         <tr>
            <td width="230" height="17" align="left" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;库存与批次详细信息页面</td>
         </tr>
      </table>
   </td 
</tr>
 <tr>
  <td colspan="5" height="22">&nbsp;</td>
 </tr>

<%
double saleamount = 0.00;
double costs = 0.00;
double profits = 0.00;
boolean flag = false;
int flag1 = 0, flag2 = 0, flag3 = 0, flag4 = 0;
int retflag = 0;
SqlMapClient conn = null;
try{	

	T_products_sub t_products_sub = new T_products_sub();
	T_trade t_trade = new T_trade();
	
	conn = DaoConfig.getInstance();
	//事务开始
	conn.startTransaction();
    String sql = "SELECT  t1.PRODUCTID,t2.name, "
	+" t2.num as numall ,  "
    +" t1.num as subnum "
    +" FROM  root.t_products_sub  t2 "
	+" left join  root.T_BUY  t1  on t1.PRODUCTID = t2.id "
	+" where t1.num != 0";
    
	List list = conn.queryForList(sql, null);

	System.out.println(" ----------retflag="+retflag );
	
	
}catch(Exception e){
	System.out.println(" ----------t_returnSave.jsp mess = "+e);
}finally{
	conn.endTransaction();
}
%>
</body>
</html>