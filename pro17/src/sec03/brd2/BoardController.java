package sec03.brd2;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


@WebServlet("/board/*")
public class BoardController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	private static String ARTICLE_IMAGE_REPO= "C:\\board\\article_image";
	
	BoardService boardService;
	ArticleVO articleVO;
    
    public void init() throws ServletException
	{
		boardService = new BoardService();
		articleVO = new ArticleVO();
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
				nextPage = "/board02/listArticles.jsp";
			}
			else if(action.equals("/listArticles.do"))
			{
				articles = boardService.listArticles();
				req.setAttribute("articleList", articles);
				nextPage = "/board02/listArticles.jsp";
			}
			else if(action.equals("/articleForm.do"))
			{
				nextPage = "/board02/articleForm.jsp";
			}
			else if(action.equals("/addArticle.do"))
			{
				Map<String, String> articleMap = upload(req, res);
				String title = articleMap.get("title");
				String content = articleMap.get("content");
				String imageFileName = articleMap.get("imageFileName");
				
				articleVO.setParentNO(0);
				articleVO.setId("lim");
				articleVO.setTitle(title);
				articleVO.setContent(content);
				articleVO.setImageFileName(imageFileName);
				
				boardService.addArticle(articleVO);
				
				nextPage = "/board/listArticles.do";
			}
			RequestDispatcher dispatch = req.getRequestDispatcher(nextPage);
			dispatch.forward(req, res);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	private Map<String,String> upload(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException
	{
		Map<String, String> articleMap = new HashMap<String, String>();
		
		File currentDirPath = new File(ARTICLE_IMAGE_REPO);
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setRepository(currentDirPath);
		factory.setSizeThreshold(1024 * 1024);
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		try
		{
			List items = upload.parseRequest(req);
			for (int i = 0; i < items.size(); i++) 
			{
				FileItem fileItem = (FileItem) items.get(i);
				if(fileItem.isFormField())
				{
					System.out.println(fileItem.getFieldName() + 
							"=" + fileItem.getString("utf-8"));
					articleMap.put(fileItem.getFieldName(), fileItem.getString("utf-8"));
				}
				else
				{
					System.out.println("Param : " + fileItem.getFieldName());
					System.out.println("FileName : " + fileItem.getName());
					System.out.println("FileSize : " + fileItem.getSize() + "bytes");
					
					if(fileItem.getSize() > 0)
					{
						int idx = fileItem.getName().lastIndexOf("\\");
						if(idx == -1)
						{
							idx = fileItem.getName().lastIndexOf("/");
						}
						String fileName = fileItem.getName().substring(idx + 1);
						articleMap.put(fileItem.getFieldName(), fileName);
						File uploadFile = new File(currentDirPath + "\\" + fileName);
						fileItem.write(uploadFile);						
						
					}			
				}
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return articleMap;
	}

}
