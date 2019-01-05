package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcUtils {
	//使用ThreadLocal 可以用来实现单例模式
	static ThreadLocal<Connection> tl=new ThreadLocal<Connection>();
	
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
		
	public static Connection getconn(){
		Connection conn=tl.get();
		if(conn==null){
			try {
				conn = DriverManager.getConnection("jdbc:mysql:///shop", "root","123");
				tl.set(conn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return conn;
	}
}
