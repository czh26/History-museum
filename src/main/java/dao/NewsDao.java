package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.News;
import entity.User;
import util.DBUtil;

/**
 * 访问数据库用户表的实现类
 * @author admin
 *
 */
public class NewsDao implements INewsDao {

	
	@Override
	public int sendNews(News n) {
		//先让值等于-1，如果代码错误，就是返回-1
				int count = -1;
				//获取数据库连接对象
				Connection conn = DBUtil.getConn();
				//连接对象不为空才可以进行数据库操作
				if(conn!=null) {
					PreparedStatement pstmt = null;
					//定义SQL语句
					String sql = "insert into news (title,type,content,author,date,img) values(?,?,?,?,?,?)";
					try {
						//编译SQL语句
						pstmt = conn.prepareStatement(sql);
						//对SQL的？进行赋值
						pstmt.setObject(1, n.getTitle());
						pstmt.setObject(2, n.getType());
						pstmt.setObject(3, n.getContent());
						pstmt.setObject(4, n.getAuthor());
						pstmt.setObject(5, n.getDate());
						pstmt.setObject(6, n.getImg());
						//执行SQL语句，返回受影响的行数
						count = pstmt.executeUpdate();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} finally {
						//关闭资源
						DBUtil.closeAll(conn, pstmt, null);
					}
				}
				return count;
	}
	
	public Connection getConnection() throws SQLException {
        return DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hero?characterEncoding=UTF-8", "root",
                "123456");
    }
    public int GetTotal() {
        int total = 0;
        try (Connection c = getConnection(); Statement s = c.createStatement();) {
            String sql = "select count(id) from news ";
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
	
	@Override
	public int changeNews(News n) {

		//先定义一个空对象，如果方法执行过程有异常，外面就是接收到null
		int i = 1;
		//获取数据库连接对象
		Connection conn = DBUtil.getConn();
		//连接对象不为空才可以进行数据库操作
		if(conn!=null) {
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			//定义SQL语句
			String sql = "UPDATE news SET title = ?,type= ?,content= ?,author= ?,date= ?  WHERE id = ?  ";
			try {
				//编译SQL语句
				pstmt = conn.prepareStatement(sql);
				//对SQL的？进行赋值
				pstmt.setObject(1, n.getTitle());
				pstmt.setObject(2, n.getType());
				pstmt.setObject(3, n.getContent());
				pstmt.setObject(4, n.getAuthor());
				pstmt.setObject(5, n.getDate());
				pstmt.setObject(6, n.getId());
				pstmt.executeUpdate();
				//单结果只需要用if
				//rs.next()用于判断是否有下一条（也就是是否有数据）
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				//关闭资源
				DBUtil.closeAll(conn, pstmt, rs);
			}
		}
		
		return i;
	}

	@Override
	public int deleteNews(News n) {
		//先定义一个空对象，如果方法执行过程有异常，外面就是接收到null
				int i = 1;
				//获取数据库连接对象
				Connection conn = DBUtil.getConn();
				//连接对象不为空才可以进行数据库操作
				if(conn!=null) {
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					//定义SQL语句
					String sql = "DELETE FROM news  WHERE id = ?  ";
					try {
						//编译SQL语句
						pstmt = conn.prepareStatement(sql);
						//对SQL的？进行赋值
						pstmt.setObject(1, n.getId());
						pstmt.executeUpdate();
						//单结果只需要用if
						//rs.next()用于判断是否有下一条（也就是是否有数据）
						
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} finally {
						//关闭资源
						DBUtil.closeAll(conn, pstmt, rs);
					}
				}
				
				return i;
	}
}
