package sec02.ex02;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO 
{
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;
	
	public MemberDAO()
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
	
	public List<MemberVO> listMembers()
	{
		List<MemberVO> memberList = new ArrayList<MemberVO>();
		try
		{
			conn = dataFactory.getConnection();
			
			String query = "SELECT * FROM t_member ORDER BY joinDate DESC";
			
			System.out.println(query);
			
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				
				MemberVO memberVO = new MemberVO(id, pwd, name, email, joinDate);
				memberList.add(memberVO);
			}
			
			rs.close();
			pstmt.close();
			conn.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return memberList;
	}
	
	public void addMember(MemberVO member)
	{
		try
		{
			conn = dataFactory.getConnection();
			String id = member.getId();
			String pwd = member.getPwd();
			String name = member.getName();
			String email = member.getEmail();
			String query = "INSERT INTO t_member(id, pwd, name, email) " + " VALUES(?, ?, ?, ?)";
			
			System.out.println(query);
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	public MemberVO findMember(String _id)
	{
		MemberVO member = null;
		try
		{
			conn = dataFactory.getConnection();
			String query = "SELECT * FROM t_member WHERE id = ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, _id);
			
			System.out.println(query);
			
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			
			String id = rs.getString("id");
			String pwd = rs.getString("pwd");
			String name = rs.getString("name");
			String email = rs.getString("email");
			Date joinDate = rs.getDate("joinDate");
			
			member = new MemberVO(id, pwd, name, email, joinDate);
			
			pstmt.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return member;
	}
	
	public void modMember(MemberVO member)
	{
		String id = member.id;
		String pwd = member.pwd;
		String name = member.name;
		String email = member.email;
		
		try
		{
			conn = dataFactory.getConnection();
			String query = "UPDATE t_member SET pwd=?, name=?, email=? WHERE id=?";
			
			System.out.println(id);
			System.out.println(pwd);
			System.out.println(name);
			System.out.println(email);
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, pwd);
			pstmt.setString(2, name);
			pstmt.setString(3, email);
			pstmt.setString(4, id);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void delMember(String id)
	{
		try
		{
			conn = dataFactory.getConnection();
			String query = "DELETE FROM t_member WHERE id = ?";
			System.out.println(query);
			
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
}
