package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import service.UserDaoImpl;

public class UserLoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String uname = request.getParameter("uname");
		String upwd = request.getParameter("upwd");
		User user=new UserDaoImpl().isUser(uname,upwd);
		if(user!=null){
			System.out.println(user.toString());
			//登录成功
			request.setAttribute("user", user);
			//将用户用cookie存起来
			Cookie cookie = new Cookie("loginCookie", user.getUname());
			cookie.setMaxAge(24*60*60);
			cookie.setPath("/");
			response.addCookie(cookie);
			request.getRequestDispatcher("getall.jsp").forward(request, response);
		}else{
			//登录失败
			boolean hasUser = new UserDaoImpl().hasUser(uname);
			System.out.println("hasUser:"+hasUser);
			if(hasUser){
				response.getWriter().write("false");
			}else{
				response.getWriter().write("ture");
			}
			response.sendRedirect("/ProjectOne/error.html");
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
