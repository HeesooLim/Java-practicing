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

//@WebServlet("/set")
public class SetAttribute extends HttpServlet
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException 
	{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		ServletContext context = getServletContext();
		HttpSession session = request.getSession();
		
		context.setAttribute("context", "Binding to context");
		session.setAttribute("session", "Binding to session");
		request.setAttribute("request", "Binding to request");
		out.print("binding . . .");
   }
	
	public void destroy()
	{
		System.out.println("[login] destroy method is called");
	}
}