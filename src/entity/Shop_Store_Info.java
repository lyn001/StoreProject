package entity;

import java.io.Serializable;
import java.util.List;

public class Shop_Store_Info implements Serializable{
	private int shop_store_id;
	private String shop_store_name;
	private List<Shop_Info> shop_Infos;//该商铺中商品的信息
	
	public Shop_Store_Info(int shop_store_id, String shop_store_name, List<Shop_Info> shop_Infos) {
		super();
		this.shop_store_id = shop_store_id;
		this.shop_store_name = shop_store_name;
		this.shop_Infos = shop_Infos;
	}
	public Shop_Store_Info() {
		super();
		// TODO Auto-generated constructor stub
	}
	public List<Shop_Info> getShop_Infos() {
		return shop_Infos;
	}
	public void setShop_Infos(List<Shop_Info> shop_Infos) {
		this.shop_Infos = shop_Infos;
	}
	public int getShop_store_id() {
		return shop_store_id;
	}
	public void setShop_store_id(int shop_store_id) {
		this.shop_store_id = shop_store_id;
	}
	public String getShop_store_name() {
		return shop_store_name;
	}
	public void setShop_store_name(String shop_store_name) {
		this.shop_store_name = shop_store_name;
	}
	@Override
	public String toString() {
		return "Shop_Store_Info [shop_store_id=" + shop_store_id
				+ ", shop_store_name=" + shop_store_name + ", shop_Infos="
				+ shop_Infos + "]";
	}
	
	
}
