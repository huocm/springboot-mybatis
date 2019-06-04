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
	
    Enumeration  en = request.getParameterNames();
	String sname = "";
	String shidden = "";
	String saleprice = "";
	String salenum = "";
	String temp[] = new String[2];
	
	T_sale vo = null;
	String[] paras = new String[10];
	
    while(en.hasMoreElements()){
    	sname = (String)en.nextElement();
    	if(sname.contains("salenum;")){
    	   	if(request.getParameter(sname)!=null&&!request.getParameter(sname).equals("")){
    	   		System.out.println("<BR>----------------"+sname);
    	   		temp = sname.split(";");
    	   		System.out.println("<BR>----------------"+temp[0]);
    	   		System.out.println("<BR>----------------"+temp[1]);
    	   		System.out.println("<BR>----------------"+request.getParameter("saleprice;"+temp[1]));
    	   		System.out.println("<BR>----------------"+request.getParameter("paras;"+temp[1]));
    	   		
    	   		saleprice = request.getParameter("saleprice;"+temp[1]);
    	   		shidden = request.getParameter("paras;"+temp[1]);
    	   		salenum = request.getParameter("salenum;"+temp[1]);
                paras = shidden.split(";");
                System.out.println("<br>--------paras="+paras);
                
    	   	    //0   id=<s:property value='id'/>;  //批次号 
                //1   商品名称=<s:property value='name'/>;
                //2   生产厂家=<s:property value='company' />;
                //3   单价=<s:property value='price'/>;
                //4   生产日期=<s:date name='createdate' nice='false' format='yyyy-MM-dd'/>;
                //5   规格=<s:property value='standard'/>;
                //6  本批次库存量=<s:property value='num'/>;
                //7   单位=<s:property value='type'/>
                //8   产品id=<s:property value='productid'/>
                //9   主类产品pid=<s:property value='pid'/>
                
                vo = new T_sale();
                vo.setId(Integer.parseInt( paras[0] ) );
                vo.setName( paras[1]  );
                vo.setCompany( paras[2]  );
                vo.setPrice( Double.parseDouble(paras[3]) );
                
                //vo.setCreatedate( paras[4]  );
                vo.setMemo( paras[4]  );  //显示时当日期用
                vo.setStandard( paras[5]  );
                vo.setNum( Integer.parseInt( paras[6] ) );
                vo.setType( paras[7]  );
                vo.setProductid( Long.parseLong( paras[8])  );
                vo.setPid( Integer.parseInt( paras[9])  );
                
                vo.setSalenum( Integer.parseInt( salenum ));
                vo.setSaleprice( Double.parseDouble( saleprice ) );
                
                
                map.put(vo.getId(), vo);
    	   	}

    	}
 
    }

	session.setAttribute("trade", map);

}catch(Exception e){
	out.println(e);
	System.out.println(e);
	e.printStackTrace();
}
%>
<script>
	//window.history.go(-1);
	window.location.href="T_buyActionSaleFind1.action";
</script>	