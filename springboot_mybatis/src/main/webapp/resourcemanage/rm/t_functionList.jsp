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

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>T_function信息列表页</title>
    <link rel="stylesheet" href="<%= basePath %>/css/style.css" type="text/css">
    <script language="JavaScript" src="<%= basePath %>/js/global.js"></script>
    <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
</head>

<script type="text/javascript">

function add(){

	var funcid = getCheckboxValue();
	if(funcid!=null){
		var url = '<%= basePath %>rm/t_functionAdd.jsp?funcid='+funcid;
		self.location.href= url;
	}
}

//得到多选框选中的值
function getCheckboxValue(){
	var checkbox = checkfunctionIDS();
	if(checkbox!=false){
		return checkbox.value;
	}
}

//校验多选框
function   checkfunctionIDS(){                                   
   var obj,count,obj1;   
      obj=document.getElementsByName("id");   
      count=0;   
      for(i=0;i<obj.length;i++)   
      {   
         if(obj[i].checked==true) 
         {
         	count++;
         	obj1 =obj[i];
         }
      }   
      if(count<1)   
      {   
         alert("请选择一条记录进行操作（一次操作只能选择一个父节点）!");
         return false;   
      }   
      else if (count>1)   
      {   
         alert("请选择一条记录进行操作（一次操作只能选择一个父节点）！");   
         return  false;   
      }      
      return obj1;              
} 
  	 
function edit(){
   var funcid = getCheckboxValue();
   if(funcid!=null){
	   //alert("funcid="+funcid);
	   window.location.href='<%= basePath %>rm/t_functionEdit.jsp?funidid='+funcid;
   }

}


</script>

<body class="mainBody"  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
 <% try{ %>
<form action="" name="form1" method="post">
<table width="100%"  border="0" cellspacing="0" cellpadding="0" bgcolor="">
  <tr>
    <td height="3" bgcolor="2d6094"></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<%= basePath %>images/1_09.gif"><img src="<%= basePath %>images/1_08.gif" width="8" height="25"></td>
        <td width="839" valign="bottom" background="<%= basePath %>images/1_09.gif"><span class="daohang">·权限管理&gt;&gt; 资源管理</span></td>
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
                              <td background="<%= basePath %>images/1_27.gif" class="daohang">&nbsp;系统资源信息列表页&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0">
                            <tr  onClick="changeTrColor(id)" id="trid001" style="cursor:hand" bgcolor="#FFFFFF">
                                <td width="" colspan="2" height="22" align="left" bgcolor="#F2F2F2">
                               <input type="checkbox" id="id" name="id" value="0" />系统资源
                               </td>
                            </tr>
                            <%
                            Rm dao = new Rm();
                            int pageSize = 10;
                            int startIndex = 0;
                            //if(request.getParameter("pageSize")!=null&&!request.getParameter("pageSize").equals("")){
                            //	pageSize  = Integer.parseInt(request.getParameter("pageSize"));
                            //}
                            //if(request.getParameter("startIndex")!=null&&!request.getParameter("startIndex").equals("")){
                            //	startIndex  = Integer.parseInt(request.getParameter("startIndex"));
                            //}
                            PaginationSupport pg = dao.t_functionList(pageSize, startIndex);
                            List list = pg.getItems();
                          
                            T_function vo = null, temp = null, temp2 = null;
                        	List showList = new ArrayList();
                        	
                            //加工成3级树
                            if(list!=null){                           	
	                            Iterator it = list.iterator();

	                            //level  1
	                            while(it.hasNext()){
	                            	vo = (T_function)it.next();
	                            	if(vo.getPid() == 0){
	                            		vo.setLev(0);
	                            	    showList.add(vo);   
	                            	    //Collections.sort(showList);
	                            	    //Arrays.sort(showList);
	                            	}
	                            	//level 2
	                            	Iterator it2 = list.iterator(); 
	                            	while(it2.hasNext()){
	                            		temp = 	(T_function)it2.next();
	                            		if(temp.getPid() == vo.getFuncid() ){ //证明是其下级
	                            			temp.setLev(1);
	                            			showList.add(temp);
	                            		}
	                            		//level  3
	                            		//Iterator it3 =list.iterator();
		                            	//while(it3.hasNext()){
		                            	//	temp2 = (T_function)it3.next();
		                            	//	if(temp2.getPid() == temp.getFuncid() ){ //证明是其下级
		                            	//		out.println("<br>----------temp2.getPid()="+temp2.getPid()+"----------temp.getFuncid()="+temp.getFuncid());
		                            	//		temp2.setLev(2);
		                            	//		showList.add(temp2);
		                            	//	}
		                            	//}
	                            	}
	                            }
                            }
                            //显示3级树
                            if(showList.size()!=0){
                            	 Iterator itshow = showList.iterator();
                                  while(itshow.hasNext()){
                                	  vo = (T_function) itshow.next();
                            %>
                            <tr onClick="changeTrColor(id)" width="76%" id="tr<%= vo.getFuncid() %>" style="cursor:hand" bgcolor="#FFFFFF">
                                <td height="25" align="left" valign="middle">
                                 <% if(vo.getLev()==0 ){ %>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     <input type="checkbox"  id="id" name="id" value="<%= vo.getFuncid() %>" />
                                 <%}else if(vo.getLev()==1 ){ %>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <!-- 
                                    <input type="checkbox"  id="id" name="id" value="<%= vo.getFuncid() %>" />
                                    -->
                                 <%}else if(vo.getLev()==2 ){ %>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <%}%>                                
                                  <%= vo.getName() %>
                                  </td> 
                                  <td height="25" width="24%" align="right" valign="middle">
                                  <a href="<%= basePath %>rm/t_functionEdit.jsp?funcid=<%= vo.getFuncid() %>&name=<%= vo.getName() %>&pid=<%= vo.getPid() %>&isuse=<%= vo.getIsuse() %>&memo=<%= vo.getMemo() %>" target="_self" align="right" id="<%= vo.getFuncid() %>">
								 	&nbsp;
								 	<img src='<%= basePath %>images/freetree/config.gif' border="0" alt="修改资源" title="修改资源"  height="15" >
								 	修改\禁用\启用资源&nbsp;
								 	
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
			              <input type="button" name="tj" value="    添加资源    " class="btn"  onClick="javsscript:add()" >&nbsp;
			              <!-- 
			              <input type="button" name="del" value="    修改资源状态    " class="btn" onClick="javsscript:edit()">  
                          -->
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
</form> 	
<%                            
 }catch(Exception e){
	out.println(e);
}
%>
</body>
</html>                            

