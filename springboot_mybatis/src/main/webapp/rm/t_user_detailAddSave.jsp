<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="/Error.jsp"%>

<%@include file="/sessionValidate.jsp" %>

<%@ page import="java.util.*" %>
<%@ page import="com.common.db.PaginationSupport" %>
<%@ page import="com.common.rm.dao.*" %>
<%@ page import="com.common.rm.domain.*" %>
<%@ page import="com.jxc.domain.T_report" %>
<%@ page import="com.jxc.service.impl.T_user_detailServiceImpl" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
try{ 
String username = request.getParameter("username");
String status = request.getParameter("status");
String memo = request.getParameter("memo");
String dealerid = request.getParameter("dealerid");
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
String deptname = request.getParameter("deptname");
String deptid = "";
String branchid ="";
String branchidtemp = request.getParameter("branchid");
//需要对branchid进行split(";")切分，截取前半部分为deptid, 后半部门为 branchid
String[] temp = branchidtemp.split(";");
deptid = temp[0];
branchid = temp[1];

System.out.println("---username="+username+"----status="+status+"----dealerid="+dealerid+"-----password="+password+";deptname="+deptname);
System.out.println("---sysj="+sysj+"----lysj="+lysj+"----qysj="+qysj+"-----jsr="+jsr+"-----issaler="+issaler+"-----ndsszb="+ndsszb+"-----branchid="+branchid);

T_user_detail vo = new T_user_detail();
T_report v=new T_report();


vo.setDealerid(Long.parseLong(dealerid));
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
	System.out.println(" ----ret----------------------= "+dao.insertT_user_detail(vo));
	dao.addAccountno(v);




}catch(Exception e){
	System.out.println(e);
}

response.sendRedirect(basePath+"rm/t_user_detailList.jsp");
%>

                      

