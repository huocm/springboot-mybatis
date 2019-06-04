package common.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 * @author davexin
 * @see
 * Servlet implementation class for Servlet: CounterListener
 *
 * @web.servlet
 *   name="CounterListener"
 *   display-name="CounterListener" 
 *
 * @web.servlet-mapping
 *   url-pattern="/CounterListener"
 *  
 */
 public class CounterListener implements HttpSessionListener {

	private static int counter = 0; 
	 
	public void sessionCreated(HttpSessionEvent arg0) {
		counter ++;		
		System.out.println("------------CounterListener ������ sessionCreated counter="+counter +"-----"+arg0.toString());
	}

	public void sessionDestroyed(HttpSessionEvent arg0) {
		counter --;		
		System.out.println("------------CounterListener ������ sessionDestroyed counter="+counter+"-----"+arg0.toString());
	}
    
	public static int getCounter(){
		return counter;
	}
	
	public static void reset(){
		counter=0;
	}
}