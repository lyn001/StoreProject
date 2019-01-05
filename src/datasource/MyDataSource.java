package datasource;

import java.io.PrintWriter;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.SQLFeatureNotSupportedException;
import java.util.LinkedList;
import java.util.logging.Logger;

import javax.sql.DataSource;

import utils.JdbcUtils;

public class MyDataSource implements DataSource {
	
	static LinkedList<Connection> list=null;
	
	public MyDataSource() {
		list=new LinkedList<Connection>();
		for (int i = 0; i < 5; i++) {
			Connection conn = JdbcUtils.getconn();
			list.add(conn);
		}
	}

	@Override
	public PrintWriter getLogWriter() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setLogWriter(PrintWriter out) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setLoginTimeout(int seconds) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getLoginTimeout() throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Logger getParentLogger() throws SQLFeatureNotSupportedException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public <T> T unwrap(Class<T> iface) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isWrapperFor(Class<?> iface) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Connection getConnection() throws SQLException {
		if(list.isEmpty()){
			for (int i = 0; i < 5; i++) {
				Connection connection = JdbcUtils.getconn();
				list.add(connection);
			}
		}
		//LinkedList集合中removeFirst方法移除并返回此列表的第一个元素
		final Connection conn = list.removeFirst();
		Class<?>[] interfaces = conn.getClass().getInterfaces();
		if(interfaces==null || interfaces.length==0){
			interfaces=new Class[1];
			interfaces[0]=Connection.class;
		}
		Connection ProxyConn = (Connection)Proxy.newProxyInstance(conn.getClass().getClassLoader(), interfaces, new InvocationHandler() {
			@Override
			public Object invoke(Object proxy, Method method, Object[] args)
					throws Throwable {
				if("close".equals(method.getName())){
					list.add(conn);
					return null;
				}else{
					return method.invoke(conn, args);
				}
			}
		});
		return ProxyConn;
	}

	@Override
	public Connection getConnection(String username, String password)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
