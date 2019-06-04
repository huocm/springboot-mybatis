<%@ page language="java" import="java.util.*, auto.creat.*" pageEncoding="GBK"%>
<%@ page import="auto.db.DB, auto.vo.*, java.sql.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    <title>欢迎使用代码自动生成系统</title>
  </head>
  
  <body> 
<form method="post" action="<%=basePath%>auto/" name="form1">
<p align="center"><font size="6">第三步，共三步</font></p>
<%

String[] tableNameVlaues = request.getParameterValues("tableNames");
//out.println("<br>--------------tableNameVlaues="+ tableNameVlaues.length +"-----"+tableNameVlaues+"-------");

//String[] columVlaues = request.getParameterValues("columNames");
//out.println("<br>--------------columVlaues="+ columVlaues.length +"-------");
int i= 0;

while(i<tableNameVlaues.length){
    
     String tableName =tableNameVlaues[i] ;
     out.println("<br>--------------tableName="+ tableName +"-------");
       i++;  
    Connection conn = DB.getConnnection("com.ibm.db2.jcc.DB2Driver", "jdbc:db2://127.0.0.1:50000/hncbank", "db2admin", "db2admin");
    List listColum = null; //DB.getTableInfo(conn , tableName);
    Iterator itColum = listColum.iterator();
    
    
    List columnNamesList = new ArrayList();
    List columnTypesList = new ArrayList();

    StringBuffer sbTableColumName = new StringBuffer();
    StringBuffer sbTableColumType = new StringBuffer();
    TableVO vo = null;
    
    while(itColum.hasNext()){
          vo = (TableVO)itColum.next();
          sbTableColumName.append(tableName+"_"+vo.getColumName()+";");
          sbTableColumType.append(tableName+"_"+vo.getColumTypeName()+";");
          columnNamesList.add(vo.getColumName());
          columnTypesList.add(vo.getColumTypeName());
          
     }  
     
     //CreatFileFactory f = new CreatFileFactory();
     //f.creatAddView(tableName, columnNamesList, null );
       
     //for(int j=0;j<columVlaues.length; j++){
     //    if( columVlaues[j].indexOf(tableName)!=-1 ){
     //           out.println("<br>--------------columVlaues["+j+"]="+ columVlaues[j] +"-------");
     //           map.put(columVlaues[j].substring(0, columVlaues[j].indexOf(";")-1), columVlaues[j].substring(columVlaues[j].indexOf(";")+1));
     //                  
     //    }
     //}
   
    //按照首字母大写，其他自小写来定义类名字
	//String fileName = tableName.toUpperCase().substring(0,1) + tableName.toLowerCase().substring(1,tableName.length()-1);
	//String dir1 = Creater.creatDir("D:\\projectSource\\AutoCreatCode\\src\\com");
	//String dir2 = Creater.creatDir("D:\\projectSource\\AutoCreatCode\\src\\com\\freedom");
    //String dir = Creater.creatDir("D:\\projectSource\\AutoCreatCode\\src\\com\\freedom\\demo");
	//System.out.println("-------dir="+dir);
	//System.out.println("-------file="+Creater.creatFile( fileName+".java", dir));
	//System.out.println("-------file="+Creater.writeToFile(dir, fileName+".java", map ));    

}

//Enumeration en = request.getParameterNames();
//while(en.hasMoreElements()){
//      String paras = (String)en.nextElement();
//      //out.println("<br>-------paras="+ paras +"-------");  
//      if(paras.indexOf("tableName")!=-1){     
//          //out.println("<br>-------tableName="+request.getParameter(paras) +"-------");  
//      }
//}

//out.println("<br>--------------path="+request.getContextPath()+"-------");
//out.println("<br>--------------rootPath="+this.getClass().getResource("/").getPath()+"-------");

%>

</form> 
</body>
</html>
