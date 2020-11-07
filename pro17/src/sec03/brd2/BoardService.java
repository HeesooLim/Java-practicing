package sec03.brd2;

import java.util.*;

public class BoardService 
{
	BoardDAO boardDAO;
	
	public BoardService()
	{
		boardDAO = new BoardDAO();
	}
	
	public void addArticle(ArticleVO article)
	{
		boardDAO.insertNewArticle(article);
	}
	
	public List<ArticleVO> listArticles()
	{
		List<ArticleVO> articles = boardDAO.selectAllArticles();
		return articles;
	}
	
	
}
