package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet("/get")
public class GetAttribute extends HttpServlet
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException 
	{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		ServletContext context = getServletContext();
		HttpSession session = request.getSession();
		
		String contextMsg = (String)context.getAttribute("context");
		String sessionMsg = (String)session.getAttribute("session");
		String requestMsg = (String)request.getAttribute("request");
		
		out.print("CONTEXT : " + contextMsg + "<br>");
		out.print("SESSION : " + sessionMsg + "<br>");
		out.print("REQUEST : " + requestMsg + "<br>");
   }
	
	public void destroy()
	{
		System.out.println("[login] destroy method is called");
	}
}