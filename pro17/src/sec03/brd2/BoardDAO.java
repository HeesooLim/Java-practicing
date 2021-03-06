package sec03.brd2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import javax.naming.Context;
import javax.naming.InitialContext;

public class BoardDAO 
{
	private DataSource dataFactory;
	Connection conn;
	PreparedStatement pstmt;
	
	public BoardDAO()
	{
		try
		{
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	private int getNewArticleNO()
	{
		try
		{
			conn = dataFactory.getConnection();
			String query = "SELECT max(articleNO) FROM t_board";
			
			System.out.println(query);
			
			pstmt = conn.prepareStatement(query);
			ResultSet result = pstmt.executeQuery();
			if(result.next())
			{
				return (result.getInt(1) + 1);
			}
			result.close();
			pstmt.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}
	
	public void insertNewArticle(ArticleVO article)
	{
		try
		{
			conn = dataFactory.getConnection();
			
			int articleNO = getNewArticleNO();
			int parentNO = article.getParentNO();
			String title = article.getTitle();
			String content = article.getContent();
			String id = article.getId();
			String imageFileName = article.getImageFileName();
			
			String query = "INSERT INTO t_board (articleNO, parentNO, title, content, imageFileName, id)"
					 + "VALUES(?, ?, ?, ?, ?, ?)";
			
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, articleNO);
			pstmt.setInt(2, parentNO);
			pstmt.setString(3, title);
			pstmt.setString(4, content);
			pstmt.setString(5, imageFileName);
			pstmt.setString(6, id);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public List<ArticleVO> selectAllArticles()
	{
		List<ArticleVO> articles = new ArrayList<ArticleVO>();
		try
		{
			conn = dataFactory.getConnection();
			String query = "SELECT level, articleNO, parentNO, title, content, id, writeDate"
							+ " FROM t_board"
							+ " START WITH parentNO = 0"
							+ " CONNECT BY PRIOR articleNO = parentNO"
							+ " ORDER SIBLINGS BY articleNO DESC";	
			System.out.println(query);
			
			pstmt = conn.prepareStatement(query);
			ResultSet result = pstmt.executeQuery();
			
			while(result.next())
			{
				int level = result.getInt("level");
				int articleNO = result.getInt("articleNO");
				int parentNO = result.getInt("parentNO");
				String title = result.getString("title");
				String content = result.getString("content");
				String id = result.getString("id");
				Date writeDate = result.getDate("writeDate");
				
				ArticleVO article = new ArticleVO(level, articleNO, parentNO, title, content, id, writeDate);
				articles.add(article);
			}
			
			for (ArticleVO article : articles)
			{
				System.out.println(article.getArticleNO() + " : " + article.getTitle());
			}
			
			result.close();
			pstmt.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return articles;
	}
}
