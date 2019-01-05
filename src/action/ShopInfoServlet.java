package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ShopInfoDaoImpl;
import entity.Shop_Imgs;
import entity.Shop_Info;

public class ShopInfoServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int shopid = Integer.parseInt(request.getParameter("shopid"));
		Shop_Info shop=new ShopInfoDaoImpl().getShopInfoById(shopid);
		Shop_Imgs imgs=new ShopInfoDaoImpl().getShopImgs(shopid);
		if(shop!=null){
			request.setAttribute("shop", shop);
		}
		if(imgs!=null){
			List<String> list = new ArrayList<String>();
			if(!imgs.getImg_01().equals("null")){
				list.add(imgs.getImg_01());
			}
			if(!imgs.getImg_02().equals("null")){
				list.add(imgs.getImg_02());
			}
			if(!imgs.getImg_03().equals("null")){
				list.add(imgs.getImg_03());
			}
			if(!imgs.getImg_04().equals("null")){
				list.add(imgs.getImg_04());
			}
			if(!imgs.getImg_05().equals("null")){
				list.add(imgs.getImg_05());
			}
			imgs.setImgLists(list);
			request.setAttribute("imgs", imgs.getImgLists());
		}
		if(imgs!=null && shop!=null){
			request.getRequestDispatcher("commodity.jsp").forward(request, response);
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
