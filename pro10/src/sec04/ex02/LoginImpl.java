package sec04.ex02;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class LoginImpl implements HttpSessionListener {

	String user_id;
	String user_pw;
	static int total_user = 0;
	
	public LoginImpl()
	{
		
	}
	
	public LoginImpl(String user_id, String user_pw)
	{
		this.user_id = user_id;
		this.user_pw = user_pw;
	}
	
	@Override
	public void sessionCreated(HttpSessionEvent arg0)
	{
		System.out.println("Session created");
		++total_user;
	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent arg0)
	{
		System.out.println("Session destroyed");
		--total_user;
	}
	
}
