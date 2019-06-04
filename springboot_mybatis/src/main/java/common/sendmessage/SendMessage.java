/*
 * ��  �ܣ� 
 * �ļ�����SendMessage.java
 * ��  ����
 * [�������]
 * Version   �����         ����              ����           �������
 * -----------------------------------------------------------------------------
 * V1.00     2014-7-21    dave        dave          create
 * -----------------------------------------------------------------------------
 * Copyright (c) 2014 dave  All Rights Reserved.
 */

package common.sendmessage;

import java.io.BufferedReader;  
import java.io.IOException;  
import java.io.InputStream;  
import java.io.InputStreamReader;  
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;  
import java.net.URL;  
import java.util.Date;

/**
 * �๦�ܣ�
 * <p>
 * <a href="SendMessage.java.html"><i>View Source</i></a>
 * </p>
 * @author <a href="mailto:dave@dave.com">dave</a>
 * @version Revision: 1.0  Date: 2014-7-21 ����08:28:55 
 */

public class SendMessage {

	private static String url = "http://admin.sms9.net/houtai/sms.php";
	private static String cpid = "7630"; //"jincheng"; //�û�id��7630
	/**
	 * ͨ��id��5203 ���ƣ���ҵͨ��(�������) �۸�7.00��
       ͨ��id��11319 ���ƣ�Ӫ��ͨ�� �۸�21.00��
	 */
	private static String channelid="5203";
	private String stimestamp = System.currentTimeMillis()/1000 +"";  //��ǰ�� UNIX ʱ���
	/**
	 * Md5���ܺ���ַ�����md5(password_timestamp_topsky)
       ע�� passwordΪ���룬timestamp�ǵ�ǰ��UNIXʱ���(��ȷ����)�����»��ߺ�topsky����һ���ַ�������md5����
       ʾ�������赱ǰʱ���Ϊ1406642263������Ϊ123456�����ַ�����123456_1406642263_topsky������md5���ܵõ�����3c6bcd260c3def0fcc5108ef01dc99e1
	 */
	private static String password = "18657171137"; //md5(password_timestamp_topsky) b9887c5ebb23ebb294acab183ecf0769
	private static String LJF = "&";
	private String msg=""; //��Ϣ����(ÿ70����Ϊ1�����ţ�ϵͳ�Զ���֣�����������ʹ��gbk��ʽ��urlencode������ʽ)
	private String tele="";
	private String sendtime=""; //�˱�������û��

	/**
	 *�ӹ����ŷ���url�ַ���
	 *http://admin.sms9.net/houtai/sms.php
	 *?cpid=7630
	 *&password=b299621d1cf9119e769735a5e91f1ace
	 *          ========  3b75d0c408c0a108d655f6523e5c6d98
	 *&channelid=1
	 *&tele=13800138000,13101234567
	 *&msg=testcontent
	 *&timestamp=1406551867
	 * ���ؽ����
       ������ͳɹ����򷵻أ�success:���η��Ͷ��ű��
       �������ʧ�ܣ��򷵻أ�error:��������
       ��������:���ݲ�������=-1  �û�id���������=-2 ͨ��id����=-3 �ֻ��������=-4 �������ݴ���=-5 �������=-6 
                             ��ip����=-7 δ��ǩ��=-8 ǩ����������=-9 ͨ����ͣ=-10 ��ʱ���ֹ����=-11 
                             ʱ�������=-12 �����쳣=-13 ���ͱ�����=-14
       ���Ͷ���ʾ���� (��ע����д��Ӧ��channelid�������ɫ�����Ѿ��������õ�channelid)
	 */
	public String makeUrl(String tele, String msg){
		String surl ="";
		surl = url + "?cpid="+cpid +"&password="+ md5Password( password ) +"&channelid="+ channelid;
		surl = surl + "&tele=" + tele  + "&msg=" + encodeMsg( msg ) + "&timestamp=" + stimestamp ; //System.currentTimeMillis();
		System.out.println(surl); 
		return surl;
	}

	//md5(password_timestamp_topsky)
	private String md5Password(String password){
		String ret = MD5Util.string2MD5(password+"_" + stimestamp + "_topsky"  );
		System.out.println("------���ܺ��pwd="+ret);
		return ret;
	}
	
	private String encodeMsg(String msg){
		String ret = null;
		try {
			ret = java.net.URLEncoder.encode(msg,"GBK");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return ret;
	}
	
	/**
	 * ����url�����÷���
	 * @author dave
	 * @date 2014-7-21
	 * sendMessage ����
	 * @param urladdress
	 * @return
	 */
	public String sendMessage(String urladdress) { 
		StringBuffer retmess= new StringBuffer();
		
		try {  
			// ����һ������  
			URL url = new URL(urladdress);  
			// URL�����openStream() �������ص���һ��InputStream������  
			InputStream is = url.openStream();  

			/* 
			 * ��ȡ����������ת����ΪBufferedReader, ����BufferedReader��rendLine()������������ 
			 */  
			InputStreamReader isr = new InputStreamReader(is);  
			BufferedReader bf = new BufferedReader(isr);  
			String str;  
			while ((str = bf.readLine()) != null) {  
				retmess.append(str);
				System.out.println(str);  
			}  
			isr.close();


		} catch (MalformedURLException e) {  
			e.printStackTrace();  
		} catch (IOException e) {  
			e.printStackTrace();  
		}finally{
			
		}
		
		return retmess.toString();
	}  
	
	/**
	 * @author dave
	 * @date 2014-7-21
	 * main ����
	 * @param args
	 */

	public static void main(String[] args) {  
	    //String url = "http://api.sms.cn";
		//sendMessage(url);
	    //url = "http://www.sina.com";
		//sendMessage(url);
		SendMessage sm = new SendMessage();
		sm.sendMessage( sm.makeUrl("18018695571","���Զ��ŷ��ͣ�") );		
		//System.out.println("��ȡϵͳ����������1��"+Long.toString(new Date().getTime()));
        //System.out.println("��ȡϵͳ����������2��"+Long.toString(System.currentTimeMillis()));
		
		
	}
}  
