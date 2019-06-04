<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK"%>
<%@page import="com.common.app.sign.web.spring.UserSession"%>
<%@page import="com.common.app.sign.domain.Account" %>
<%@include file="../taglibs.jsp" %>
<%@include file="../sessionValidate.jsp" %>
<%@include file="../rm/findUserFunction.jsp" %>

<%@ page import="com.common.db.PaginationSupport" %>

<%@ page import="com.common.rm.domain.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>Ŀ¼��</title>

<link rel="stylesheet" type="text/css" href="<%=basePath%>js/tree_themes/SimpleTree.css"/>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.6.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/SimpleTree.js"></script>

<script language="JavaScript">

//----�µ�����-------
$(function(){
	$(".st_tree").SimpleTree({
		click:function(a){
			if(!$(a).attr("hasChild"))
				//alert($(a).attr("ref"));
				$(a).attr("ref");
		}
	});
});

</SCRIPT>
</head>
<body>

<img src="<%=basePath%>images/freetree/tree_root.gif" width="16" height="15" class="button"  >ϵͳ��Ŀ¼
<div class="st_tree">
<ul>

		
<%   

//��½���ϵͳ�в�ѯ�û�funcid�б�
List powerFuncList = (List)session.getAttribute("function");
Iterator itPowerFuncList = powerFuncList.iterator();
int powerFuncid = -1000;
List keyList = new ArrayList();
while(itPowerFuncList.hasNext()){
	 powerFuncid = ((T_user_function)itPowerFuncList.next()).getFuncid();
	 keyList.add(powerFuncid);
	 //System.out.println("powerFuncList.size="+powerFuncList.size()+";"+powerFuncid+";");
	 powerFuncid =-2000;
}

//-------------------------------------------------------
//ȡ��������Դ��
int pageSize = 1000;
int startIndex = 0;
PaginationSupport pg = dao.t_functionList(pageSize, startIndex);
//����funcid
List reslist = pg.getItems();
T_function vo = null, 
temp = null, 
temp2 = null;
//��ʾ������list
List showList = new ArrayList();                        

//�ӹ���3����
if(reslist!=null){                           	
    Iterator it = reslist.iterator();
    Iterator it2 = null;
    Iterator it3 = null;
    //level  1
    while(it.hasNext()){
    	vo = null;
    	vo = (T_function)it.next();
    	if(vo.getPid() == 0){
    		vo.setLev(0);
    	    showList.add(vo);      
    	    //�ж�Ȩ��funcid���Ƿ������ǰ�˵�id�������������ʾ�����򣬲���ʾ-----һ���˵�
	    	 if(keyList.contains(vo.getFuncid())){   	//if power
	         %>
	    			<li><a href="#" ref="<%=vo.getName()%>"><%=vo.getName()%></a></li>
	    			      	    	
	    	<% }
    	}
    	%>
    				<ul show="true">
    	<%
    	//level 2
    	it2 = null;
    	it2 = reslist.iterator(); 
    	while(it2.hasNext()){
    		temp = null;
    		temp = 	(T_function)it2.next();
    		if(temp.getPid() == vo.getFuncid() ){ //֤�������¼�
    			temp.setLev(1);
    			showList.add(temp);
    			 //�ж�Ȩ��funcid���Ƿ������ǰ�˵�id�������������ʾ�����򣬲���ʾ------�����˵�
	   	    	 if(keyList.contains(temp.getFuncid())){   	//if power
	   	         %>
				         <li><a href="<%=basePath%><%=temp.getMemo()%>"  ref="<%=vo.getName()%>"   target="mainFrame"  > <%=temp.getName()%></a></li>
	   	    	<% 
	   	    	}
    		}

    	} //end while level2;
      %>
		          </ul>
      <%
		//level  3
		//it3 = null;
		// it3 =reslist.iterator();
    	//while(it3.hasNext()){
    	//	temp2 = (T_function)it3.next();
    	//	if(temp2.getPid() == temp.getFuncid() ){ //֤�������¼�
    	//		temp2.setLev(2);
    	//		showList.add(temp2);
    	//	}
    	// }
    	
    }//end while level1;
} //end if reslist;
%>

</ul>
</div>    	 

</body>
</html>
