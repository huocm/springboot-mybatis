<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="../../Error.jsp"%>

<%@include file="../../sessionValidate.jsp" %>

<%@ page import="java.util.*" %>
<%@ page import="com.common.db.PaginationSupport" %>
<%@ page import="com.common.rm.dao.*" %>
<%@ page import="com.common.rm.domain.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
try{ 
	String username = request.getParameter("username");
	String status = request.getParameter("status");
	String memo = request.getParameter("memo");
	//String dealerid = request.getParameter("dealerid");
	String dealerno = request.getParameter("dealerno");
	String password = request.getParameter("password");

	String sysj = request.getParameter("sysj");
	String lysj = request.getParameter("lysj");
	String qysj = request.getParameter("qysj");
	String jsr = request.getParameter("jsr");
	String issaler = request.getParameter("issaler");

	String ndsszb = request.getParameter("ndsszb");
	if(ndsszb==null||"".equals(ndsszb)){
		ndsszb ="0";
	}
	
	//下面这2个值不能通过页面修改，可以通过后台修改，否则数据会乱掉
	String branchid = request.getParameter("branchid");
	String deptname = request.getParameter("deptname");
	String deptid = request.getParameter("deptid");
	System.out.println("---username="+username+"----status="+status+"----dealerno="+dealerno+"-----password="+password+";deptname="+deptname);
	System.out.println("---sysj="+sysj+"----lysj="+lysj+"----qysj="+qysj+"-----jsr="+jsr+"-----issaler="+issaler+"-----ndsszb="+ndsszb+"-----branchid="+branchid);
	//System.out.println("---username="+username+"----status="+status+"----dealerno="+dealerno+"-----password="+password);
	//System.out.println("---sysj="+sysj+"----lysj="+lysj+"----qysj="+qysj+"-----jsr="+jsr+"-----issaler="+issaler+"-----ndsszb="+ndsszb);

	T_user_detail vo = new T_user_detail();
	vo.setDealerno(Integer.parseInt(dealerno));
	vo.setPassword(password);
	vo.setMemo(memo);
	vo.setStatus(Integer.parseInt(status));
	vo.setUsername(username);

	vo.setSysj(sysj);
	vo.setLysj(lysj);
	vo.setQysj(qysj);
	vo.setJsr(jsr);
	vo.setIssaler(issaler);
	vo.setNdsszb(Double.parseDouble(ndsszb));
	vo.setBranchid(branchid);
	vo.setDeptname(deptname);
	vo.setDeptid(deptid);

Rm dao = new Rm();
dao.updateT_user_detail(vo);
//out.println(" ----ret= "+dao.updateT_user_detail(vo));

}catch(Exception e){
	out.println(e);
	e.printStackTrace();
}

response.sendRedirect(basePath+"rm/t_user_detailList.jsp");
%>

                      

