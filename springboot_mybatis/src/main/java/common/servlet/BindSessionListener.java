package common.servlet;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class BindSessionListener implements HttpSessionBindingListener{

  
	public void valueBound(HttpSessionBindingEvent se){
		System.out.println("bvalueBound:"+se.getName()+"-->"+se.getValue());   
	}   

	public void valueUnbound(HttpSessionBindingEvent se){   
		System.out.println("bvalueUnbound:"+se.getName()+"-->"+se.getValue());   
	}   
} 