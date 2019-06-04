<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK"%>
<%@page import="com.common.app.sign.web.spring.UserSession"%>
<%@page import="com.common.app.sign.domain.Account" %>
<%@include file="taglibs.jsp" %>
<%@include file="sessionValidate.jsp" %>
<%//@include file="rm/findUserFunction.jsp" %>

<%@ page import="com.common.db.PaginationSupport" %>

<%@ page import="java.util.*" %>
<%@ page import="com.common.rm.domain.*" %>
<%@page import = "com.jxc.dao.impl.*"  %>
<%@page import = "com.common.rm.dao.*"  %>
<%@page import = "com.common.app.sign.domain.T_user_detail"  %>
<%@ page import="com.common.rm.domain.T_user_function" %>
<%@ page import="com.common.rm.domain.T_user_role" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />

<title>目录树</title>
<link href="images/freetree/menu.css" rel="stylesheet" type="text/css">
<script src="images/freetree/menu.js" type="text/javascript"></script>
<script language="JavaScript">
function window_onload()
{
	initialize();
}//

var judge=0;
function expandall(o)
{
	if (judge==0)
	{
	
		closeAll();
		judge=1;
		o.src='<%=basePath%>images/freetree/icon-closeall.gif';
		o.alt='全部折叠';
	}
	else
	{
		openAll();
		judge=0;
		o.src='<%=basePath%>images/freetree/icon-expandall.gif';
		o.alt='全部展开';
	}
}
function exitsys()
{
    var ask=confirm("你确定退出管理系统吗？\n\n点“确定”继续，点“取消”返回");
    if(ask)
	{
        top.location.href="singon.jsp";
    }
}
</SCRIPT>
</head>
<body bgcolor="#FFFFFF" text="#000000" onselectstart="return false;"  oncontextmenu="return false;" onLoad="window_onload();">

<table id=control width="100%" border="0" cellspacing="0" cellpadding="0" class="borderon">
  <tr>
    <td width="20" align="center" valign="top"><img src="images/freetree/icon-expandall.gif" width="16" height="15" class="button" onclick="expandall(this)" vspace="2" alt="全部展开"></td>
  </tr>
</table>
<!--   -->
<!--
/******************************************************************************
*程序名称：目录树 for ALL 2.0.3
*程序功能：完全基于Javascript的动态树形目录
*涉及函数：menu ；itemExists ； chengstate ； setupcookie ； initialize ； objExists ； saveCookie ； getCookie ； checkCookieExist ； deleteCookie 
*函数意义：
	menu				：生成树代码 ；
	itemExists			：判断是否有childer；
	chengstate			：切换节点状态（open/close）；
	setupcookie			：将节点状态存入Cookie ；
	initialize			：初始化节点状态（读取Cookie）；
	objExists			：验证对象是否存在 ；
	saveCookie			：执行保存Cookie ；
	getCookie			：执行读取Cookie ；
	checkCookieExist	：验证Cookie是否存在 ；
	deleteCookie		：删除Cookie ；
***********************************************   一下为修改 版本修改信息
2004年12月28日
v2.0.3
非叶子节点的连接也有效，此设置如果需要可以直接覆盖js文件；
增加层次线的双击事件，双击将会将该节点收缩，便于浏览大量数据

2004年12月09日
v2.0.1
修改记录的节点有时出错的bug

2004年10月15日 
v2.0 
更加个性化图标功能；
改善添加菜单的操作步骤；
增加全部展开，全部折叠功能；
*******************************************************************************/-->
<table border=0>
  <!-- 
  <tr>
    <td>欢迎您！<%= session.getAttribute("userName") %><td>
  </tr>
   -->
  <tr>
    <td>
	<script language="javascript" type="text/javascript">
	
	// treemenu 的参数意义依次为：资源目录，如"images/freetree/treemenu/image/";树名称；树图标；连接（可不填）；目标窗口（可不填，如果连接为空，此项无效）
	objTree	= new treemenu("","系统根目录","<%=basePath%>images/freetree/tree_root.gif","#","");	
<%       

Rm dao = new Rm();

//取得所有资源树
int pageSize = 1000;
int startIndex = 0;
PaginationSupport pg = dao.t_functionList(pageSize, startIndex);
//所有funcid
List reslist = pg.getItems();
T_function vo = null, 
temp = null, 
temp2 = null;
//显示树对象list
List showList = new ArrayList();                        

//加工成3级树
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
    	}
    	//level 2
    	it2 = null;
    	it2 = reslist.iterator(); 
    	while(it2.hasNext()){
    		temp = null;
    		temp = 	(T_function)it2.next();
    		if(temp.getPid() == vo.getFuncid() ){ //证明是其下级
    			temp.setLev(1);
    			showList.add(temp);
    		}

    	} //end while level2;
    	
		//level  3
		//it3 = null;
		// it3 =reslist.iterator();
    	//while(it3.hasNext()){
    	//	temp2 = (T_function)it3.next();
    	//	if(temp2.getPid() == temp.getFuncid() ){ //证明是其下级
    	//		temp2.setLev(2);
    	//		showList.add(temp2);
    	//	}
    	// }
    	
    }//end while level1;
} //end if reslist;


//登陆后从系统中查询用户funcid列表
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

//显示树
if(showList.size()!=0){
	 Iterator itshow = showList.iterator();
     while(itshow.hasNext()){
    	 T_function tvo = (T_function) itshow.next();
    	 //System.out.println("--"+tvo.getName()+"|"+tvo.getLev());
    	 //判断权限funcid中是否包含当前菜单id，如果包含，显示，否则，不显示
    	 if(keyList.contains(tvo.getFuncid())){   	//if power	 

	    	 if(tvo.getLev()==0)
	    	 {%>
	   		    add_item(
				         <%=tvo.getFuncid()%>,
				         <%=tvo.getPid()%>,
				         "<%=tvo.getName()%>",
				         "<%=basePath%>images/freetree/close.gif",
				         "<%=basePath%>images/freetree/open.gif",
				         "",
				         "mainFrame"
			           );
	    	<%}
	    	else{%>
	   			add_item(
				         <%=tvo.getFuncid()%>,
				         <%=tvo.getPid()%>,
				         "<%=tvo.getName()%>",
				         "<%=basePath%>images/freetree/tree_file.gif",
				         "<%=basePath%>images/freetree/tree_file.gif",
				         "<%=basePath%><%=tvo.getMemo()%>",
				         "mainFrame"
	                   ); 
	    	 <%} //end else;
    	 } //end if power;
 
     }//end  itshow while;
}//end if;
%>
	// menu 的参数意义为：所要显示的树的父id；
	// 该函数返回树的html代码，需要由 write 函数输出。
	document.write(menu(0));
	//print_arr();
	</script>
    </td>
  </tr>
</table>
</body>
</html>
