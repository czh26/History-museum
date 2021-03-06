package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.News;
import service.NewsService;



/**
 * 加载首页的文章
 */
@WebServlet("/history/new")
public class NewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取查看的文章的id
		String id = request.getParameter("id");
		System.out.println("---文章的id：---"+id+"--------------");
		News news = new News();
		
		news.setId(Integer.parseInt(id));
		News resultNews = NewsService.getNew(news);
		 
		request.setAttribute("oneNew", resultNews);
//		System.out.println(resultNews.toString());  
		request.getRequestDispatcher("/history/new.jsp").forward(request, response);
	}
}





