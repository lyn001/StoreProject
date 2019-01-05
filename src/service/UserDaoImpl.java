package service;

import dao.UserDao;
import entity.User;

public class UserDaoImpl {
	UserDao dao=new UserDao();

	//用户用来登录
	public User isUser(String uname, String upwd) {
		return dao.isUser(uname,upwd);
	}
	
	//判断是否有此用户名
	public boolean hasUser(String uname) {
		return dao.hasUser(uname);
	}
	
	//注册用户
	public boolean insertUser(User user) {
		return dao.insertUser(user);
	}

	//通过用户名找到账户余额
	public double getMoney(String uname) {
		return dao.getMoney(uname);
	}

	//通过用户名支付
	public boolean payMent(String uname,double money) {
		return dao.payMent(uname,money);
	}

	public int getUserIdByUname(String uname) {
		return dao.getUserIdByUname(uname);
	}
	

	
	
}
