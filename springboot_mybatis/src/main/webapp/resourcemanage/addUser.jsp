<%@ page contentType="text/html; charset=GBK" pageEncoding="GBK" import="java.util.*" language="java"  %>
<%@include file="../taglibs.jsp" %>
<%@ page import="com.xuka.domain.*" %>
<%@ page import="com.common.cache.*" %>
<c:set var="basePath" scope="request"
	value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />
<%
//对正常请求不做该项拦截
String referer = request.getHeader("Referer"); //此处拿不到，未知原因
if(referer == null||!referer.startsWith("http://"+request.getServerName())){
	System.out.println("---------IllegalRequestInterceptor拦截器 getRequestURL="+request.getRequestURL());
	System.out.println("---------IllegalRequestInterceptor拦截器 referer="+referer);
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
    //设置城市级联
	var st=document.all("t_user_detail.city");
	st.length=0;
	var t1=document.all("t_user_detail.province").value;
	for (var j=0, k=0; j<subcat.length; j++){ //j表示循环体的index，k表示下拉框的index
                if (subcat[j][2] == t1) {
                    st.options[k] = new Option(subcat[j][1], subcat[j][0]) ;
                    k++;
                }
      }
      changeJxs(t1);
 } //end function
 
function changeJxs(t1){
      //设置经销商级联，如果有该省的经销商，则只能选择本省的，如果本省没有经销商，则可以选择全部的经销商    
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
       //如果没有本省的经销商，则显示全部
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
 
function clearJxs(){//清除经销商
      var jxs = document.all("t_user_detail.parentid");
      while(jxs.childNodes.length>0){
          jxs.removeChild(jxs.childNodes[0]);
      }
}
</script>
<script language="javascript">
    var flag;
    var XMLHttpReq;
    //创建XMLHttpRequest对象       
    function createXMLHttpRequest() {
        if(window.XMLHttpRequest) { //Mozilla 浏览器
            XMLHttpReq = new XMLHttpRequest();
        }
        else if (window.ActiveXObject) { // IE浏览器
            try {
                XMLHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
            } catch (e) {
            try {
                XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {}
        }
    }
}
//发送请求函数
function sendRequest(url) {
    createXMLHttpRequest();
    XMLHttpReq.open("POST", url, true);
    XMLHttpReq.onreadystatechange = processResponse;//指定响应函数
    XMLHttpReq.send(null);  // 发送请求
}
// 处理返回信息函数
function processResponse() {
    if (XMLHttpReq.readyState == 4) { // 判断对象状态
        if (XMLHttpReq.status == 200) { // 信息已经成功返回，开始处理信息
            updateUno();
        } else { //页面不正常
             window.alert("您所请求的页面有异常。");
        }
   }
 }
//提交起始函数 
function getUno() {
    var dealerid = document.getElementById("dealerid").value;
    var myFile = document.getElementById("myFile").value;
    if(dealerid==""){
       alert("账号不能为空！"); 
       document.getElementById("dealerid").focus();
       return false;
    }
    if(myFile==""){
       alert("营业执照图片不能为空！"); 
       document.getElementById("myFile").focus();
       return false;
    } 
    clearOld();
    var url = "${basePath}CheckUserServlet?dealerid="+ dealerid;  
    //alert(url);
    sendRequest(url)
 } 

function updateUno() {
    var divTemp = document.getElementById("showTip");
    
    //var uno = document.getElementById("uno");
    var results = XMLHttpReq.responseXML.getElementsByTagName("name");
    //alert(results.length);
    for(var i = 0; i < results.length; i++) {   
        //uno.setAttribute("value", results[i].getAttribute("id"));
        //uno.setAttribute("value", results[i].firstChild.nodeValue);           
    }
    //判断能不能向该分区充值
    if(results.length==0){
    	 divTemp.innerHTML="<font color='green'>帐号不存在，可以注册！</font>"; 
    	 regform.target="_self";
         regform.submit(); 
       
    }else{ //如果返回结果长度为0，则不提交表单
       divTemp.innerHTML="<font color='red'>帐号已经存在！</font>"; 

    }
}
function clearOld() {
    var divTemp = document.getElementById("showTip");
    //首先把提示信息的地方设为空
    divTemp.innerHTML="";
}
</script>
<body>
&nbsp;&nbsp;<font color="red"><s:fielderror /><s:message/></font>
<s:form ="T_user_detailAdd." name="regform" enctype="multipart/form-data" theme="simple" >
  <table width="100%" id="right-tb" border="0" class="mytb01" align="center" cellpadding="0" cellspacing="0" style="margin-top: 0px;">
    <font color="gray">用户管理-->添加用户  </font>
    <tr>
		<td width="8%" align="center">帐号</td>
		<td width="38%"><s:textfield  id="dealerid" name="t_user_detail.dealerid" maxLength="6"/><font color="#FF0000">*</font>(请用纯数字，长度6位)<span id="showTip" ></span></td>
	    <td align="center">用户名称</td>
		<td><s:textfield name="t_user_detail.username"  maxlength="10"/><font color="#FF0000">*</font></td>
	</tr>
	<tr>
		<td align="center">密码</td>
		<td><s:password name="t_user_detail.password"  maxlength="10"/><font color="#FF0000">*</font>
		  (英文和数字,长度6-10位)</td>
		<td align="right">确认密码</td>
		<td><s:password name="t_user_detail.pwd1"  maxlength="10"/><font color="#FF0000">*</font></td>
	</tr>
    <tr> 
	  <td>省份</td>
	    <td><select name="t_user_detail.province"  onChange="javascript:ChangeCity();">
	       <script language="JavaScript">
            for(var i=subcat.length-1;i>0;i--){
				if(subcat[i-1][2]!=subcat[i][2])
            	document.write("<option value='"+subcat[i][2]+"'>"+subcat[i][3]+"</option>");
            }
            </script>
	      </select><font color="#FF0000">*</font>	    </td>
        <td align="right">城市</td>
		<td><select name="t_user_detail.city">
		    </select><font color="#FF0000">*</font>
		</td>
    </tr>
    <tr> 
      <td align="center">经销商</td>
      <td><select name='t_user_detail.parentid' ></select><font color="#FF0000">*</font></td>
      <td align="right">详细通讯地址</td>
      <td><s:textfield  size="20" name="t_user_detail.address"  maxlength="70"/><font color="#FF0000">*</font></td>
    </tr>
    <tr> 
      <td align="center">邮政编码</td>
      <td><s:textfield  size="20" name="t_user_detail.postalcode"  maxlength="6"/><font color="#FF0000">*</font></td>
      <td align="right">电话号码</td>
      <td><s:textfield  size="20" name="t_user_detail.phone"  maxlength="16"/><font color="#FF0000">*</font></td>
    </tr>
    <tr> 
      <td align="center">联系人</td>
      <td><s:textfield  size="20" name="t_user_detail.linkman"  maxlength="10"/><font color="#FF0000">*</font></td>
      <td align="right">手机号码</td>
      <td><s:textfield  size="20" name="t_user_detail.mobile"  maxlength="11"/><font color="#FF0000">*</font></td>
    </tr>

    <tr> 
      <td align="center">企业名称</td>
      <td><s:textfield  size="20"  name="t_user_detail.company"  maxlength="30"/><font color="#FF0000">*</font></td>
      <td align="right">企业营业执照注册号</td>
      <td><s:textfield  size="20" name="t_user_detail.license"  maxlength="50"/><font color="#FF0000">*</font></td>
    </tr>
    <tr> 
      <td align="center">网吧名称</td>
      <td><s:textfield  size="20" maxlength="20" name="t_user_detail.barname" /><font color="#FF0000">*</font></td>
      <td height="22" align="center">法人代表</td>
      <td><s:textfield  size="20" name="t_user_detail.corporation"  maxlength="10"/><font color="#FF0000">*</font></td>
    </tr>
    <s:hidden name="myFile" value=" "></s:hidden>
    <tr> 
	  <td width="14%" align="right">验证码</td>
      <td width="40%">&nbsp;<s:textfield  size="20" name="t_user_detail.safecode"  maxlength="4"/>
       <font color="#FF0000">*</font> &nbsp;<img border=0 src="${basePath}/Image">
      </td>
      <td align="right">电子邮件</td>
      <td><s:textfield  size="30" name="t_user_detail.email"  maxlength="20"/><font color="#FF0000">*</font></td>
      
    </tr>
	
  </table>
  <table id="right-tb-tb" >
  	<tr >
  		<td width="26%">&nbsp;</td> 
      <td align="center" width="45%">&nbsp;<font color='red'>${requestScope.typeError}</font> 
	   
	   <font color="red"><s:message/></font>&nbsp;&nbsp; <input name="query" type="button"  onClick="getUno()" value="添加用户">
	   <input type="button" value="返回"  onclick="javascript:history.go(-1);">
	  </td>
    </tr>
  </table>
</s:form>

</body>
</html>
