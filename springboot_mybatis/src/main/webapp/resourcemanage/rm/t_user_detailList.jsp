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
<title>����Ա��Ϣ�б�ҳ</title>
    <link rel="stylesheet" href="<%= basePath %>css/style.css" type="text/css">
    <script language="JavaScript" src="<%= basePath %>js/global.js"></script>
    <script language="JavaScript" src="<%= basePath %>/js/sorttable.js"></script>
    <script language="JavaScript" src="<%= basePath %>/js/myAjax.js" ></script>
</head>
<script type="text/javascript" language="javascript">
//������
function loadBranch(){
    //URLδβҪ�Ӹ�������������������ٴ��ύ
   var url = '<%=basePath%>T_branchList.action?time='+Math.random();
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
        <td width="839" valign="bottom" background="<%= basePath %>images/1_09.gif"><span class="daohang">��Ȩ�޹���&gt;&gt; ����Ա����</span></td>
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
                              <td background="<%= basePath %>images/1_27.gif" class="daohang">&nbsp;����Ա��Ϣ��ѯ&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>
                      
                      <tr>
                        <td bgcolor="cbcbcb">
                                                
                          <table width="100%" border="0" cellspacing="1" cellpadding="0" class="STYLE5">					 
				            <form action="<%= basePath %>/rm/t_user_detailList.jsp" name="form1"  target="" >                   				
							<tr>
							  <td width="100%" height="" align="left" valign="middle" bgcolor="#F2F2F2">							  

							  &nbsp;��������
							  	<select  name="branchid"   id="branchid"  >
							  	            <option value="">--------</option>
					            			
					            </select>
							   
							  &nbsp;&nbsp;	����Ա����<input type="text"  name="memo" maxlength='20'  id="memo"/>							  							  
							  &nbsp;&nbsp;	����Ա�˺�<input type="text"  name="username" maxlength='20'  id="username"/>							  							  
							    &nbsp;<input type="submit" class="btn" value="    ��ѯ    " name="B1">

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
                              <td background="<%= basePath %>images/1_27.gif" class="daohang">&nbsp;����Ա��Ϣ�б�ҳ&nbsp;</td>
                            </tr>
                        </table></td>
                      </tr>                      
                      <tr>
                        <td valign="top" bgcolor="cbcbcb">
                          <table id="table0" width="100%" border="0" cellspacing="1" cellpadding="0"  class="sortable">
                            <tr>
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�ʺ�</strong></th>           
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�Ƿ����</strong></th>
								<!-- 
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����ʱ��</strong></th>					                      
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">¼��ʱ��</strong></th>					                      
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">ǩԼʱ��</strong></th>					                      
								
								 
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">������</strong></th>					                      
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">�Ƿ�������Ա</strong></th>					                      
								-->
								<!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">��������</strong></th>-->
								<!-- <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����������</strong></th>-->
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">������������</strong></th>													                      
								<th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����Ա����</strong></th>					                      					           
					                    				            
					            <th width="" height="22" align="center" bgcolor="#F2F2F2"><strong class="liebiaotitle">����</strong></th>          				          
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
   								System.out.println("------����Ա����="+codeString(memo));
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
					          <td height="25" align="center" valign="middle">&nbsp;<% if(vo.getStatus()==1){out.println("����");}else{out.print("������");} %>&nbsp;</td>
					          <!-- 
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getSysj() %>&nbsp;</td>
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getLysj() %>&nbsp;</td>	
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getQysj() %>&nbsp;</td>				          
					           
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getJsr() %>&nbsp;</td>					                 					                   
					          <td height="25" align="center" valign="middle">&nbsp;<% if(null!=vo.getIssaler()&&vo.getIssaler().equals("1")){out.println("��");}else{out.print("��");} %>&nbsp;</td>
					          -->
					          <!-- <td height="25" align="center" valign="middle">&nbsp;<%= vo.getDeptname() %>&nbsp;</td>-->
					         <!--  <td height="25" align="center" valign="middle">&nbsp;<%= vo.getBranchid() %>&nbsp;</td>
					          -->
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getBarname() %>&nbsp;</td>
					          <td height="25" align="center" valign="middle">&nbsp;<%= vo.getMemo() %>&nbsp;</td>	       				          
					          
					          <td height="25" align="center" valign="middle">		
								 <a href="<%= basePath %>rm/t_user_detailSetPower.jsp?dealerno=<%= vo.getDealerno() %>&username=<%= vo.getUsername() %>" target="_self" id="<%= vo.getDealerid() %>">
								 	<img src='<%= basePath %>images/config.gif' border="0" alt="����Ȩ��" title="����Ȩ��"  height="15" >����Ȩ��
								 </a>&nbsp;
								  <a href="<%= basePath %>rm/t_user_detailEdit.jsp?dealerno=<%= vo.getDealerno() %>&dealerid=<%= vo.getDealerid() %>&username=<%= vo.getUsername() %>&password=<%= vo.getPassword() %>&status=<%= vo.getStatus() %>&memo=<%= vo.getMemo() %>" target="_self" id="<%= vo.getDealerno() %>">
								 	&nbsp;<img src='<%= basePath %>images/modify.png' border="0" alt="�޸�" title="�޸�"  height="15" >�޸�\��������\����\����&nbsp;
								 </a>&nbsp;
								 <a href="<%= basePath %>rm/t_user_detailDelete.jsp?dealerno=<%= vo.getDealerno() %>" target="_self" id="<%= vo.getDealerno() %>">
								 	&nbsp;<img src='<%= basePath %>images/delete.png' border="0" alt="ɾ��" title="ɾ��"  height="15" >ɾ��&nbsp;
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
			              <input type="button" name="add" value="    ����    " class="btn" onClick="javascript:window.location.href='<%= basePath %>rm/t_user_detailAdd.jsp'" >&nbsp;
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

