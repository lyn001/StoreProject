package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.xml.sax.helpers.XMLReaderAdapter;

import entity.User;
import service.UserDaoImpl;

public class UserRegisterServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Map<String, String[]> map = request.getParameterMap();
		User user=new User();
		try {
			BeanUtils.populate(user, map);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		if(user.getUname()=="" || user.getUpwd()==""){
			response.getWriter().write("");
		}else{
			//判断注册第一步  数据库中是否存在此用户
			boolean flag=new UserDaoImpl().hasUser(user.getUname());
			if(flag){
				//没有此用户
				response.getWriter().write("true");
			}else{
				response.getWriter().write("false");
			}
		}
		
		//将用户注册的信息加入到数据库中
		String submit = request.getParameter("submit");
		if("ture".equals(submit)){
			String parameter = request.getParameter("name");
			String parameter2 = request.getParameter("sex");
			String parameter3 = request.getParameter("childphone");
			if(parameter!=null){
				user.setName(new String(parameter.getBytes("iso-8859-1"),"utf-8"));
			}
			if(parameter2=="0"){
				user.setSex("女");
			}else{
				user.setSex("男");
			}
			if(parameter3==""){
				user.setChildphone(null);
			}
			boolean flag2=new UserDaoImpl().insertUser(user);
			if(flag2){
				response.getWriter().write("ok");
			}else{
				response.getWriter().write("no");
			}
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
