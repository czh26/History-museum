package dao;

import java.util.List;

import entity.News;
/**
 * 对数据库文章表进行操作的接口 - 用作是用于规范方法
 * @author admin
 *
 */
public interface INewsDao {
	/**
	 * 添加文章
	 * @param n
	 * @return
	 */
	public int sendNews(News n);
	/**
	 * 修改文章
	 * @param n
	 * @return
	 */
	public int changeNews(News n);
	/**
	 * 删除文章
	 * @param n
	 * @return
	 */
	public int deleteNews(News n);
}
