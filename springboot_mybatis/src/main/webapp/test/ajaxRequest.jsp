<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
        System.out.println("AJAX请求已经到达Sevlet。。。。");
        // 解决AJAX的中文问题
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        String name = request.getParameter("userName");

        System.out.println("userName===" + name);
        if(name.matches("\\w{6,20}")){
            //response.getWriter().write("用户名：" + name + " 合法!");
            out.println("用户名：" + name + " 合法!");
        }else{
            //response.getWriter().write("用户名：" + name + " 不合法!");
        	out.println("用户名：" + name + " 不合法!");
        }

%>