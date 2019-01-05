package entity;

import java.io.Serializable;

public class Shop_Info implements Serializable {
	private int shop_id;
	private String shop_name;
	private int shop_store_id;
	private double shop_price;
	private String shop_img;
	private String shop_desc;
	private int shop_supply;
	//商品的数量
	private int shop_count;
	//商品的总金额
	private double shop_money;
	public Shop_Info() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Shop_Info(String shop_name, double shop_price, String shop_img) {
		super();
		this.shop_name = shop_name;
		this.shop_price = shop_price;
		this.shop_img = shop_img;
	}
	
	public int getShop_id() {
		return shop_id;
	}

	public void setShop_id(int shop_id) {
		this.shop_id = shop_id;
	}

	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	
	public int getShop_store_id() {
		return shop_store_id;
	}

	public void setShop_store_id(int shop_store_id) {
		this.shop_store_id = shop_store_id;
	}

	public double getShop_price() {
		return shop_price;
	}
	public void setShop_price(double shop_price) {
		this.shop_price = shop_price;
	}
	public String getShop_img() {
		return shop_img;
	}
	public void setShop_img(String shop_img) {
		this.shop_img = shop_img;
	}

	public String getShop_desc() {
		return shop_desc;
	}

	public void setShop_desc(String shop_desc) {
		this.shop_desc = shop_desc;
	}

	public int getShop_supply() {
		return shop_supply;
	}

	public void setShop_supply(int shop_supply) {
		this.shop_supply = shop_supply;
	}
	

	public int getShop_count() {
		return shop_count;
	}

	public void setShop_count(int shop_count) {
		this.shop_count = shop_count;
	}

	
	public double getShop_money() {
		return shop_money;
	}

	public void setShop_money(double shop_money) {
		this.shop_money = shop_money;
	}

	@Override
	public String toString() {
		return "Shop_Info [shop_id=" + shop_id + ", shop_name=" + shop_name
				+ ", shop_store_id=" + shop_store_id + ", shop_price="
				+ shop_price + ", shop_img=" + shop_img + ", shop_desc="
				+ shop_desc + ", shop_supply=" + shop_supply + ", shop_count="
				+ shop_count + ", shop_money=" + shop_money + "]";
	}



	
		
	
	
}
