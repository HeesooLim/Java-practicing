package sec03.brd1;

import java.util.*;

public class BoardService 
{
	BoardDAO boardDAO;
	
	public BoardService()
	{
		boardDAO = new BoardDAO();
	}
	
	public List<ArticleVO> listArticles()
	{
		List<ArticleVO> articles = boardDAO.selectAllArticles();
		return articles;
	}
	
	
}
