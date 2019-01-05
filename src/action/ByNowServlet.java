package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Shop_Info;
import service.ShopInfoDaoImpl;

public class ByNowServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int count =Integer.parseInt(request.getParameter("count"));
		String shopname = new String(request.getParameter("shopname").getBytes("iso-8859-1"),"utf-8");
		//通过商品名字找到商品的信息
		Shop_Info shop=new ShopInfoDaoImpl().getShopInfoByName(shopname);
		if(shop!=null){
			request.setAttribute("shopInfo", shop);
			request.setAttribute("count", count);
			request.setAttribute("shopMoney",Double.parseDouble(String.format("%.2f",count*shop.getShop_price())));
		}
		request.getRequestDispatcher("confirmIndent.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
