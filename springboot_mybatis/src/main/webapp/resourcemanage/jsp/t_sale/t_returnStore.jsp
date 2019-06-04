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
    
%>
<%
String bathPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/";
%>
<% 
try{
//String[] temp = request.getParameter("customerid").split(";"); 
//if(temp[1].contains("(")&&temp[1].contains(")")){
//	temp[1] = temp[1].substring(0,temp[1].indexOf("("));
//	
//}

    HashMap map = null;
    if(session.getAttribute("tuihuo")!=null){
    	map = (HashMap)session.getAttribute("tuihuo");
    	System.out.println("<br>--------map is not null---------");
    }else{
    	map = new HashMap();
    	System.out.println("<br>--------map is null---------");
    }
    
	String tradeno = String.valueOf( System.currentTimeMillis() );
	String customerid = request.getParameter("customerid");
	String pid = request.getParameter("pid");
	String productid = request.getParameter("productid");
	String user = request.getParameter("user");
	String salenum = request.getParameter("salenum");  //为正数
	String saleprice = request.getParameter("saleprice");
	String memo = request.getParameter("memo");
	String company = request.getParameter("company");
	String createdate = request.getParameter("createdate");
		
	String price = "";
	TradeDaoImpl dao = new TradeDaoImpl();
	T_products_sub t_products_sub = (T_products_sub)dao.findPrice(productid);
	String customerName = (String)dao.findCustomerName(customerid);
	
	
	T_buy t_buy = new T_buy();
	t_buy.setPid(Integer.parseInt(pid));
	t_buy.setProductid(Integer.parseInt(productid));
	t_buy.setCompany(company);
	t_buy.setPrice(t_products_sub.getPrice()); //得到成本价
	t_buy.setSaleprice(Double.parseDouble(saleprice));
	t_buy.setName(t_products_sub.getName());
	t_buy.setNum(Double.parseDouble(salenum));
	t_buy.setAmount((double)t_buy.getSaleprice() * t_buy.getNum());
	t_buy.setUser((String)session.getAttribute("userName")); //经办人
	t_buy.setBuynum(t_buy.getNum());
	t_buy.setMemo(tradeno); //tradeno和t_trade表关联
	t_buy.setMemo2(customerid); //客户id
	t_buy.setType(t_products_sub.getType()); //退货标示
	t_buy.setCreatedate(BeanUtils.cString2Timestamp(createdate, "yyyy-MM-dd") );
	t_buy.setCustomername(customerName);
	t_buy.setCustomerid(Integer.parseInt(customerid));
	t_buy.setStandard("tuihuo");
	
	map.put(t_buy.getProductid(), t_buy);
	session.setAttribute("tuihuo", map);
}catch(Exception e){
	System.out.println("---------t_returnStore.jsp  mess="+e);
	e.printStackTrace();
}
	response.sendRedirect(bathPath+"jsp/t_sale/t_returnSortShow.jsp");

%>
