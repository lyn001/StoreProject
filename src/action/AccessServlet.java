package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Shop_Info;
import service.ShopInfoDaoImpl;

public class AccessServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Shop_Info> allshop=new ShopInfoDaoImpl().getAllShop();
		if(allshop!=null){
			request.setAttribute("AllShop",allshop);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else{
			response.sendRedirect("/ProjectOne/error.html");
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
