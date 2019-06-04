package common.servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 2008-05-01
 * @author dave
 * @version
 */
public class FileDownload extends HttpServlet {

	private String contentType = "application/x-msdownload";
	private String enc = "utf-8";
	private String fileRoot = "";


	/**
	 * ��ʼ��contentType��enc��fileRoot
	 */
	public void init(ServletConfig config) throws ServletException {
		String tempStr = config.getInitParameter("contentType");
		if (tempStr != null && !tempStr.equals("")) {
			contentType = tempStr;
		}
		tempStr = config.getInitParameter("enc");
		if (tempStr != null && !tempStr.equals("")) {
			enc = tempStr;
		}
		tempStr = config.getInitParameter("fileRoot");
		if (tempStr != null && !tempStr.equals("")) {
			fileRoot = tempStr;
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// path��ָ�����ص��ļ���·����
			//java.io.File.separator + "UploadFiles" + java.io.File.separator + name
			//File file = new File(request.getRealPath("/")+"/"+path);
			//File file = new File( getServletContext().getRealPath("/") + java.io.File.separator + "UploadFiles" + java.io.File.separator + path );

			String filepath = request.getParameter("fileName");
			String fullFilePath = fileRoot + filepath;
			System.out.println("------------fullFilePath="+fullFilePath);
			/*��ȡ�ļ�*/
			File file = new File(fullFilePath);

			/*����ļ�����*/
			if (file.exists()) {
				String filename = URLEncoder.encode(file.getName(), enc);
				response.reset();
				response.setContentType(contentType);
				response.addHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
				int fileLength = (int) file.length();
				response.setContentLength(fileLength);
				/*����ļ����ȴ���0*/
				if (fileLength != 0) {
					/*����������*/
					InputStream inStream = new FileInputStream(file);
					byte[] buf = new byte[4096];
					/*���������*/
					ServletOutputStream servletOS = response.getOutputStream();
					int readLength;
					while (((readLength = inStream.read(buf)) != -1)) {
						servletOS.write(buf, 0, readLength);
					}
					inStream.close();
					servletOS.flush();
					servletOS.close();
				}
			} //end file exists
			else{		
				ServletOutputStream servletOS = response.getOutputStream();
				servletOS.write("�Բ�����Ҫ���ص��ļ������ڣ����ڹ���Ա��ϵ��".getBytes());
				System.out.println("------���������ļ�����ΪҪ���ص��ļ������ڣ�------filename="+filepath);
			}
		} //end try;
		catch(Exception e){
			System.out.println("------�����ļ������������ļ���������ɵģ�error="+e);
			e.printStackTrace();
		}
	} //end method
}