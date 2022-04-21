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
@WebServlet("/history/main")
public class ShowMainServlet extends HttpServlet {
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
		News banNews1 = new News();
		News banNews2 = new News();
		News banNews3 = new News();
		//获取具体文章
//		News allNews = new News();
		
		int pageindex = 1;//第几页
        int pagesize = 9;
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
        
        request.setAttribute("currPage", currPage);
        request.setAttribute("start", pageindex);
        request.setAttribute("next", next);
        request.setAttribute("pre", pre);
        request.setAttribute("last", last);
        int page= (pageindex-1)*pagesize;
		
		banNews.setType("gzdt");
		banNews1.setType("xxgg");
		banNews2.setType("rwcq");
		banNews3.setType("shgc");
		List<News> newList = new PageDAO().list(banNews, page, pagesize);
		List<News> newList1 = new PageDAO().list(banNews1, page, pagesize);
		List<News> newList2 = new PageDAO().list(banNews2, page, pagesize);
		List<News> newList3 = new PageDAO().list(banNews3, page, pagesize);
//		List<News> newList = NewsService.shwoBanner(banNews);
//		List<News> newList1 = NewsService.shwoBanner(banNews1);
//		List<News> newList2 = NewsService.shwoBanner(banNews2);
//		List<News> allList = NewsService.shwoAll(allNews);
		
		request.setAttribute("gzdtList", newList);
		request.setAttribute("xxggList", newList1);
		request.setAttribute("rwcqList", newList2);
		request.setAttribute("shgcList", newList3);
//		request.setAttribute("allList", allList);
//		System.out.println(newList.toString()); 
		//response.sendRedirect(request.getContextPath() + "/news/index.jsp");
		request.getRequestDispatcher("main.jsp").forward(request, response);
	}
}





