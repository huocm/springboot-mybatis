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
<title>��֤������ҳ��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
<META HTTP-EQUIV="Expires" CONTENT="0"> 
</head>
<body>
<% 
	//�������������2�д��룬����ֹ���response.getOutputStream()�׳� IllegalStateException �쳣 
	out.clear(); 
	out = pageContext.pushBody(); 
 
try{ 
 
   String SEPARATOR = System.getProperty("file.separator"); //ϵͳ�ָ��� 
   String filePath = System.getProperty("user.dir"); 
   out.println(filePath); 
   //String fileName = "E:\\Tomcat\\T5.5\\bin\\�������ǿ��ҵ���α�.xls"; //"�������ǿ��ҵ���α�.xls"; 
   String fileName = "�������ǿ��ҵ���α�.xls"; 
    
    
   File downfile = new File(filePath+ SEPARATOR + fileName); 
   
			String sheetName = "�й�";	//�˴���bug��������ʾ����	��Ӣ��sheet����û������
			String[] header ={"��1�б�ͷ","��2�б�ͷ","��3�б�ͷ","��4�б�ͷ","��5�б�ͷ","��6�б�ͷ","��7�б�ͷ"};  			
			//����һ��list��ÿ�����ݻ���һ��sublist
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
   /** HttpServletResponse����addHeader()����,ǿ�Ƶ���һ�����ؿ򣬶�������: Ҫ��ӵ� HTTPͷ����, ͷ���ַ��� */ 
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
    
   /** ɾ��"ͳ��.xls";�ļ� */ 
   //downfile.delete(); 
    
  } catch (Exception ex3) { 
   out.println(ex3); 
   ex3.printStackTrace(); 
  } 
 
 
 
 
 %>

<br></body>
</html>
