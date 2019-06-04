<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "com.jxc.dao.impl.*"  %>
<%@page import = "com.jxc.domain.*"  %>

<% 
        System.out.println("AJAX请求已经到达Sevlet。。。。");
        // 解决AJAX的中文问题
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        String productid = request.getParameter("productid");
        String customerid = request.getParameter("customerid");
        String temp[] = customerid.split(";");
        System.out.println("productid===" + productid +"------customerid="+customerid);
        //if(name.matches("\\w{6,20}")){
        T_trade vo = new T_trade();
        vo.setProductid(Integer.parseInt(productid ));
        vo.setCustomerid(Integer.parseInt(temp[0] ));
        
        TradeDaoImpl dao = new TradeDaoImpl();
        Object obj = dao.findLastSalePrice(vo);
        
        //StringBuilder sb = new StringBuilder();
		//sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		//sb.append("<prices>");        
        if(obj!=null){
            //response.getWriter().write("用户名：" + name + " 合法!");
            //out.println("用户名：" + customerid + " 合法!");
            //out.println(obj.toString());
            //sb.append("<price id='"+ obj.toString() + "'>" + obj.toString()+"</price>");
           out.println((Double)obj);
           System.out.println("-------AJAX请求return="+(Double)obj);
        }else{
           out.println("");
        }
        //sb.append("</prices>");
        //System.out.println("-------AJAX请求return="+sb.toString());
        //out.println(sb.toString());
        
%>