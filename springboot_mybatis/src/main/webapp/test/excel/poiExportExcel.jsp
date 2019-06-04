<%@ page contentType="text/html;charset=gb2312" %>

<%@ page import="java.io.*,java.util.*" %>
<%@ page import="com.common.utils.*" %>
<%@ page import="javax.swing.JOptionPane" %>

<%!
public String toUtf8String(String s) {
        StringBuffer sb = new StringBuffer();
        for (int i=0;i<s.length();i++) {
            char c = s.charAt(i);
            if (c >= 0 && c <= 255) {
                sb.append(c);
            } else {
                byte[] b;
                try {
                    b = Character.toString(c).getBytes("utf-8");
                } catch (Exception ex) {
                    System.out.println(ex);
                    b = new byte[0];
                }
                for (int j = 0; j < b.length; j++) {
                    int k = b[j];
                    if (k < 0) k += 256;
                    sb.append("%" + Integer.toHexString(k).
                    toUpperCase());
                }
            }
        }
        return sb.toString();
    }

 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>认证码输入页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
<META HTTP-EQUIV="Expires" CONTENT="0"> 
</head>
<body>
<% 
	//如果不加入如下2行代码，会出现关于response.getOutputStream()抛出 IllegalStateException 异常 
	out.clear(); 
	out = pageContext.pushBody(); 
 
try{ 
 
   String SEPARATOR = System.getProperty("file.separator"); //系统分隔符 
   String filePath = System.getProperty("user.dir"); 
   out.println(filePath); 
   //String fileName = "E:\\Tomcat\\T5.5\\bin\\世界五百强企业名次表.xls"; //"世界五百强企业名次表.xls"; 
   String fileName = "世界五百强企业名次表.xls"; 
    
    
   File downfile = new File(filePath+ SEPARATOR + fileName); 
   
			String sheetName = "中国";	//此处有bug，中文显示乱码	，英文sheet名字没有问题
			String[] header ={"第1列表头","第2列表头","第3列表头","第4列表头","第5列表头","第6列表头","第7列表头"};  			
			//构造一个list，每个内容还是一个sublist
			List list = new ArrayList();
			for(int i=0;i<7;i++){
				List subList = new ArrayList();
				for(int j=0;j<7;j++){
					subList.add("test"+ i +"-"+ j);
				}
				list.add(subList);
			}
			
			System.out.println(sheetName);
			System.out.println(fileName);
			System.out.println(header);
			System.out.println(list);
			
			PoiUtil pd = new PoiUtil(header, sheetName, fileName, list, null);   
			pd.createExcel();
    
   response.setContentType("application/x-msdownload"); 
   /** HttpServletResponse对象addHeader()方法,强制弹出一个下载框，二个参数: 要添加的 HTTP头名称, 头中字符串 */ 
   response.addHeader("Content-Disposition", "attachment;filename=" + toUtf8String(fileName) + ".xls"); 
   FileInputStream finput = new FileInputStream(downfile); 
   OutputStream output = response.getOutputStream(); 
   BufferedInputStream buffin = new BufferedInputStream(finput); 
   BufferedOutputStream buffout = new BufferedOutputStream(output); 
   byte[] buffer = new byte[4096]; 
   int count = 0; 
   while ((count = buffin.read(buffer, 0, buffer.length)) > 0) { 
   		buffout.write(buffer, 0, count); 
   } 
   buffin.close(); 
   buffout.close(); 
   finput.close(); 
   output.close(); 
    
   /** 删除"统计.xls";文件 */ 
   //downfile.delete(); 
    
  } catch (Exception ex3) { 
   out.println(ex3); 
   ex3.printStackTrace(); 
  } 
 
 
 
 
 %>

<br></body>
</html>
