package common.servlet;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

public class AttributeListener implements HttpSessionAttributeListener {

	//private static List users = null;
	private static Map users = null;	
	public void attributeAdded(HttpSessionBindingEvent arg0) {
	
		if(users == null){
			users = new HashMap();			
		}
		//�˴� user ��Ӧ����session������==user
		if(arg0.getName().equals(ServletConstants.SESSIONNAME)){
			System.out.println("------------AttributeListener ������ attributeAdded ="+arg0.getName()+"-------"+ arg0.getValue()+"    ------------");
			System.out.println("------------AttributeListener add ������ valueUnbound="+arg0.getSession().getId());
			if(!users.containsKey(arg0.getSession().getId())){
				users.put(arg0.getSession().getId(), arg0.getValue());
			}
			
		}
	}

	public void attributeRemoved(HttpSessionBindingEvent arg0) {
		if(users == null){
			users = new HashMap();				
		}
		//�˴� user ��Ӧ����session������==user
		if(arg0.getName().equals(ServletConstants.SESSIONNAME)){
			System.out.println("------------AttributeListener ������ attributeRemoved ="+arg0.getName()+"-------"+ arg0.getValue()+"    ------------");		
			System.out.println("------------AttributeListener remove ������ attributeRemoved="+arg0.getSession().getId());
			users.remove(arg0.getSession().getId());
		}
	}

	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		if(users == null){
			users = new HashMap();				
		}
		//����ɾ��ԭ����ֵ;
		//�˴� user ��Ӧ����session������==user
		if(arg0.getName().equals(ServletConstants.SESSIONNAME)){
			System.out.println("------------AttributeListener ������ attributeRemoved ="+arg0.getName()+"-------"+ arg0.getValue()+"    ------------");	
			System.out.println("------------AttributeListener ������ attributeRemoved="+arg0.getSession().getId());
			users.remove(arg0.getSession().getId());
		}
		
		//Ȼ���ټ�����ֵ��
		//System.out.println("------------AttributeListener ������ attributeAdded ="+arg0.getName()+"-------"+ arg0.getValue()+"    ------------");		
		//�˴� user ��Ӧ����session������==user
		if(arg0.getName().equals(ServletConstants.SESSIONNAME)){
			System.out.println("------------AttributeListener ������ attributeAdded ="+arg0.getName()+"-------"+ arg0.getValue()+"    ------------");
			System.out.println("------------AttributeListener ������ attributeReplaced valueUnbound="+arg0.getSession().getId());
			if(!users.containsKey(arg0.getSession().getId())){
				users.put(arg0.getSession().getId(), arg0.getValue());
			}
			
		}
		

	} 

	public static Map getOnlineUsers(){
		
		return users;
	}
	
	public static void reset(){
		if(users!=null&&!users.isEmpty()){
			users.clear();
		}

	}
	
}
