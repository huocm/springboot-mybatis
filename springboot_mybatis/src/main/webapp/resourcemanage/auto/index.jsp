<%@ page language="java" contentType="text/html;charset=GBK" pageEncoding="GBK" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>Framework</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>

<style type="text/css">
.anylinkcss{
position:absolute;
visibility: hidden;
border:1px solid black;
border-bottom-width: 0;
font:normal 12px Verdana;
line-height: 18px;
z-index: 100;
background-color: #E9FECB;
width: 205px;
}

.anylinkcss a{
width: 100%;
display: block;
text-indent: 3px;
border-bottom: 1px solid black;
padding: 1px 0;
text-decoration: none;
font-weight: bold;
text-indent: 5px;
}

.anylinkcss a:hover{ /*hover background color*/
background-color: black;
color: white;
}

</style>
<script language="javascript">

var disappeardelay=250  //menu disappear speed onMouseout (in miliseconds)
var enableanchorlink=0 //Enable or disable the anchor link when clicked on? (1=e, 0=d)
var hidemenu_onclick=1 //hide menu when user clicks within menu? (1=yes, 0=no)

/////No further editting needed

var ie5=document.all
var ns6=document.getElementById&&!document.all

function getposOffset(what, offsettype){
var totaloffset=(offsettype=="left")? what.offsetLeft : what.offsetTop;
var parentEl=what.offsetParent;
while (parentEl!=null){
totaloffset=(offsettype=="left")? totaloffset+parentEl.offsetLeft : totaloffset+parentEl.offsetTop;
parentEl=parentEl.offsetParent;
}
return totaloffset;
}

function showhide(obj, e, visible, hidden){
if (ie5||ns6)
dropmenuobj.style.left=dropmenuobj.style.top=-500
if (e.type=="click" && obj.visibility==hidden || e.type=="mouseover")
obj.visibility=visible
else if (e.type=="click")
obj.visibility=hidden
}

function iecompattest(){
return (document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body
}

function clearbrowseredge(obj, whichedge){
var edgeoffset=0
if (whichedge=="rightedge"){
var windowedge=ie5 && !window.opera? iecompattest().scrollLeft+iecompattest().clientWidth-15 : window.pageXOffset+window.innerWidth-15
dropmenuobj.contentmeasure=dropmenuobj.offsetWidth
if (windowedge-dropmenuobj.x < dropmenuobj.contentmeasure)
edgeoffset=dropmenuobj.contentmeasure-obj.offsetWidth
}
else{
var windowedge=ie5 && !window.opera? iecompattest().scrollTop+iecompattest().clientHeight-15 : window.pageYOffset+window.innerHeight-18
dropmenuobj.contentmeasure=dropmenuobj.offsetHeight
if (windowedge-dropmenuobj.y < dropmenuobj.contentmeasure)
edgeoffset=dropmenuobj.contentmeasure+obj.offsetHeight
}
return edgeoffset
}

function dropdownmenu(obj, e, dropmenuID){
if (window.event) event.cancelBubble=true
else if (e.stopPropagation) e.stopPropagation()
if (typeof dropmenuobj!="undefined") //hide previous menu
dropmenuobj.style.visibility="hidden"
clearhidemenu()
if (ie5||ns6){
obj.onmouseout=delayhidemenu
dropmenuobj=document.getElementById(dropmenuID)
if (hidemenu_onclick) dropmenuobj.onclick=function(){dropmenuobj.style.visibility='hidden'}
dropmenuobj.onmouseover=clearhidemenu
dropmenuobj.onmouseout=ie5? function(){ dynamichide(event)} : function(event){ dynamichide(event)}
showhide(dropmenuobj.style, e, "visible", "hidden")
dropmenuobj.x=getposOffset(obj, "left")
dropmenuobj.y=getposOffset(obj, "top")
dropmenuobj.style.left=dropmenuobj.x-clearbrowseredge(obj, "rightedge")+"px"
dropmenuobj.style.top=dropmenuobj.y-clearbrowseredge(obj, "bottomedge")+obj.offsetHeight+"px"
}
return clickreturnvalue()
}

function clickreturnvalue(){
if ((ie5||ns6) && !enableanchorlink) return false
else return true
}

function contains_ns6(a, b) {
while (b.parentNode)
if ((b = b.parentNode) == a)
return true;
return false;
}

function dynamichide(e){
if (ie5&&!dropmenuobj.contains(e.toElement))
delayhidemenu()
else if (ns6&&e.currentTarget!= e.relatedTarget&& !contains_ns6(e.currentTarget, e.relatedTarget))
delayhidemenu()
}

function delayhidemenu(){
delayhide=setTimeout("dropmenuobj.style.visibility='hidden'",disappeardelay)
}

function clearhidemenu(){
if (typeof delayhide!="undefined")
clearTimeout(delayhide)
}
</script>

<body topmargn="0" leftmargn="0" bottommargin="0" leftmargin="0" marginheight="0" marginwidth="0" topmargin="0">
<table width="100%" border="0" bgcolor="#663399">
  <tbody><tr>
      <td height="120" ><font color="#FFFFFFF"  size="20" >Framework </font>&nbsp;<font size="4">&nbsp;&nbsp;&nbsp;
        <p align="right"><font color="#FFFFFFF">Struts2 Spring2 Ibatis2.3 Hibernate3 
          EJB3 Java1.5</font></p></td>
    </tr>
<tr>
      <td height="30" bgcolor="">
	  <hr align="center" width="100%" color="#FFFFFF">
	  
	  &nbsp;  
	    <!--第一个链接和菜单 -->	
        <a href="#" onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, 'anylinkmenu1')"><font color="white">数据库配置</font></a> 
        <div id="anylinkmenu1" class="anylinkcss" style="width: 120px; background-color: lightyellow1">
			<a href="configdb/selectDb.jsp"  target="main">选择数据库</a>
			<a href="configdb/viewDb.jsp" target="main">查看数据库配置</a>
			<a href="configdb/selectDb.jsp" target="main">更改数据库配置</a>
		</div>
        
		 <font color="#FFFFFFF" >&nbsp;&nbsp;|&nbsp;&nbsp;</font>
        <!--第二个链接和菜单 -->
		<a href="#" onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, 'anylinkmenu2')"><font color="white">技术配置 </font></a>                                                      
		<div id="anylinkmenu2" class="anylinkcss" style="width: 120px; background-color: lightyellow2">
			<a href="configtec/selectTec.jsp"  target="main">选择使用技术 </a>
			<a href="configtec/viewTec.jsp"  target="main">查看已配置技术 </a>
			<a href="configtec/selectTec.jsp"  target="main">修改使用技术 </a>
			<a href="configtec/selectTecAdv.jsp"  target="main">高级配置 </a>
			<a href="configtec/viewTecAll.jsp"  target="main">查看全部配置 </a>
		</div>
		 
         <font color="#FFFFFFF" >&nbsp;&nbsp;|&nbsp;&nbsp;</font>
		<!--第三个链接和菜单 -->
		 <a href="#" onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, 'anylinkmenu3')"><font color="white">代码生成 </font></a>                                                      
		<div id="anylinkmenu3" class="anylinkcss" style="width: 120px; background-color: lightyellow">
			<a href="creat/creat.jsp"  target="main">执行代码生成 </a>
			<a href="http://www.chinaz.com"  target="main">选择代码生成部分 </a>
			<a href="http://www.chinaz.com"  target="main">查看已配置代码 生成部分</a>
			<a href="http://www.chinaz.com"  target="main">修改代码 生成部分 </a>
		</div>
      
         <font color="#FFFFFFF" >&nbsp;&nbsp;|&nbsp;&nbsp;</font>
		<!--第四个链接和菜单 -->
		 <a href="#" onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, 'anylinkmenu4')"><font color="white">生成预览 </font></a>                                                      
		<div id="anylinkmenu4" class="anylinkcss" style="width: 120px; background-color: lightyellow">
			<a href="http://www.chinaz.com"  target="main">预览生成项目首页 </a>
			<a href="http://www.chinaz.com"  target="main">预览java类 </a>
			<a href="http://www.chinaz.com"  target="main">预览配置文件</a>
		   <a href="http://www.chinaz.com"  target="main">预览view层文件</a>
		</div>

         <font color="#FFFFFFF" >&nbsp;&nbsp;|&nbsp;&nbsp;</font>
		<!--第五个链接和菜单 -->
		 <a href="#" onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, 'anylinkmenu5')"><font color="white">帮助 </font></a>                                                      
         <div id="anylinkmenu5" class="anylinkcss" style="width: 120px; background-color: lightyellow">
		    <a href="http://www.chinaz.com"  target="main">帮助文档 </a>
			<a href="http://www.chinaz.com"  target="main">帮助邮箱 </a>
          </div>
		  
		  
	  <hr align="center" width="100%" color="#FFFFFF">
</td></tr>
<tr>
<td height="100%" bgcolor="#FFFFFF"><iframe name="main"  frameborder="0" height="500" width="100%"></iframe></td></tr>
</tbody></table>






</body>
</html>
