package sec03.brd4;

import java.util.*;

public class BoardService 
{
	BoardDAO boardDAO;
	
	public BoardService()
	{
		boardDAO = new BoardDAO();
	}
	
	public int addArticle(ArticleVO article)
	{
		System.out.println("---------[Service]article number is passing");
		return boardDAO.insertNewArticle(article);
	}
	
	public List<ArticleVO> listArticles()
	{
		List<ArticleVO> articles = boardDAO.selectAllArticles();
		return articles;
	}
	
	public ArticleVO viewArticle(int articleNO)
	{
		ArticleVO article = null;
		article = boardDAO.selectArticle(articleNO);
		return article;
	}
	
	
}
