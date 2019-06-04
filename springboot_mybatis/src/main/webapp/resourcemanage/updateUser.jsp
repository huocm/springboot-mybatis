<%@ page contentType="text/html; charset=GBK" pageEncoding="GBK" import="java.util.*" language="java"  %>
<%@include file="../taglibs.jsp" %>
<%@ page import="com.xuka.domain.*" %>
<%@ page import="com.common.cache.*" %>
<c:set var="basePath" scope="request"
	value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />
<%
//��������������������
String referer = request.getHeader("Referer"); //�˴��ò�����δ֪ԭ��
if(referer == null||!referer.startsWith("http://"+request.getServerName())){
	System.out.println("---------IllegalRequestInterceptor������ getRequestURL="+request.getRequestURL());
	System.out.println("---------IllegalRequestInterceptor������ referer="+referer);
	//response.sendRedirect("illegalRequest.jsp");
	//request.getRequestDispatcher("illegalRequest.jsp").forward(request, response);
	String tempBathPath= request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/"+request.getContextPath()+"/";
	response.sendRedirect(tempBathPath+"illegalRequest.jsp");
}
 %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" href="${basePath}css/right.css" type="text/css" media="all" />
<style type="text/css">
.mytb01{ width:90%; border-top:1px solid #cccccc; border-left:1px solid #cccccc; background-color:#F9F9F9; color:gray;}
.mytb01 td { border-bottom:1px solid #cccccc; border-right:1px solid #cccccc;padding:2px; }
.mytb01 .lb td{color:#d57626; }
</style>
<script language="JavaScript" src="<s:url value='/js/city.js'/>" ></script>
<script language="JavaScript">
function ChangeCity(){
	
	
    //���ó��м���
	var st=document.all("t_user_detail.city");
	
	st.length=0;
	var t1=document.all("t_user_detail.province").value;
	
	for (var j=0, k=0; j<subcat.length; j++){ //j��ʾѭ�����index��k��ʾ�������index
                if (subcat[j][2] == t1) {
                    st.options[k] = new Option(subcat[j][1], subcat[j][0]) ;
                    k++;
                }
      }
      changeJxs(t1);
 } //end function
 
function changeJxs(t1){
      //���þ����̼���������и�ʡ�ľ����̣���ֻ��ѡ��ʡ�ģ������ʡû�о����̣������ѡ��ȫ���ľ�����    
     var jxs = document.all("t_user_detail.parentid");
     clearJxs();
   <%
     List jxsList = CityCache.getInstance().getJxsList();
     if(jxsList!=null){
         Iterator it = null;
        it = jxsList.iterator();
  	    City city = null;
   %>
        var  i = 0;
   <%
	    while(it.hasNext()){
		    city = (City)it.next();	
   %>
            if(t1==<%= city.getCityno() %>){ 
                option = document.createElement("option");
		        option.setAttribute("value", <%=city.getDealerno()%>);
		        option.appendChild(document.createTextNode("<%=city.getUsername()%>"));
		        jxs.appendChild(option);
                i++;
            } 
    <%}%> 
       //���û�б�ʡ�ľ����̣�����ʾȫ��
	   if(i=="0"){
	<%
	 		it = jxsList.iterator();
		 	while(it.hasNext()){
		 		city = (City)it.next(); 
    %>
                option = document.createElement("option");
		        option.setAttribute("value", <%=city.getDealerno()%>);
		        option.appendChild(document.createTextNode("<%=city.getUsername()%>"));
		        jxs.appendChild(option);
		  <%}%>  
	   }
   <%}%>
}
 
function clearJxs(){//���������
      var jxs = document.all("t_user_detail.parentid");
      while(jxs.childNodes.length>0){
          jxs.removeChild(jxs.childNodes[0]);
      }
}
</script>
<script language="javascript">
   

//�ύ��ʼ���� 
function getUno() {
    var dealerid = document.getElementById("dealerid").value;
   
    if(dealerid==""){
       alert("�˺Ų���Ϊ�գ�"); 
       document.getElementById("dealerid").focus();
       return false;
    }
   
    regform.submit(); 
   
 } 



</script>
<body>
&nbsp;&nbsp;<font color="red"><s:fielderror /><s:actionmessage/></font>
<s:form action="T_user_detailmodify.action" name="regform" enctype="multipart/form-data" theme="simple" >
  <table width="100%" id="right-tb" border="0" class="mytb01" align="center" cellpadding="0" cellspacing="0" style="margin-top: 0px;">
    <font color="gray">�û�����-->�޸��û�  </font>
    <tr>
		<td width="8%" align="center">�ʺ�</td>
		<s:hidden name="t_user_detail.dealerno"></s:hidden>
		<td width="38%"><s:textfield  id="dealerid" name="t_user_detail.dealerid" maxLength="6"  readonly="true"/><font color="#FF0000">*</font>(���ô����֣�����6λ)<span id="showTip" ></span></td>
	    <td align="center">�û�����</td>
		<td><s:textfield name="t_user_detail.username"  maxlength="10" /><font color="#FF0000">*</font></td>
	</tr>
	<tr>
		<td align="center">����</td>
		<td><s:password name="t_user_detail.password"  maxlength="10"/><font color="#FF0000">*</font>
		  (Ӣ�ĺ�����,����6-10λ)</td>
		<td align="right">ȷ������</td>
		<td><s:password name="t_user_detail.pwd1"  maxlength="10"/><font color="#FF0000">*</font></td>
	</tr>
    <tr> 
	  <td>ʡ��</td>
	    <td><select name="t_user_detail.province"  onChange="javascript:ChangeCity();" >
	       <script language="JavaScript">
            for(var i=subcat.length-1;i>0;i--){
				if(subcat[i-1][2]!=subcat[i][2]){
            		if(subcat[i][2]==${t_user_detail.province}){
            			document.write("<option value='"+subcat[i][2]+"' selected >"+subcat[i][3]+"</option>");
            			
            		}
            		else{
            			document.write("<option value='"+subcat[i][2]+"'>"+subcat[i][3]+"</option>");
            		}
            		
            		
            	}	
            }
            
            </script>
	      </select><font color="#FF0000">*</font>	    </td>
        <td align="right">����</td>
		<td><select name="t_user_detail.city">
		    </select><font color="#FF0000">*</font>
		</td>
    </tr>
    <tr> 
      <td align="center">������</td>
      <td><select name='t_user_detail.parentid' ></select><font color="#FF0000">*</font></td>
      <td align="right">��ϸͨѶ��ַ</td>
      <td><s:textfield  size="20" name="t_user_detail.address"  maxlength="70"/><font color="#FF0000">*</font></td>
    </tr>
    <tr> 
      <td align="center">��������</td>
      <td><s:textfield  size="20" name="t_user_detail.postalcode"  maxlength="6"/><font color="#FF0000">*</font></td>
      <td align="right">�绰����</td>
      <td><s:textfield  size="20" name="t_user_detail.phone"  maxlength="16"/><font color="#FF0000">*</font></td>
    </tr>
    <tr> 
      <td align="center">��ϵ��</td>
      <td><s:textfield  size="20" name="t_user_detail.linkman"  maxlength="10"/><font color="#FF0000">*</font></td>
      <td align="right">�ֻ�����</td>
      <td><s:textfield  size="20" name="t_user_detail.mobile"  maxlength="11"/><font color="#FF0000">*</font></td>
    </tr>

    <tr> 
      <td align="center">��ҵ����</td>
      <td><s:textfield  size="20"  name="t_user_detail.company"  maxlength="30"/><font color="#FF0000">*</font></td>
      <td align="right">��ҵӪҵִ��ע���</td>
      <td><s:textfield  size="20" name="t_user_detail.license"  maxlength="50"/><font color="#FF0000">*</font></td>
    </tr>
    <tr> 
      <td align="center">��������</td>
      <td><s:textfield  size="20" maxlength="20" name="t_user_detail.barname" /><font color="#FF0000">*</font></td>
      <td height="22" align="center">���˴���</td>
      <td><s:textfield  size="20" name="t_user_detail.corporation"  maxlength="10"/><font color="#FF0000">*</font></td>
    </tr>
    <s:hidden name="myFile" value=" "></s:hidden>
    <tr> 
	  <td width="14%" align="right">��֤��</td>
      <td width="40%">&nbsp;<s:textfield  size="20" name="t_user_detail.safecode"  maxlength="4"/>
       <font color="#FF0000">*</font> &nbsp;<img border=0 src="${basePath}/Image">
      </td>
      <td align="right">�����ʼ�</td>
      <td><s:textfield  size="30" name="t_user_detail.email"  maxlength="20"/><font color="#FF0000">*</font></td>
      
    </tr>
    
	
  </table>
  <table id="right-tb-tb">
  	<tr align="center"> 
  		<td	width="40%">&nbsp;</td>
      <td align="center" colspan="4">&nbsp;<font color='red'>${requestScope.typeError}</font> 
	  
	   <font color="red"><s:actionmessage/></font>&nbsp;&nbsp; <input name="query" type="button"  onClick="getUno()" value="�޸�">
	   <input type="button" value="����"  onclick="javascript:history.go(-1)">
	  </td>
    </tr>
  
  </table>
  
  
  
</s:form>
<script language="JavaScript">
	ChangeCity();
</script>
</body>
</html>
