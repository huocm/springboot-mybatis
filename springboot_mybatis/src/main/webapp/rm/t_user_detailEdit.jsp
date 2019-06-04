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
<% request.setCharacterEncoding("GBK");%>
<%! //�����ַ����ķ�����
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
   <link rel="stylesheet" href="<%= basePath %>/css/style.css" type="text/css">
    <script language="JavaScript" src="<%= basePath %>/js/global.js"></script>
    <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
    <script language="JavaScript" src="<s:url value='/jscript/date.js'/>" ></script>
</head>
<script type="text/javascript">
//������Ա�ͻ���
function load(){
	loadUsers();
	//loadBranch(); �ŵ�loadUsers()ִ�������ٵ��ã������޷���ʾ���ݡ�
}	
	
//������
function loadUsers(){
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    //var url = '<%=basePath%>T_user_detailActionFindAll.action?time='+Math.random();
   var url = '<%=basePath%>rm/t_user_detailListAjaxRes.jsp?time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content =""; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",loadUsersCallBack );
}
        
//�ص�����
function loadUsersCallBack(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
        if(http_request.status == 200) {                
            var mubiao = document.getElementById("jsr");
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
            //alert("���!");
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
        //Ҫ�����������ɺ��ٵ��������ajax������ֻ����ʾһ������һ���������
        //loadBranch();  ���Ų����޸ģ�ֻ��ͨ����̨�ģ����ԣ��˴�ע�ӵ���
    }
}
	
	//������
function loadBranch(){
    //URLδβҪ�Ӹ�������������������ٴ��ύ
    var url = '<%=basePath%>T_branchActionFindAll.action?time='+Math.random();
    //alert(url);
    //Ҫ�ύ��������������
    var content =""; // "userName=" + name;
    //�����쳣�����ύ�ĺ���
    sendRequest("POST",url,content,"TEXT",loadBranchCallBack );
}
        
//�ص�����
function loadBranchCallBack(){
    // ���������
    if( http_request.readyState == 4) {
        // ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ
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
            //alert("���!");
        } else { //ҳ�治����
            alert('���������ҳ�����쳣');
        }
    }
}

    //�ύ
	function editsubmit(){	
		//var dealerid = document.getElementById('dealerid').value;		
		//if(dealerid==null || dealerid ==''){
		//    alert("�˺Ų���Ϊ�գ�");
		//	return false;
		//}
		//if(isNaN(dealerid) ){
		//    alert("�˺ű���Ϊ���֣�");
		//	return false;
		//}		
	    
	    var username = document.getElementById('username').value;		
		if(username==null || username ==''){
		    alert("�˺Ų���Ϊ�գ�");
			return false;
		}	
		var password = document.getElementById('password').value;		
		if(password==null || password ==''){
		    alert("���벻��Ϊ�գ�");
			return false;
		}	
	    
	    var ndsszb = document.getElementById('ndsszb').value;		
        if(isNaN(ndsszb) ){
		    alert("�������ָ�����Ϊ���֣�");
			return false;
		}			
		
		form1.action = "<%= basePath %>rm/t_user_detailEditSave.jsp";
		form1.submit();
		
	}
	
function setDeptNameHiddenValue(){
	//��ȡselect��option  ����
	var ss = document.form1.branchid;
	var hiddenValue = ss.options[ss.selectedIndex].text;
	//alert("name="+hiddenValue);
	//��ȡoption��text
    document.form1.deptname.value = hiddenValue;
}

</script>
<body onload="load()" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=yes>
<%
try{
	String username = request.getParameter("username");
	String dealerno = request.getParameter("dealerno");
	System.out.println("------dealerno="+dealerno);
	T_user_detail voin = new T_user_detail();
	voin.setDealerno(Integer.parseInt(dealerno));
	Rm rm = new Rm();
	
	T_user_detail vo = (com.common.rm.domain.T_user_detail)rm.t_user_detailFindByDealerno(voin);
	//T_user_detail vo = (T_user_detail)rm.t_user_detailFindByDealerno(voin);


%>
<form action="" method="post" name="form1">
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="2d6094">
  <tr>
    <td height="3"></td>
  </tr>
  <tr>
    <td valign="top">
     
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" height="25" background="<%= basePath %>images/1_09.gif"><img src="images/1_08.gif" width="8" height="25"></td>
        <td width="839" valign="bottom"  background="<%= basePath %>images/1_09.gif" ><span class="daohang">��Ȩ�޹���&gt;&gt; <a href="<%= basePath %>rm/t_user_detailList.jsp">�û�����&gt;&gt; �޸��û�</a></span></td>
      </tr>
   
      <tr>
         <td height="30" bgcolor="#FFFFFF" colspan="4" valign="bottom">&nbsp;                                	
            <input type="button" class="btn" value="    ����    " name="B1" onClick="editsubmit()">
			<input type="reset"  class="btn" value="    ���    " name="B2">
			<input type="button" class="btn" value="    ����    " name="B1" onClick="javascript:history.back(-1)">
    	</td>
      </tr>
      
      <tr>
        <td colspan="2" align="center" valign="middle" bgcolor="#FFFFFF" >
          
          <table width="100%" border="0" cellspacing="5" cellpadding="0">
            <tr>
              <td>
              
               <table width="100%" border="0" cellpadding="0" cellspacing="5">
                <tr>
                  <td height="229" valign="top" >
                    
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">

                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�˺�:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="username"  maxLength='11' value="<%= vo.getUsername() %>" readonly="true"/>
					            	<input type="hidden"  name="dealerid"   value="<%= vo.getDealerid() %>" />
					            	<input type="hidden"  name="dealerno"   value="<%= vo.getDealerno() %>" />
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="password"  name="password"  maxLength='11'  value="<%=vo.getPassword() %>"/>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>

							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�Ƿ����:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
							        <select name="status">
							            <%if(vo.getStatus()==0){%>
							        	<option value="1">����</option>
							        	<option value="0" selected>������</option>
							        	<%}else{ %>
							        	<option value="1" selected>����</option>
							        	<option value="0" >������</option>
							        	<%} %>
							        </select>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>							
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">˵��:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="memo"  maxLength='20'   value="<%= vo.getMemo() %>"/>							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">����ʱ��:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="sysj"  maxLength='20' value="<%=vo.getSysj() %>"/>
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">¼��ʱ��:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="lysj"  maxLength='20'  value="<%=vo.getLysj() %>" />							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>                            
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">ǩԼʱ��:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="qysj"  maxLength='20'  value="<%=vo.getQysj() %>" />							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>                            
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;					            	
					            	<select name="jsr">
					            	    <option  value="<%=vo.getJsr() %>" > <%=vo.getJsr() %></option>
					            		<option value="">---��---</option>
					            	</select>					            							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�Ƿ�������Ա:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	 <select name="issaler">
					            	  <%if(vo.getIssaler().equals("0")){%>
							        	<option value="1">��</option>
							        	<option value="0" selected>��</option>
							        	<%}else{ %>
							        	<option value="1" selected>��</option>
							        	<option value="0" >��</option>
							        	<%} %>
					            	 </select>							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
		                    <tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">�������ָ��:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;
					            	<input type="text"  name="ndsszb"  maxLength='8'  value="<%=vo.getNdsszb().intValue() %>" />
					            	<input type="hidden"  name="deptname"  value="<%=vo.getDeptname() %>" />
					            	<input type="hidden"  name="branchid"  value="<%=vo.getBranchid() %>" />
					            	<input type="hidden"  name="deptid"  value="<%=vo.getDeptid() %>" />							    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>
                            		             
							<!-- 
							<tr>
							  <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">��������:</td>
                              <td width="60%" align="left" valign="middle"  bgcolor="#FFFFFF">&nbsp;                         
					            	<select name="branchid" onChange="setDeptNameHiddenValue()">
					            	<%if(vo.getBranchid()!=null){ %>
					            		<option  value="<%=vo.getBranchid() %>" > <%=vo.getDeptname() %></option>
					            		<%} %>
					            	</select>				
					            	<input type="hidden"  name="deptname"  value="<%=vo.getDeptname() %>" />			    
							  </td>
                              <td width="40%" height="24" align="right" valign="middle" bgcolor="#F2F2F2">&nbsp;</td>                                                           
                            </tr>     --> 					   
                         </table>
                        
						</td>
                      </tr>					  
					</table>
					
                  </td>
                </tr>
              </table>
             
             </td>
           </tr>
        </table>
       
       </td>
      </tr>
    </table>
   
   </td>
  </tr>
</table>
<%
}catch(Exception e){
		System.out.println(e);
		e.printStackTrace();
	}
%>

</form>
</body>
</html>
	