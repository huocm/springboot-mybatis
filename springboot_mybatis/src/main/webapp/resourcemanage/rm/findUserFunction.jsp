<%@ page language="java" contentType="text/html;charset=GBK" import="java.util.*"  pageEncoding="GBK"%> 
<%@page import = "com.jxc.dao.impl.*"  %>
<%@page import = "com.common.rm.dao.*"  %>
<%@page import = "com.common.app.sign.domain.T_user_detail"  %>
<%@ page import="com.common.rm.domain.T_user_function" %>
<%@ page import="com.common.rm.domain.T_user_role" %>

<% 
        System.out.println("............权限 AJAX 请求已经到达...........");
        //得到当前登陆用户
		T_user_detail t_user_detail = (T_user_detail)session.getAttribute("user");
        //生成vo，供查询权限使用，数据是合并t_user_funciton和 tuser_role, t_role_function
        //select t.funcid 
        //from t_role_function t
        //where t.roleid 
        //        in (
        //               select roleid 
        //               from t_user_role t2 
        //               where t2.dealerno = #dealerno# 
        //             )
        //union
        //SELECT t3.funcid 
        //FROM t_user_function t3 
        //where t3.dealerno = #dealerno#
        //System.out.println("............权限 AJAX 请求已经到达...........t_user_detail.getDealerno()="+t_user_detail.getDealerno());
        T_user_function tuf = new T_user_function();     
        tuf.setDealerno(t_user_detail.getDealerno());
        Rm dao = new Rm();
    	List _t_user_function = dao.t_user_powerFindByUserDealerno(tuf);
    	
    	//设置当前用户的角色信息到session中，为后面工作流待办任务 角色匹配设定基础数据。
    	T_user_role t_user_role = new T_user_role();
    	t_user_role.setDealerno(t_user_detail.getDealerno());
    	List _t_user_roleList = dao.t_user_roleListFindByUser(t_user_role);
    	Iterator _t_user_roleListIt =  _t_user_roleList.iterator();
    	StringBuffer userRolesBuffer = new StringBuffer();
    	while(_t_user_roleListIt.hasNext()){
    		t_user_role = (T_user_role) _t_user_roleListIt.next();
    		userRolesBuffer.append(t_user_role.getRolename()+";");   		
    	}
       
    	request.getSession().setAttribute("userRoles", userRolesBuffer.toString());	
    	System.out.println("..........查询当前登录操作员对应角色名字有..........userRoles="+userRolesBuffer.toString());
        request.getSession().setAttribute("function", _t_user_function);		
        System.out.println("..........权限 AJAX 请求设置完毕！..........");
        
%>