package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.UserDaoImpl;

public class ByNowCommitServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Cookie[] cookies = request.getCookies();
		Cookie c=null;
		for (Cookie cookie : cookies) {
			if("loginCookie".equals(cookie.getName())){
				c=cookie;
			}
		}
		if(c!=null){
			String uname = c.getValue();
			double moneycount=new UserDaoImpl().getMoney(uname);
			double needmoney = Double.parseDouble(request.getParameter("money"));
			System.out.println(moneycount+","+needmoney);
			if(moneycount<needmoney){
				response.getWriter().write("你的余额不够");
			}else{
				boolean pay=new UserDaoImpl().payMent(uname,needmoney);
				if(pay){
					response.getWriter().write("支付成功");
				}else{
					response.getWriter().write("余额不足，支付失败");
				}
			}
		}else{
			response.getWriter().write("你还没有登录");
			response.sendRedirect("/ProjectOne/login.jsp");
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
