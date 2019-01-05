package service;

import java.util.List;

import dao.ShopInfoDao;
import entity.Shop_Imgs;
import entity.Shop_Info;
import entity.Shop_Store_Info;
import entity.User_To_Shop;

public class ShopInfoDaoImpl {

	ShopInfoDao dao=new ShopInfoDao();
	
	public List<Shop_Info> getAllShop() {
		return dao.getAllShop();
	}

	public Shop_Info getShopInfoById(int shopid) {
		return dao.getShopInfoById(shopid);
	}

	public Shop_Imgs getShopImgs(int shopid) {
		return dao.getShopImgs(shopid);
	}

	public Shop_Info getShopInfoByName(String shopname) {
		return dao.getShopInfoByName(shopname);
	}

	public boolean addShop(int shop_id, int uname_id,int shop_count) {
		return dao.addShop(shop_id,uname_id,shop_count);
	}

	public List<User_To_Shop> getAllShopCarInfo(int user_id) {
		return dao.getAllShopCarInfo(user_id);
	}

	public List<Shop_Info> getAllAddShopInfo(List<Integer> shopsid) {
		return dao.getAllAddShopInfo(shopsid);
	}

	public String getShop_store_name(int shop_id) {
		return dao.getShop_store_name(shop_id);
	}

	public Shop_Store_Info getInfoByStoreName(String shop_store_name) {
		return dao.getInfoByStoreName(shop_store_name);
	}

	public boolean isSameStore(Integer id1, Integer id2) {
		return dao.isSameStore(id1,id2);
	}

	public Shop_Store_Info getInfoByShopId(int shop_id) {
		return dao.getInfoByShopId(shop_id);
	}

	public int getShopCountById(int user_id,int shop_id) {
		return dao.getShopCountById(user_id,shop_id);
	}

	public int getShopStoreIdByShopId(int shop_id) {
		return dao.getShopStoreIdByShopId(shop_id);
	}

	public Shop_Store_Info getShopStoreInfoByShopStoreId(int shop_store_id) {
		return dao.getShopStoreInfoByShopStoreId(shop_store_id);
	}


}
