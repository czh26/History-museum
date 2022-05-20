package servlet.admin;

import java.io.Console;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import entity.News;
import entity.User;
import service.NewsService;
import service.UserService;



/**
 * 发布文章
 */
@WebServlet("/admin/deleteAdmin")
public class DeleteAdmin extends HttpServlet {
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
		
		
		response.setContentType("text/html;charset=utf-8");
		//PrintWriter writer = response.getWriter();
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		User user = new User();
		//获取id
		String id = request.getParameter("id");
		user.setId(Integer.parseInt(id));
		int i = UserService.deleteUser(user);
		System.out.println("删除id为"+id+"的用户！！");
		request.getRequestDispatcher("member-list").forward(request, response);
		
	}

}
