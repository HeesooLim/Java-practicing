package sec02.ex02;

import java.util.Date;

public class MemberVO 
{
	String id;
	String pwd;
	String name;
	String email;
	Date joinDate;
	
	public MemberVO()
	{
		System.out.println("MemberVO Contructor!");
	}
	
	public MemberVO(String id, String pwd, String name, String email)
	{
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
	}
	
	public MemberVO(String id, String pwd, String name, String email, Date joinDate)
	{
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.joinDate = joinDate;
	}
	
	public String getId() { return id; }

    public String getPwd() { return pwd; }

    public String getName() { return name; }

    public String getEmail() { return email; }

    public Date getJoinDate() { return joinDate; }

    public void setId(String id) { this.id = id; }

    public void setPwd(String pwd) { this.pwd = pwd; }

    public void setName(String name) { this.name = name; }

    public void setEmail(String email) { this.email = email; }

    public void setJoinDate(Date joinDate) { this.joinDate = joinDate; }
	
}
