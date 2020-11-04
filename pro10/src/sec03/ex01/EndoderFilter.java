package sec03.ex01;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

//@WebFilter("/*")
public class EndoderFilter implements Filter {
	
	ServletContext context;

	public void init(FilterConfig fConfig) 
	throws ServletException 
	{
		System.out.println("Incoding utf-8 . . .");
		context = fConfig.getServletContext();
	}
   

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
	throws IOException, ServletException 
	{
		System.out.println("doFilter is called");
		request.setCharacterEncoding("utf-8");
		
		String context = ((HttpServletRequest)request).getContextPath();
		String path = ((HttpServletRequest)request).getRequestURI();
		String realPath = request.getRealPath(path); 
		
		String msg = "CONTEXT : " + context
				 + "\nURI     : " + path
			     + "\nPATH    : " + realPath;
		
		System.out.println(msg);
		long begin = System.currentTimeMillis();
		
		chain.doFilter(request, response);
		
		long end = System.currentTimeMillis();
		System.out.println("Time taken : " + (end - begin) + "ms");
	}
	

	public void destroy() {
		System.out.println("Destroy method is called");
	}



}
