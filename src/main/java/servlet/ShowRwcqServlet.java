package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.PageDAO;
import entity.News;
import service.NewsService;



/**
 * 加载首页的文章
 */
@WebServlet("/history/rwcq")
public class ShowRwcqServlet extends HttpServlet {
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
		//获取banner文章
		News banNews = new News();
		//获取具体文章
//		News allNews = new News();
		
		int pageindex = 1;//第几页
        int pagesize = 6;
        try {
            pageindex = Integer.parseInt(request.getParameter("start"));
        } catch (NumberFormatException e) {
        }
        int next = pageindex + 1;
        int pre = pageindex - 1;
        int total = new PageDAO().RwcqTotal();
        int last;
        last = (total + pagesize - 1) / pagesize;
        int currPage = 1;
        currPage = pageindex;
        
        if(currPage == 1 && last == 1){
        	pre = 1;
        	next = last;
        }else if(currPage>1 && currPage<last) {
        	pre = pageindex - 1;
        	next = pageindex + 1;
        }else if(currPage == last) {
        	pre = pageindex - 1;
        	next = last;
        }else if(currPage == 1) {
        	pre = 1;
        	next = pageindex + 1;
        }
        
        request.setAttribute("total", total);
        request.setAttribute("currPage", currPage);
        request.setAttribute("start", pageindex);
        request.setAttribute("next", next);
        request.setAttribute("pre", pre);
        request.setAttribute("last", last);
        int page= (pageindex-1)*pagesize;
		
		banNews.setType("rwcq");
		List<News> newList = new PageDAO().list(banNews, page, pagesize);
		
		request.setAttribute("rwcqList", newList);
		request.getRequestDispatcher("rwcq.jsp").forward(request, response);
	}
}





