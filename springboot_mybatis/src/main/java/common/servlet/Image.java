package common.servlet;

import java.io.*;
import java.net.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.awt.*;
import java.awt.image.*;
import java.util.*;
import javax.imageio.*;

/**
 * 2008-05-01
 * @author dave
 * @version
 */
public class Image extends HttpServlet {

	/** Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
	 * @param request servlet request
	 * @param response servlet response
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		response.setContentType("image/jpeg");
		response.setHeader("Pragma","No-cache");
		response.setHeader("Cache-Control","no-cache");
		response.setDateHeader("Expires", 0);       
		HttpSession session=request.getSession();
		// ���ڴ��д���ͼ��
		int width=60, height=20;
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

		// ��ȡͼ��������
		Graphics g = image.getGraphics();

		//���������
		Random random = new Random();

		// �趨����ɫ
		g.setColor(getRandColor(200,250));
		g.fillRect(0, 0, width, height);

		//�趨����
		g.setFont(new Font("Times New Roman",Font.PLAIN,18));

		//���߿�
		//g.setColor(new Color());
		//g.drawRect(0,0,width-1,height-1);


		// �������155�������ߣ�ʹͼ���е���֤�벻�ױ���������̽�⵽
		g.setColor(getRandColor(160,200));
		for (int i=0;i<155;i++) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			int xl = random.nextInt(12);
			int yl = random.nextInt(12);
			g.drawLine(x,y,x+xl,y+yl);
		}

		// ȡ�����������֤��(4λ����)
		String sRand="";
		for (int i=0;i<4;i++){
			String rand=String.valueOf(random.nextInt(10));
			sRand+=rand;
			// ����֤����ʾ��ͼ����
			g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));//���ú�����������ɫ��ͬ����������Ϊ����̫�ӽ�������ֻ��ֱ������
			g.drawString(rand,13*i+6,16);
		}

		// ����֤�����SESSION
		session.setAttribute("rand",sRand);
		System.out.println("---------------servlet create rand="+sRand);
		// ͼ����Ч
		g.dispose();
		ServletOutputStream responseOutputStream =response.getOutputStream();
		// ���ͼ��ҳ��
		ImageIO.write(image, "JPEG", responseOutputStream);

		//���¹ر���������
		responseOutputStream.flush();
		responseOutputStream.close();
	}
	
	Color getRandColor(int fc,int bc){//������Χ��������ɫ
		Random random = new Random();
		if(fc>255) fc=255;
		if(bc>255) bc=255;
		int r=fc+random.nextInt(bc-fc);
		int g=fc+random.nextInt(bc-fc);
		int b=fc+random.nextInt(bc-fc);
		return new Color(r,g,b);
	}
	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	/** Handles the HTTP <code>GET</code> method.
	 * @param request servlet request
	 * @param response servlet response
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		processRequest(request, response);
	}

	/** Handles the HTTP <code>POST</code> method.
	 * @param request servlet request
	 * @param response servlet response
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		processRequest(request, response);
	}

	/** Returns a short description of the servlet.
	 */
	public String getServletInfo() {
		return "Short description";
	}

}

