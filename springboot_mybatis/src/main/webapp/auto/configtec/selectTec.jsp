<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎使用freedom代码自动生成系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body> 
<form method="post" action="<%=basePath%>auto/configtec/selectTecSave.jsp" name="form1">
<table width="100%" height="30" cellspacing="0" cellpadding="0" border="0" bgcolor="" align="center">
	<tr>
		<td colspan="2" align="center">&nbsp;<font color="bule" size="6">选择你想使用的技术</font></td>
    </tr>
	<tr><td colspan="2"  align="center"><input type="submit" value="保存" name="tj">&nbsp;   <input name="重置" type="reset" value="重置"></td></tr>
	<tr>
		<td>view层</td>
		<td ><input type="radio" value="struts2" name="viewDialiect" checked>struts2 &nbsp;<input type="radio" value="spring" name="viewDialiect">spring
		</td>
	</tr>
	<tr>
		<td width="10%">持久层</td>
		<td width="90%" ><input type="radio" value="ibatis" name="daoDialiect" checked>ibatis(use spring) &nbsp;<input type="radio" value="ibatis2" name="daoDialiect">ibatis2( no use spring)
		 &nbsp;<input type="radio" value="hibernate" name="daoDialiect">hibernate3(use spring)&nbsp;<input type="radio" value="mydao" name="daoDialiect">mydao
		</td>
    </tr>
    <!-- <tr>
		<td width="10%" height="30">ejb3</td>
		<td width="90%" ><input type="radio" value="1" name="ejb3">使用ejb3&nbsp;<input type="radio" value="0" name="ejb3">不使用ejb3</td>
    </tr> -->
    <tr>
    	<td colspan="2">        
        Spring view层包结构:
    	<p>formPackage:<input type="hidden" value="com.demo.web.spring.form" name="formPackage" size="50"></p>
    	<p>controllerPackage:<input type="hidden" value="com.demo.web.spring" name="controllerPackage" size="50"></p>
    	<p>prefix:<input type="hidden" value="jsp/" name="prefix" size="50"></p>    	
    	<p>suffix:<input type="hidden" value=".jsp" name="suffix" size="50"></p>
    	
    	Struts2 view层包结构:
    	<p>actionPackage:<input type="hidden" value="com.demo.web.struts2" name="actionPackage" size="50"></p>
    	
    	业务层及持久层包结构
    	<p>domainPackage:<input type="hidden" value="com.demo.domain" name="domainPackage" size="50"></p>
    	<p>daoPackage:<input type="hidden" value="com.demo.dao" name="daoPackage" size="50"></p>    	
    	<p>daoImplPackage:<input type="hidden" value="com.demo.dao.impl" name="daoImplPackage" size="50"></p>
    	<p>servicePackage:<input type="hidden" value="com.demo.service" name="servicePackage" size="50"></p>
    	<p>serviceImplPackage:<input type="hidden" value="com.demo.service.impl" name="serviceImplPackage" size="50"></p>
        <p>hibernateHbmXmlDir:<input type="hidden" value=com/demo/domain name="hibernateHbmXmlDir" size="50"></p>
        <p>sqlMapsDir:<input type="hidden" value="com/demo/dao/impl/maps" name="sqlMapsDir" size="50"></p>
        
        test部分包结构:
    	<p>testsPackage:<input type="hidden" value="tests.struts2" name="testsPackage" size="50"></p>
    	<p>testsDaoPackage:<input type="hidden" value="tests.dao" name="testsDaoPackage" size="50"></p>   	
    	<p>testsServicePackage:<input type="hidden" value="tests.service" name="testsServicePackage" size="50"></p>
    	
    	文件目录结构
    	<p>webDir:<input type="hidden" value="" name="webDir" size="50"></p>
    	<p>jspDir:<input type="hidden" value="jsp/" name="jspDir" size="50"></p>
    	<p>webXmlDir<input type="hidden" value="WEB-INF/" name="webXmlDir" size="50"></p>
    	<p>applicationContextXmlDir:<input type="hidden" value="WEB-INF/classes" name="applicationContextXmlDir" size="50"></p>   	
    	<p>mvcServletXmlDir:<input type="hidden" value="WEB-INF/classes" name="mvcServletXmlDir" size="50"></p>
    	<p>configDir:<input type="hidden" value="WEB-INF/classes" name="configDir" size="50"></p>
 
     	<p>companyDir:<input type="hidden" value="WEB-INF/src/com/demo/" name="companyDir" size="50"></p>
    	<!-- <p>testsDir:<input type="hidden" value="src/tests/spring/controller" name="testsDir" size="50"></p> -->
    	<p>testsDir<input type="hidden" value="WEB-INF/src/tests/struts2" name="testsDir" size="50">或者src/tests/spring/controller</p>
    	<p>testsServiceDir:<input type="hidden" value="WEB-INF/src/tests/service" name="testsServiceDir" size="50"></p>
    	<p>testsDaoDir:<input type="hidden" value="WEB-INF/src/tests/dao" name="testsDaoDir" size="50"></p>
  	    	    	    	
    	</td>
    </tr>
	<tr><td colspan="2"  align="center"><input type="submit" value="保存" name="tj">&nbsp;   <input name="重置" type="reset" value="重置"></td></tr>

</table> 

</form> 
</body>
</html>
