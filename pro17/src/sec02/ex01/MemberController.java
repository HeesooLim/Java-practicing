package sec02.ex01;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/member/*")
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
		String nextPage = null;
		res.setContentType("text/html; charset=utf-8");
		String action = req.getPathInfo();
		System.out.println("Action : " + action);
		
		if(action == null || action.equals("/listMembers.do"))
		{
			List<MemberVO> memberList = memberDAO.listMembers();
			req.setAttribute("memberList", memberList);
			nextPage = "/test02/listMembers.jsp";
		}
		else if(action.equals("/addMember.do"))
		{
			String id = req.getParameter("id");
			String pwd = req.getParameter("pwd");
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			
			MemberVO memberVO = new MemberVO(id, pwd, name, email);
			memberDAO.addMember(memberVO);
			
			System.out.println(id);
			System.out.println(pwd);
			System.out.println(name);
			System.out.println(email);
			
			nextPage = "/member/listMembers.do";
		}
		else if(action.contentEquals("/memberForm.do"))
		{
			nextPage = "/test02/memberForm.jsp";
		}
		else
		{
			List<MemberVO> memberList = memberDAO.listMembers();
			req.setAttribute("memberList", memberList);
			nextPage = "/test02/listMembers.jsp";
		}
		
		RequestDispatcher dispatch = req.getRequestDispatcher(nextPage);
		dispatch.forward(req, res);
	}
}
