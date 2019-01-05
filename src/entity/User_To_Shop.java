package entity;

import java.io.Serializable;

public class User_To_Shop implements Serializable {
	private int shopcar_id;
	private int shop_id;
	private int user_id;
	private int shop_count;
	
	public User_To_Shop() {
		super();
		// TODO Auto-generated constructor stub
	}


	public User_To_Shop(int shopcar_id, int shop_id, int user_id,
			int shop_count) {
		super();
		this.shopcar_id = shopcar_id;
		this.shop_id = shop_id;
		this.user_id = user_id;
		this.shop_count = shop_count;
	}


	public int getShopcar_id() {
		return shopcar_id;
	}

	public void setShopcar_id(int shopcar_id) {
		this.shopcar_id = shopcar_id;
	}

	public int getShop_id() {
		return shop_id;
	}

	public void setShop_id(int shop_id) {
		this.shop_id = shop_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getShop_count() {
		return shop_count;
	}

	public void setShop_count(int shop_count) {
		this.shop_count = shop_count;
	}


	@Override
	public String toString() {
		return "User_To_Shop [shopcar_id=" + shopcar_id + ", shop_id="
				+ shop_id + ", user_id=" + user_id + ", shop_count="
				+ shop_count + "]";
	}

	





	
	
	
}
