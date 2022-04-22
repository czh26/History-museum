package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import entity.News;
import util.DBUtil;

public class PageDAO {
	public static IShowIndexDao show = new ShowNewsDao();
	public static INewsDao news = new NewsDao();
	
	public PageDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection() throws SQLException {
		return DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/history?characterEncoding=UTF-8", "root",
				"123456");
	}


	public int ShgcTotal() {
		int total = 0;
		try (Connection c = getConnection(); Statement s = c.createStatement();) {
			String sql = "select count(id) from news where type='shgc'";
			ResultSet rs = s.executeQuery(sql);
			while (rs.next()) {
				total = rs.getInt(1);
			}
			System.out.println("total:" + total);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return total;
	}
	
	public int RwcqTotal() {
		int total = 0;
		try (Connection c = getConnection(); Statement s = c.createStatement();) {
			String sql = "select count(id) from news where type='rwcq'";
			ResultSet rs = s.executeQuery(sql);
			while (rs.next()) {
				total = rs.getInt(1);
			}
			System.out.println("total:" + total);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return total;
	}
	
	public int GzdtTotal() {
		int total = 0;
		try (Connection c = getConnection(); Statement s = c.createStatement();) {
			String sql = "select count(id) from news where type='gzdt'";
			ResultSet rs = s.executeQuery(sql);
			while (rs.next()) {
				total = rs.getInt(1);
			}
			System.out.println("total:" + total);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return total;
	}
	
	public int XxggTotal() {
		int total = 0;
		try (Connection c = getConnection(); Statement s = c.createStatement();) {
			String sql = "select count(id) from news where type='xxgg'";
			ResultSet rs = s.executeQuery(sql);
			while (rs.next()) {
				total = rs.getInt(1);
			}
			System.out.println("total:" + total);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return total;
	}


	public List<News> list(News n, int start, int count) {
		List<News> news = new ArrayList<>();

		String sql = "select * from news where type=? order by id desc limit ?,? ";
		try (Connection c = getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {
			ps.setObject(1, n.getType());
			ps.setInt(2, start);
			ps.setInt(3, count);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				News newlist = new News();
				int id = rs.getInt(1);
				String title = rs.getString(2);
				String type = rs.getString(3);
				String content = rs.getString(4);
				String author = rs.getString(5);
				Date date = rs.getDate(6);
				String img = rs.getString(7);
				newlist.id = id;
				newlist.title = title;
				newlist.type = type;
				newlist.content = content;
				newlist.author = author;
				newlist.date = date;
				newlist.img = img;
				
				news.add(newlist);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return news;
		
	}
}
