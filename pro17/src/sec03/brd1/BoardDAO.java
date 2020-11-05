package sec03.brd1;

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
