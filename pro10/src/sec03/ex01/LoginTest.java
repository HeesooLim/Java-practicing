package sec03.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/login")
public class LoginTest extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException 
	{
//		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("user_name");
		String pw = request.getParameter("user_pw");
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>loginTest</title>");
		out.println("</head>");
		out.println("<body bgcolor='pink'>");
		out.println("<b>TestServlet2</b><br>");
		out.println("<b>NAME : "+ name + "</b><br>");
		out.println("<b>PW   : "+ pw +"</b><br>");
		out.println("</body>");
		out.println("</html>");
		out.close();
   }
	
	public void destroy()
	{
		System.out.println("[login] destroy method is called");
	}
}