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
<%! //处理字符串的方法：
  public String codeString(String s)
    { String str=s;
       try{byte b[]=str.getBytes("iso-8859-1");
           str=new String(b);
           return str;
         }
      catch(Exception e)
         { 
		  return str;
         }
    }
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>操作员信息列表页</title>
    <link rel="stylesheet" href="<%= basePath %>css/style.css" type="text/css">
    <script language="JavaScript" src="<%= basePath %>js/global.js"></script>
    <script language="JavaScript" src="<%= basePath %>/js/sorttable.js"></script>
    <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
</head>
<script type="text/javascript" language="javascript">
//请求函数
function loadBranch(){
    //URL未尾要加个随机数，以免请求不能再次提交
   var url = '<%=basePath%>T_branchList.action?time='+Math.random();
    //alert(url);
    //要提交到服务器的数据
    var content =""; // "userName=" + name;
    //调用异常请求提交的函数
    sendRequest("POST",url,content,"TEXT",loadBranchCallBack );
}
        
//回调函数
function loadBranchCallBack(){
    // 请求已完成
    if( http_request.readyState == 4) {
        // 信息已经成功返回，开始处理信息
        if(http_request.status == 200) {                
            var mubiao = document.getElementById("branchid");
			var results = http_request.responseXML.getElementsByTagName("result");
			var option = null;
			var text = null;
			//alert("results="+results+",length="+results.length); 
			for(var i = 0; i < results.length; i++) {
			    option = document.createElement("option");
			    option.setAttribute("value", results[i].getAttribute("id"));
			    option.appendChild(document.createTextNode(results[i].firstChild.nodeValue));
			    mubiao.appendChild(option);  
			    //alert(option);         
            }
            //alert("完毕!");
        } else { //页面不正常
            alert('您所请求的页面有异常');
        }

    }
}
</script>
<body class="mainBody" onLoad='jo(),loadBranch()' leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
 <% try{ 
     String branchid = request.getParameter("branchid");
     String username = request.getParameter("username");
     String memo = request.getParameter("memo");
 %>

<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td height="3" bgcolor="2d6094"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<%= basePath %>images/1_09.gif"><img src="<%= basePath %>images/1_08.gif" width="8" height="25"></td>
        <td width="839" valign="bottom" background="<%= basePath %>images/1_09.gif"><span class="daohang">·权限管理&gt;&gt; 操作员管理</span></td>
      </tr>
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="3">
                <tr>
                  <td height="229" valign="top" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                         <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="5" cellpadding="0">
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="images/1_27.gif"><img src="<%= basePath %>images/1_26.gif" width="21" height="24"></td>
                              <td background="<%= basePath %>images/1_27.gif" class="daohang">&nbsp;操作员信息查询&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <form action="<%= basePath %>/rm/t_user_detailList.jsp" name="form1"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">							  

							  &nbsp;所属机构
							  	<select  name="branchid"   id="branchid"  >
							  	            <option value="">--------</option>
					            			
					            </select>
							   
							  &nbsp;&nbsp;	操作员名称<input type="text"  name="memo" maxlength='20'  id="memo"/>							  							  
							  &nbsp;&nbsp;	操作员账号<input type="text"  name="username" maxlength='20'  id="username"/>							  							  
							    &nbsp;<input type="submit" class="btn" value="    查询    " name="B1">

							  </td>                             
                            </tr>	
                              </form>																		   
                         </table>                        
						</td>
                      </tr>		
                      <tr>
                        <td>&nbsp;</td>
                      </tr>	
					  <tr>
                        <td><table width="100%" height="24" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="21" background="images/1_27.gif"><img src="<%= basePath %>images/1_26.gif" width="21" height="24"></td>
                              <td background="<%= basePath %>images/1_27.gif" class="daohang">&nbsp;操作员信息列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>                      
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0"  class="sortable">
                            <tr>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">帐号</strong></th>           
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">是否可用</strong></th>
								<!-- 
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">试用时间</strong></th>					                      
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">录用时间</strong></th>					                      
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">签约时间</strong></th>					                      
								
								 
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">介绍人</strong></th>					                      
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">是否销售人员</strong></th>					                      
								-->
								<!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">所属部门</strong></th>-->
								<!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">所属机构号</strong></th>-->
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">所属机构名称</strong></th>													                      
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">操作员姓名</strong></th>					                      					           
					                    				            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">操作</strong></th>          				          
                            </tr>
                            <%
                            Rm dao = new Rm();
                            int pageSize = 10;
                            int startIndex = 0;
                            
                            T_user_detail  obj = new T_user_detail();                    	                       	   
   							if(branchid!=null&&!"".equals(branchid)){
   								obj.setBranchid(branchid);   								
                            }
   							if(memo!=null&&!"".equals(memo)){
   								obj.setMemo(codeString(memo) );   	
   								System.out.println("------操作员姓名="+codeString(memo));
                            }
   							if(username!=null&&!"".equals(username)){
   								obj.setUsername(username);
                            }
   							
                            //obj.setBranchid((String)request.getSession().getAttribute("branchid"));
                            PaginationSupport pg = dao.t_user_detailList(obj);
                            List list = pg.getItems();
                            if(list!=null){
	                            Iterator it = list.iterator();
	                            T_user_detail vo = null;
	                            while(it.hasNext()){
	                            	vo = (T_user_detail)it.next();
                            %>
                            <tr id="afuncid<%= vo.getDealerno() %>" onClick="changeTrColor(id)" id="trid001" style="cursor:hand" bgcolor="#FFFFFF" align="center">
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getUsername() %>&nbsp;</td>					                 					                   
					          <td height="25" align="center" valign="middle">&nbsp;<% if(vo.getStatus()==1){out.println("可用");}else{out.print("不可用");} %>&nbsp;</td>
					          <!-- 
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getSysj() %>&nbsp;</td>
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getLysj() %>&nbsp;</td>	
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getQysj() %>&nbsp;</td>				          
					           
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getJsr() %>&nbsp;</td>					                 					                   
					          <td height="25" align="center" valign="middle">&nbsp;<% if(null!=vo.getIssaler()&&vo.getIssaler().equals("1")){out.println("是");}else{out.print("否");} %>&nbsp;</td>
					          -->
					          <!-- <td height="25" align="center" valign="middle">&nbsp;<%= vo.getDeptname() %>&nbsp;</td>-->
					         <!--  <td height="25" align="center" valign="middle">&nbsp;<%= vo.getBranchid() %>&nbsp;</td>
					          -->
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getBarname() %>&nbsp;</td>
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getMemo() %>&nbsp;</td>	       				          
					          
					          <td height="25" align="center" valign="middle">		
								 <a href="<%= basePath %>rm/t_user_detailSetPower.jsp?dealerno=<%= vo.getDealerno() %>&username=<%= vo.getUsername() %>" target="_self" id="<%= vo.getDealerid() %>">
								 	<img src='<%= basePath %>images/config.gif' border="0" alt="配置权限" title="配置权限"  height="15" >配置权限
								 </a>&nbsp;
								  <a href="<%= basePath %>rm/t_user_detailEdit.jsp?dealerno=<%= vo.getDealerno() %>&dealerid=<%= vo.getDealerid() %>&username=<%= vo.getUsername() %>&password=<%= vo.getPassword() %>&status=<%= vo.getStatus() %>&memo=<%= vo.getMemo() %>" target="_self" id="<%= vo.getDealerno() %>">
								 	&nbsp;<img src='<%= basePath %>images/modify.png' border="0" alt="修改" title="修改"  height="15" >修改\重置密码\禁用\启用&nbsp;
								 </a>&nbsp;
								 <a href="<%= basePath %>rm/t_user_detailDelete.jsp?dealerno=<%= vo.getDealerno() %>" target="_self" id="<%= vo.getDealerno() %>">
								 	&nbsp;<img src='<%= basePath %>images/delete.png' border="0" alt="删除" title="删除"  height="15" >删除&nbsp;
								 </a>&nbsp;
							 </td>
					        </tr>		
                           <%
                               } //end while;
                            } //end if;
                            %>
                          
					    </table></td>
                      </tr>
                 
                      <tr>
                      <td height="22" colspan="" align="center" valign="middle" bgcolor="#FFFFFF">
			              <input type="button" name="add" value="    新增    " class="btn" onClick="javascript:window.location.href='<%= basePath %>rm/t_user_detailAdd.jsp'" >&nbsp;
                         </td>
                      </tr>
                    </table></td>
                </tr>
              </table></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
	
<%                            
 }catch(Exception e){
	out.println(e);
	e.printStackTrace();
	
}
%>
</body>
</html>                            

