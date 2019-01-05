package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Shop_Info;
import entity.Shop_Store_Info;
import entity.User;
import entity.User_To_Shop;
import service.ShopInfoDaoImpl;
import service.UserDaoImpl;

public class AddShopCarServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Cookie[] cookies = request.getCookies();
		Cookie c=null;
		for (Cookie cookie : cookies) {
			if("loginCookie".equals(cookie.getName())){
				c=cookie;
			}
		}
		int uname_id=0;
		if(c!=null){
			String uname = c.getValue();
			System.out.println(uname);
			//通过用户名找到该用户的id
			uname_id=new UserDaoImpl().getUserIdByUname(uname);
		}
		String shopname = new String(request.getParameter("shopname").getBytes("iso-8859-1"),"utf-8");
		int shopcount = Integer.parseInt(request.getParameter("count"));
		
		List<Shop_Store_Info> infos=null;
		//如果是新增数据
		if(shopcount==0 || "null".equals(shopname)){
			//说明用户是直接点进的购物车
			infos= getInfos(uname_id);
		}else{
			//说明是用户添加的购物
			infos=addshop(uname_id,shopname,shopcount);
		}
		request.getSession().setAttribute("StoreLists", infos);
		response.sendRedirect("/ProjectOne/shopping.jsp");
		
	}
	private List<Shop_Store_Info> addshop(int uname_id, String shopname,int shopcount) {
		List<Shop_Store_Info> StoreLists1=new ArrayList<Shop_Store_Info>();//存放该用户所拥有的店铺
		List<Shop_Info> list1=new ArrayList<Shop_Info>();//存该用户在该店铺所购买的商品
		List<User_To_Shop> allShopCarInfo = new ShopInfoDaoImpl().getAllShopCarInfo(uname_id);
		List<Integer> shopIds=new ArrayList<Integer>();
		for (int i = 0; i < allShopCarInfo.size(); i++) {
			//所有商品的信息集合
			int shop_id = allShopCarInfo.get(i).getShop_id();
			shopIds.add(shop_id);
			list1.add(new ShopInfoDaoImpl().getShopInfoById(shop_id));
		}
		
		//给该用户添加商品
		int shopid=new ShopInfoDaoImpl().getShopInfoByName(shopname).getShop_id();
		shopIds.add(shopid);
		boolean addShop = new ShopInfoDaoImpl().addShop(shopid, uname_id, shopcount);
		if(addShop){
			//添加到集合中的时候判断该集合中是不是已经有了该商品的id  如果有了  就只修改数据
			boolean flag=false;
			for(int i=0;i<list1.size();i++){
				if(list1.get(i).getShop_id()==shopid){
					flag=true;
				}
			}
			Shop_Info shopInfo = new ShopInfoDaoImpl().getShopInfoById(shopid);
			if(flag){
				shopInfo.setShop_count(shopInfo.getShop_count()+shopcount);
			}else{
				list1.add(shopInfo);
			}
		}
		boolean flag=false;
		int index = -1;
		for (int i = 0; i < list1.size(); i++) {
			//通过商品的id查到对应商铺的id
			int shop_store_id=new ShopInfoDaoImpl().getShopStoreIdByShopId(list1.get(i).getShop_id());
			//通过商铺id查到对应商品的商铺
			Shop_Store_Info store_Info=new ShopInfoDaoImpl().getShopStoreInfoByShopStoreId(shop_store_id);
			for (int q=0;q<StoreLists1.size();q++) {
				if(StoreLists1.get(q).getShop_store_id()==store_Info.getShop_store_id()){
					flag=true;
					index = q;
				}
			}
			if(flag){
				//证明已经有了该店铺     所以需要找到该店铺的商品集合进行叠加现在的商品
				List<Shop_Info> shop_Infos = StoreLists1.get(index).getShop_Infos();
				int count = new ShopInfoDaoImpl().getShopCountById(uname_id,list1.get(i).getShop_id());
				list1.get(i).setShop_count(count);
				list1.get(i).setShop_money(Double.parseDouble(String.format("%.2f", count*list1.get(i).getShop_price())));
				shop_Infos.add(list1.get(i));
				StoreLists1.get(index).setShop_Infos(shop_Infos);
				StoreLists1.set(index, StoreLists1.get(index));
				flag=false;
			}else{
				//没有该商铺   直接创建一个新的商铺
				List<Shop_Info> ll=new ArrayList<Shop_Info>();
				int count = new ShopInfoDaoImpl().getShopCountById(uname_id,list1.get(i).getShop_id());
				list1.get(i).setShop_count(count);
				list1.get(i).setShop_money(Double.parseDouble(String.format("%.2f", count*list1.get(i).getShop_price())));
				ll.add(list1.get(i));
				store_Info.setShop_Infos(ll);
				StoreLists1.add(store_Info);
			}
		}
		return StoreLists1;
	}

	private List<Shop_Store_Info> getInfos(int uname_id) {
		List<Shop_Store_Info> StoreLists=new ArrayList<Shop_Store_Info>();//存放该用户所拥有的店铺
		List<Shop_Info> list=new ArrayList<Shop_Info>();//存该用户在该店铺所购买的商品
		/*读取数据库中的数据*/
		List<User_To_Shop> allShopCarInfo = new ShopInfoDaoImpl().getAllShopCarInfo(uname_id);
		List<Integer> shopIds=new ArrayList<Integer>();
		for (int i = 0; i < allShopCarInfo.size(); i++) {
			//所有商品的信息集合
			int shop_id = allShopCarInfo.get(i).getShop_id();
			shopIds.add(shop_id);
			list.add(new ShopInfoDaoImpl().getShopInfoById(shop_id));
		}
		boolean flag=false;
		int index = -1;
		for (int i = 0; i < list.size(); i++) {
			//通过商品的id查到对应商铺的id
			int shop_store_id=new ShopInfoDaoImpl().getShopStoreIdByShopId(list.get(i).getShop_id());
			//通过商铺id查到对应商品的商铺
			Shop_Store_Info store_Info=new ShopInfoDaoImpl().getShopStoreInfoByShopStoreId(shop_store_id);
			for (int q=0;q<StoreLists.size();q++) {
				if(StoreLists.get(q).getShop_store_id()==store_Info.getShop_store_id()){
					flag=true;
					index = q;
				}
			}
			if(flag){
				//证明已经有了该店铺     所以需要找到该店铺的商品集合进行叠加现在的商品
				List<Shop_Info> shop_Infos = StoreLists.get(index).getShop_Infos();
				int count = new ShopInfoDaoImpl().getShopCountById(uname_id,list.get(i).getShop_id());
				list.get(i).setShop_count(count);
				list.get(i).setShop_money(Double.parseDouble(String.format("%.2f", count*list.get(i).getShop_price())));
				shop_Infos.add(list.get(i));
				StoreLists.get(index).setShop_Infos(shop_Infos);
				StoreLists.set(index, StoreLists.get(index));
				flag=false;
			}else{
				//没有该商铺   直接创建一个新的商铺
				List<Shop_Info> ll=new ArrayList<Shop_Info>();
				int count = new ShopInfoDaoImpl().getShopCountById(uname_id,list.get(i).getShop_id());
				list.get(i).setShop_count(count);
				list.get(i).setShop_money(Double.parseDouble(String.format("%.2f", count*list.get(i).getShop_price())));
				ll.add(list.get(i));
				store_Info.setShop_Infos(ll);
				StoreLists.add(store_Info);
			}
		}
		return StoreLists;
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
