<%@ page language="java" contentType="text/html;charset=GBK" import="java.util.*"  pageEncoding="GBK"%> 
<%@page import = "com.jxc.dao.impl.*"  %>
<%@page import = "com.common.rm.dao.*"  %>
<%@page import = "com.common.app.sign.domain.T_user_detail"  %>
<%@ page import="com.common.rm.domain.T_user_function" %>
<%@ page import="com.common.rm.domain.T_user_role" %>

<% 
        System.out.println("............Ȩ�� AJAX �����Ѿ�����...........");
        //�õ���ǰ��½�û�
		T_user_detail t_user_detail = (T_user_detail)session.getAttribute("user");
        //����vo������ѯȨ��ʹ�ã������Ǻϲ�t_user_funciton�� tuser_role, t_role_function
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
        //System.out.println("............Ȩ�� AJAX �����Ѿ�����...........t_user_detail.getDealerno()="+t_user_detail.getDealerno());
        T_user_function tuf = new T_user_function();     
        tuf.setDealerno(t_user_detail.getDealerno());
        Rm dao = new Rm();
    	List _t_user_function = dao.t_user_powerFindByUserDealerno(tuf);
    	
    	//���õ�ǰ�û��Ľ�ɫ��Ϣ��session�У�Ϊ���湤������������ ��ɫƥ���趨�������ݡ�
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
    	System.out.println("..........��ѯ��ǰ��¼����Ա��Ӧ��ɫ������..........userRoles="+userRolesBuffer.toString());
        request.getSession().setAttribute("function", _t_user_function);		
        System.out.println("..........Ȩ�� AJAX ����������ϣ�..........");
        
%>