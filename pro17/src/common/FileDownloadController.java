package common;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sec03.brd4.ArticleVO;
import sec03.brd4.BoardService;

@WebServlet("/download.do")
public class FileDownloadController 
{
	
	public void init() throws ServletException
	{
	}
    
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		doHandle(req, res);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		doHandle(req, res);
	}
	
	private void doHandle(HttpServletRequest req, HttpServletResponse res)
	throws ServletException, IOException
	{
		res.setContentType("text/html; charset=utf-8");
		
		String imageFileName = (String) req.getParameter("imageFileName");
		String articleNO = req.getParameter("articleNO");
		
		System.out.println("imageFileName: " + imageFileName);
		OutputStream out = res.getOutputStream();
		
		String path = ARTICLE_IMAGE_REPO + "\\" + articleNO + "\\" + imageFileName;
		File imageFile = new File(path);
		
		res.setHeader("Cache-Control", "no-cache");
		res.addHeader("Content-deposition", "attachment;filename=" + imageFileName);
		FileInputStream in = new FileInputStream(imageFile);
		
		byte[] buffer = new byte[1024 * 8];
		
		while(true)
		{
			int count = in.read(buffer);
			if(count == -1)
			{
				break;
				out.write(buffer, 0, count);
			}
			in.close();
			out.close();
			
		}
	}
	
	
}
