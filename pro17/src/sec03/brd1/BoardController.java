package sec03.brd1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/board/*")
public class BoardController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	BoardService boardService;
	ArticleVO articeVO;
    
    public void init() throws ServletException
	{
		boardService = new BoardService();
	}
    
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		doHandle(req, res);
	}
	
	private void doHandle(HttpServletRequest req, HttpServletResponse res)
	{
		String nextPage = "";
		res.setContentType("test/html");
		
		String action = req.getPathInfo();
		System.out.println("Action : " + action);
		
		try
		{
			List<ArticleVO> articles = new ArrayList<ArticleVO>();
			if(action == null)
			{
				articles = boardService.listArticles();
				req.setAttribute("articleList", articles);
				nextPage = "/board01/listArticles.jsp";
			}
			else if(action.equals("/listArticles.do"))
			{
				articles = boardService.listArticles();
				req.setAttribute("articleList", articles);
				nextPage = "/board01/listArticles.jsp";
			}
			RequestDispatcher dispatch = req.getRequestDispatcher(nextPage);
			dispatch.forward(req, res);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
