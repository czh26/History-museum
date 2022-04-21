package service;

import java.util.Date;
import java.util.List;

import dao.INewsDao;
import dao.IShowIndexDao;
import dao.NewsDao;
import dao.ShowNewsDao;
import entity.News;


/**
 * 用户相关的服务类，里面提供用户操作相关的方法
 * @author linbo
 *
 */
public class NewsService {
	//将访问数据库的对应方法引入到当前方法
	public static IShowIndexDao show = new ShowNewsDao();
	public static INewsDao news = new NewsDao();
	/**
	 * 获取banner文章，如果有一些默认数据，可以在此处设置
	 * @param u news
	 * @return banner文章list
	 */
	public static List<News> shwoBanner(News n) {
		//在服务层中，可以对数据进行处理，这个一般不会在访问数据库的地方做，而在当前类中实现
		return show.showBannerNews(n);
	}
	
	public static List<News> shwoAll(News n) {
		return show.showAll(n);
	}
	
	public static News getNew(News n) {
		return show.getNew(n);
	}
	public static int sendNews(News n) {
		return news.sendNews(n);
	}
	public static int changeNews(News n) {
		return news.changeNews(n);
	}
	public static int deleteNews(News n) {
		return news.deleteNews(n);
	}
	
	
	
	
}
