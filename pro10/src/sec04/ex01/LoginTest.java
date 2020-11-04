package sec04.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet("/login")
public class LoginTest extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException 
	{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		LoginImpl user = new LoginImpl(id, pw);
		if(session.isNew())
		{
			session.setAttribute("loginUser", user);
		}
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>loginTest</title>");
		out.println("<script type='test/javascript'>");
		out.println("setTimeout('history.go(0);', 5000)");
		out.println("</script>");
		out.println("</head>");
		out.println("<body bgcolor='pink'>");
		out.println("<b>LoginTest</b><br>");
		out.println("<b>ID     : "+ user.user_id + "</b><br>");
		out.println("<b>Number : "+ LoginImpl.total_user +"</b><br>");
		out.println("</body>");
		out.println("</html>");
		out.close();
   }
	
	public void destroy()
	{
		System.out.println("[login] destroy method is called");
	}
}