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

<title>Ŀ¼��</title>
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
		o.alt='ȫ���۵�';
	}
	else
	{
		openAll();
		judge=0;
		o.src='<%=basePath%>images/freetree/icon-expandall.gif';
		o.alt='ȫ��չ��';
	}
}
function exitsys()
{
    var ask=confirm("��ȷ���˳�����ϵͳ��\n\n�㡰ȷ�����������㡰ȡ��������");
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
    <td width="20" align="center" valign="top"><img src="images/freetree/icon-expandall.gif" width="16" height="15" class="button" onclick="expandall(this)" vspace="2" alt="ȫ��չ��"></td>
  </tr>
</table>
<!--   -->
<!--
/******************************************************************************
*�������ƣ�Ŀ¼�� for ALL 2.0.3
*�����ܣ���ȫ����Javascript�Ķ�̬����Ŀ¼
*�漰������menu ��itemExists �� chengstate �� setupcookie �� initialize �� objExists �� saveCookie �� getCookie �� checkCookieExist �� deleteCookie 
*�������壺
	menu				������������ ��
	itemExists			���ж��Ƿ���childer��
	chengstate			���л��ڵ�״̬��open/close����
	setupcookie			�����ڵ�״̬����Cookie ��
	initialize			����ʼ���ڵ�״̬����ȡCookie����
	objExists			����֤�����Ƿ���� ��
	saveCookie			��ִ�б���Cookie ��
	getCookie			��ִ�ж�ȡCookie ��
	checkCookieExist	����֤Cookie�Ƿ���� ��
	deleteCookie		��ɾ��Cookie ��
***********************************************   һ��Ϊ�޸� �汾�޸���Ϣ
2004��12��28��
v2.0.3
��Ҷ�ӽڵ������Ҳ��Ч�������������Ҫ����ֱ�Ӹ���js�ļ���
���Ӳ���ߵ�˫���¼���˫�����Ὣ�ýڵ����������������������

2004��12��09��
v2.0.1
�޸ļ�¼�Ľڵ���ʱ�����bug

2004��10��15�� 
v2.0 
���Ӹ��Ի�ͼ�깦�ܣ�
������Ӳ˵��Ĳ������裻
����ȫ��չ����ȫ���۵����ܣ�
*******************************************************************************/-->
<table border=0>
  <!-- 
  <tr>
    <td>��ӭ����<%= session.getAttribute("userName") %><td>
  </tr>
   -->
  <tr>
    <td>
	<script language="javascript" type="text/javascript">
	
	// treemenu �Ĳ�����������Ϊ����ԴĿ¼����"images/freetree/treemenu/image/";�����ƣ���ͼ�ꣻ���ӣ��ɲ����Ŀ�괰�ڣ��ɲ���������Ϊ�գ�������Ч��
	objTree	= new treemenu("","ϵͳ��Ŀ¼","<%=basePath%>images/freetree/tree_root.gif","#","");	
<%       

Rm dao = new Rm();

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
    	}
    	//level 2
    	it2 = null;
    	it2 = reslist.iterator(); 
    	while(it2.hasNext()){
    		temp = null;
    		temp = 	(T_function)it2.next();
    		if(temp.getPid() == vo.getFuncid() ){ //֤�������¼�
    			temp.setLev(1);
    			showList.add(temp);
    		}

    	} //end while level2;
    	
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

//��ʾ��
if(showList.size()!=0){
	 Iterator itshow = showList.iterator();
     while(itshow.hasNext()){
    	 T_function tvo = (T_function) itshow.next();
    	 //System.out.println("--"+tvo.getName()+"|"+tvo.getLev());
    	 //�ж�Ȩ��funcid���Ƿ������ǰ�˵�id�������������ʾ�����򣬲���ʾ
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
	// menu �Ĳ�������Ϊ����Ҫ��ʾ�����ĸ�id��
	// �ú�����������html���룬��Ҫ�� write ���������
	document.write(menu(0));
	//print_arr();
	</script>
    </td>
  </tr>
</table>
</body>
</html>
