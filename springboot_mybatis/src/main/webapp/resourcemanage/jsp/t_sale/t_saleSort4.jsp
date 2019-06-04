<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@include file="../../sessionValidate.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:head theme="ajax" />

<%@ page import="java.util.*" %>
<%@ page import="com.jxc.domain.*" %>

<%

try{
	
//System.out.println("<br>--------getParameterMap="+request.getParameterMap());
//System.out.println("<br>--------getParameterNames="+request.getParameterNames());
    
    //session.removeAttribute("trade");
    //System.out.println("<br>--------session.getAttribute('trade')= "+session.getAttribute("trade"));

    HashMap map = null;
    if(session.getAttribute("trade")!=null){
    	map = (HashMap)session.getAttribute("trade");
    	System.out.println("<br>--------map is not null---------");
    }else{
    	map = new HashMap();
    	System.out.println("<br>--------map is null---------");
    }
	
	String productid = "";
	String saleprice = "";
	String salenum = "";
	String pid ="";
	String company ="";
	
	String price ="";
	String standard ="";
	String memo ="";
	String num ="";
	String type ="";
	
	String name ="";
	String createdate = "";
	
	productid = request.getParameter("productid");
	saleprice = request.getParameter("saleprice");
	salenum = request.getParameter("salenum");
	pid = request.getParameter("pid");
	company = request.getParameter("company");	

	price = request.getParameter("price");
	standard = request.getParameter("standard");
	memo = request.getParameter("memo");
	num = request.getParameter("num");
	type = request.getParameter("type");
	
	name = request.getParameter("name");
	createdate = request.getParameter("createdate");
	
	System.out.println("----------------"+productid+";"+saleprice+";"+salenum+";"+pid+";"+company+";"+price+";"+standard+";"+memo+";"+num+";"+type+";"+name);
                
    //0   id=<s:property value='id'/>;  //���κ� 
    //1   ��Ʒ����=<s:property value='name'/>;
    //2   ��������=<s:property value='company' />;
    //3   ����=<s:property value='price'/>;
    //4   ��������=<s:date name='createdate' nice='false' format='yyyy-MM-dd'/>;
    //5   ���=<s:property value='standard'/>;
    //6   �����ο����=<s:property value='num'/>;
    //7   ��λ=<s:property value='type'/>
    //8   ��Ʒid=<s:property value='productid'/>
    //9   �����Ʒpid=<s:property value='pid'/>
                
    T_sale vo = new T_sale();

    vo.setId( 0 );
    vo.setName( name );
    vo.setCompany( company  );
    vo.setPrice( Double.parseDouble( price ) );
    vo.setMemo( createdate  );  
    
    vo.setStandard( standard  );
    vo.setNum( Integer.parseInt( num ) );
    vo.setType( type  );
    vo.setProductid( Long.parseLong( productid ) );
    vo.setPid( Integer.parseInt( pid ) );
    
    vo.setSalenum( Integer.parseInt( salenum ));
    vo.setSaleprice( Double.parseDouble( saleprice ) );
    vo.setUser((String)session.getAttribute("userName"));
    //vo.setCreatedate();
    
    map.put(vo.getProductid(), vo);
	session.setAttribute("trade", map);

}catch(Exception e){
	out.println(e);
	System.out.println(e);
	e.printStackTrace();
}   
%>
<script>
	//window.history.go(-1);
	window.location.href="T_buyActionSaleFind1.action?pid=<%= request.getParameter("pid")%>&productid=<%= request.getParameter("productid") %>";
</script>	