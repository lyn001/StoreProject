package entity;

import java.io.Serializable;
import java.util.List;

public class Shop_Imgs implements Serializable {
	private int shop_id;
	private String img_01;
	private String img_02;
	private String img_03;
	private String img_04;
	private String img_05;
	private List<String> ImgLists;//用来装有多少张图片的集合
	
	public Shop_Imgs() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Shop_Imgs(int shop_id, List<String> imgLists) {
		super();
		this.shop_id = shop_id;
		ImgLists = imgLists;
	}

	public int getShop_id() {
		return shop_id;
	}
	public void setShop_id(int shop_id) {
		this.shop_id = shop_id;
	}
	public String getImg_01() {
		return img_01;
	}
	public void setImg_01(String img_01) {
		this.img_01 = img_01;
	}
	public String getImg_02() {
		return img_02;
	}
	public void setImg_02(String img_02) {
		this.img_02 = img_02;
	}
	public String getImg_03() {
		return img_03;
	}
	public void setImg_03(String img_03) {
		this.img_03 = img_03;
	}
	public String getImg_04() {
		return img_04;
	}
	public void setImg_04(String img_04) {
		this.img_04 = img_04;
	}
	public String getImg_05() {
		return img_05;
	}
	public void setImg_05(String img_05) {
		this.img_05 = img_05;
	}
	public List<String> getImgLists() {
		return ImgLists;
	}
	public void setImgLists(List<String> imgLists) {
		ImgLists = imgLists;
	}
	@Override
	public String toString() {
		return "Shop_Imgs [shop_id=" + shop_id + ", img_01=" + img_01
				+ ", img_02=" + img_02 + ", img_03=" + img_03 + ", img_04="
				+ img_04 + ", img_05=" + img_05 + ", ImgLists=" + ImgLists
				+ "]";
	}
	
	
}
