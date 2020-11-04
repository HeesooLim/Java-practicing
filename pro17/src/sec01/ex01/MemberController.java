package sec01.ex01;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mem.do")
public class MemberController extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	MemberDAO memberDAO;
	
	public void init() throws ServletException
	{
		memberDAO = new MemberDAO();
	}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
	throws ServletException, IOException
	{
		doHandle(req, res);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
	throws ServletException, IOException
	{
		doHandle(req, res);
	}
	
	private void doHandle(HttpServletRequest req, HttpServletResponse res)
	throws ServletException, IOException
	{
		res.setContentType("text/html; charset=utf-8");
		List<MemberVO> memberList = memberDAO.listMembers();
		req.setAttribute("memberList", memberList);
		RequestDispatcher dispatch = req.getRequestDispatcher("/test01/listMembers.jsp");
		dispatch.forward(req, res);
	}
}
