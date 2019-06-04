<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>
<%@page import="java.sql.Timestamp"%>
<%@include file="../../taglibs.jsp" %>
<%@include file="../../sessionValidate.jsp" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="com.jxc.domain.*" %>
<% request.setCharacterEncoding("GBK");%>

<%@ page import="java.util.*"%>
<%@ page import="com.jxc.domain.*"%>
<%@ page import="com.jxc.service.*"%>
<%@ page import="com.jxc.dao.impl.*"%>
<%@ page import="com.common.db.DaoConfig" %>
<%@ page import="com.ibatis.sqlmap.client.SqlMapClient" %>
<%

String bathPath= request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +"/"+ request.getContextPath()+"/";

double max = 0.00;
double updatenum = 0.00;
int piciid = 0;
String[] temp = request.getParameterValues("hbkc"); 
int[] flag = new int[temp.length];
boolean subflag = true;
int retflag = 0;

SqlMapClient conn = null;

try{
	
	conn = DaoConfig.getInstance();
	//事务开始
	conn.startTransaction();
	System.out.println("------------------- 合并库存 start ------------------------");
	String  sql ="";
	
	String[] tcontent = null;
	for(int i=0;i<temp.length;i++){
		//out.println(temp[i]);
		tcontent = temp[i].split(";");

		//out.println("<br>");
		System.out.println("------tcontent[0]="+tcontent[0]);
		System.out.println("------tcontent[1]="+tcontent[1]);
		//所有的要合并的批次的数量累加起来，最后用于更新新批次的数量
		updatenum += Double.parseDouble(tcontent[1]);
		//合并规则是数量最多的批次为新的，其他的其次数量变为0，数量合并到数量最大的批次上
		if(Double.parseDouble(tcontent[1])>=max){
			piciid = Integer.parseInt(tcontent[0]);
		}
		
		flag[i] = conn.update("T_buy.updateT_buyHbkc", Integer.parseInt(tcontent[0]));  
		if(flag[i]!=1){
			subflag =false;
			break;
		}
		System.out.println("flag["+i+"]="+flag[i]);
		//out.println("<br>");
		
	}
	//更新合并后批次的存量为所有合并起来的批次的总和
	T_buy vo = new T_buy();
	vo.setId(piciid);
	vo.setNum(updatenum);
	
	retflag = conn.update("T_buy.updateT_buyHbkcNew", vo);
	//如果所有更新成功，则提交事务，否则，回滚事务
	if(subflag&&retflag==1){
		conn.commitTransaction();
		retflag =1;
	}else{
		retflag=0;
	}
	System.out.println("------------------- 合并库存 end ------------------------");

}catch(Exception e){
	System.out.println(" ----------1t_kucun.jsp mess = "+e);
}finally{
	//事务结束
	conn.endTransaction();
}
response.sendRedirect("t_kucunMessage.jsp?mess="+retflag);

%>
<script type="text/javascript">
if( <%=retflag%>==1){ 
	alert("恭喜，合并库存成功！");
}else{
	alert("对不起，合并库存失败！");
}
</script>