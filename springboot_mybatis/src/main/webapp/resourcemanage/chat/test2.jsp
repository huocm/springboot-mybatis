<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" import="java.net.URLEncoder"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会议监控</title>

<link href="/css/bg1.css" rel="stylesheet" type="text/css" />
<link href="/css/left.css" rel="stylesheet" type="text/css" />
<link href="/css/right.css" rel="stylesheet" type="text/css" />
<link href="/css/table.css" rel="stylesheet" type="text/css" />

<script language="JavaScript" type="text/JavaScript">

 
      var XMLHttpReq = false;
         //创建XMLHttpRequest对象
         function createXMLHttpRequest(){
             if(window.XMLHttpRequest){   //Mozilla浏览器
                 XMLHttpReq = new XMLHttpRequest();
             }
             else if(window.ActiveXObject){          //IE浏览器
                 try{
                     XMLHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
                 }catch(e){
                     try{
                         XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
                     }catch(e){}
                 }
             }
         }
         //发送请求函数
         function sendRequest(){
             var url="<%=request.getContextPath()%>/control!conf_control.action";
             createXMLHttpRequest(); //调用创建对象方法
             XMLHttpReq.open("post",url,true);
             XMLHttpReq.onreadystatechange = processResponse;//指定响应函数 调用
             XMLHttpReq.setRequestHeader("If-Modified-Since","0"); 
             XMLHttpReq.send(null);//发送请求
         }
         //处理返回信息函数
         function processResponse(){
             if(XMLHttpReq.readyState==4){//代表服务器已经传回所有的信息，可以处理了
                 if(XMLHttpReq.status==200){   //信息已经成功返回,开始处理信息
                     updateTable();
                     setInterval("sendRequest()",3000);   //三秒一刷新
                 }else   //页面不正常
                     window.alert("您所请求的页面有异常...");
             }
             
         }

         

        //更新table的内容
         function updateTable(){ 
                //清除表格
          clearTable();
             var confs=XMLHttpReq.responseXML.getElementsByTagName("conf"); 
             var table=document.getElementById("confTable");
             for(var i=0;i<confs.length;i++){           
               var id = i+1; //得一个序号
               var confName  =  confs[i].selectSingleNode("confName").text;//取结点里的数据 
                  var confTopic  =  confs[i].selectSingleNode("confTopic").text;
                  var createTime =  confs[i].selectSingleNode("createTime").text; 
                  var beginTime  =  confs[i].selectSingleNode("beginTime").text;
                  var endTime    =  confs[i].selectSingleNode("endTime").text;
                  var confSize   =  confs[i].selectSingleNode("confSize").text;  
                  
                  var row = table.insertRow(i+1);
                  var cellId = row.insertCell(0);
                  cellId.innerHTML = id;
                //  var cellConfName = row.insertCell(1);
               //   cellConfName.innerHTML = confName;
                  var cellConfTopic = row.insertCell(1);
                  cellConfTopic.innerHTML = confTopic; 
                  var cellBeginTime = row.insertCell(2);
                  cellBeginTime.innerHTML = beginTime;
                  var cellendTime = row.insertCell(3);
                  cellendTime.innerHTML = endTime;
                  var cellCreateTime = row.insertCell(4);
                  cellCreateTime.innerHTML = createTime;
                  var cellconfSize = row.insertCell(5);
                  cellconfSize.innerHTML = confSize;
                  var cellControll = row.insertCell(6);
                  cellControll.innerHTML = "<a href=/"#/">会议开始</a>";
                  var cellconfOver = row.insertCell(7);
                  cellconfOver.innerHTML = "<a href=/"#/">会议结束</a>";
                 
            }   
         }
          
                          //清除表格内容
         function clearTable(){
             var table=document.getElementById("confTable");
             for(var i=table.rows.length-1;i>0;i--)
             {
                 table.deleteRow(i);
             }
         }
     </script>
  
  
 <SCRIPT type="text/javascript">

  function conf_party_control()
     {
             window.location.href="<%=request.getContextPath()%>/confcontrol/conf_party_control.jsp";
   }
  function control_over()
      {
   window.location.href="<%=request.getContextPath()%>/control!control_over.action";         
    }    
      
 </SCRIPT>
</head>
<body onload="sendRequest()"> 
 
   
<table cellpadding="0" cellspacing="0" width="100%" height="100%">
 <tr> 
        <td width="10" bgcolor="#FFFFFF"></td>
             <td id="right" valign="top">
      <%//@include file="/time.jsp" %>
      <div id="main">
       <h2><img src="<%=request.getContextPath()%>/img/right5.gif" width="20" height="20" border="0" />查询</h2> 
      <table cellpadding="0" cellspacing="0" id="confTable">
        <tr>
          <th>序号</th> 
          <th>会议主题</th>
          <th>会议召开时间</th>
          <th>会议结束时间</th>
          <th>会议预约时间</th>
          <th>参加人数</th> 
          <th colspan="2">操作</th>  
        </tr> 
      </table> 
   </div> 
       </td>
       <td width="10" bgcolor="#FFFFFF"></td>
  </tr>
</table>
<div id="footer">Copyright©xxxx-xxxx  All rights reserved.</div>
</body>
</html>