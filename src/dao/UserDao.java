package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import datasource.MyDataSource;
import entity.User;

public class UserDao {

	QueryRunner qRunner=new QueryRunner(new MyDataSource());
	//用户用来登录
	public User isUser(String uname, String upwd) {
		User user=null;
		try {
			 user= qRunner.query("select * from user_table where uname=? and upwd=?",new BeanHandler<User>(User.class),uname,upwd);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	//判断是否有此用户名
	public boolean hasUser(String uname) {
		boolean flag=false;
		try {
			User user = qRunner.query("select * from user_table where uname=?",new BeanHandler<User>(User.class),uname);
			if(user==null){
				//为空说明没有此用户
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	//注册用户
	public boolean insertUser(User user) {
		boolean flag=false;
		try {
			int update = qRunner.update("insert into user_table values(null,?,?,?,?,?,?,?,?,?,?,?,?,1000)",
					user.getUname(),user.getUpwd(),user.getName(),user.getSex(),user.getAge()
					,user.getTellphone(),user.getPhone(),user.getAddres(),user.getBankid()
					,user.getStreet(),user.getChildphone(),user.getChildname());
			if(update==1){
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	//通过用户名找到用户余额
	public double getMoney(String uname) {
		double money=0;
		try {
			money = (Double) qRunner.query("select money from user_table where uname=?", new ScalarHandler(),uname);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return money;
	}
	//通过用户名支付
	public boolean payMent(String uname,double money) {
		boolean flag=false;
		try {
			int update = qRunner.update("update user_table set money=money-? where uname=?",money,uname);
			if(update==1){
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	//通过用户名查用户id
	public int getUserIdByUname(String uname) {
		int uname_id=0;
		User query=null;
		try {
			query = qRunner.query("select id from user_table where uname=?",new BeanHandler<User>(User.class),uname);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(query!=null){
			uname_id=query.getId();
		}
		return uname_id;
	}

}
