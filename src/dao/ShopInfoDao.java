package dao;

import java.sql.Array;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.directory.SearchControls;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import datasource.MyDataSource;
import entity.Shop_Imgs;
import entity.Shop_Info;
import entity.Shop_Store_Info;
import entity.User_To_Shop;

public class ShopInfoDao {

	QueryRunner qRunner=new QueryRunner(new MyDataSource());
	//获取所有商品信息
	public List<Shop_Info> getAllShop() {
		List<Shop_Info> list=null;
		try {
			 list= qRunner.query("select * from shop_info", new BeanListHandler<Shop_Info>(Shop_Info.class));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	//通过商品id找到商品信息
	public Shop_Info getShopInfoById(int shopid) {
		Shop_Info shop=null;
		try {
			 shop= qRunner.query("select * from shop_info where shop_id=?", new BeanHandler<Shop_Info>(Shop_Info.class),shopid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return shop;
	}
	//通过商品id找到商品详情的图片
	public Shop_Imgs getShopImgs(int shopid) {
		Shop_Imgs imgs=null;
		try {
			 imgs= qRunner.query("select * from shop_imgs where shop_id=?", new BeanHandler<Shop_Imgs>(Shop_Imgs.class),shopid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return imgs;
	}
	//通过商品名称得到商品信息
	public Shop_Info getShopInfoByName(String shopname) {
		Shop_Info shop=null;
		try {
			 shop= qRunner.query("select * from shop_info where shop_name=?", new BeanHandler<Shop_Info>(Shop_Info.class),shopname);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return shop;
	}
	//通过商品id和用户id添加选中的商品
	public boolean addShop(int shop_id, int uname_id,int shop_count) {
		boolean flag=false;
		int update = -1;
		try {
			//判断原数据库中是否存在该商品
			User_To_Shop query = qRunner.query("select * from user_to_shop where shop_id=? and user_id=?", 
					new BeanHandler<User_To_Shop>(User_To_Shop.class),shop_id,uname_id);
			if(query!=null){
				update = qRunner.update("update user_to_shop set shop_count=shop_count+? where shop_id=? and user_id=?",
						shop_count,shop_id,uname_id);
			}else{
				update = qRunner.update("insert into user_to_shop values(shopcar_id,?,?,?)",shop_id,uname_id,shop_count);
			}
			if(update!=-1){
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	//通过用户id查到他有的商品
	public List<User_To_Shop> getAllShopCarInfo(int user_id) {
		List<User_To_Shop> lists=null;
		try {
			 lists= qRunner.query("select * from user_to_shop where user_id=?",
					 new BeanListHandler<User_To_Shop>(User_To_Shop.class),user_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lists;
	}
	//通过商品的id查找商品的所有信息
	public List<Shop_Info> getAllAddShopInfo(List<Integer> shopsid) {
		List<Shop_Info> lists=new ArrayList<Shop_Info>();
		for (Integer integer : shopsid) {
			Shop_Info shop=getShopInfoById((int)integer);
			lists.add(shop);
		}
		return lists;
	}
	//返回商品店铺的名称
	public String getShop_store_name(int shop_id) {
		String store_name="";
		try {
			Shop_Store_Info info = qRunner.query("select shop_store_name from shop_store_info where shop_id=?",
					new BeanHandler<Shop_Store_Info>(Shop_Store_Info.class),shop_id);
			if(info!=null){
				store_name=info.getShop_store_name();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return store_name;
	}
	//通过商铺名返回商铺信息
	public Shop_Store_Info getInfoByStoreName(String shop_store_name) {
		Shop_Store_Info shop_Store_Info=null;
		try {
			shop_Store_Info=qRunner.query("select * from shop_store_info where shop_store_name=?",new BeanHandler<Shop_Store_Info>(Shop_Store_Info.class)
					,shop_store_name);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shop_Store_Info;
	}
	public boolean isSameStore(Integer id1, Integer id2) {
		boolean flag=false;
		try {
			Shop_Store_Info info1 = qRunner.query("select shop_store_name from shop_store_info where shop_id=?",new BeanHandler<Shop_Store_Info>(Shop_Store_Info.class)
					,id1);
			Shop_Store_Info info2 = qRunner.query("select shop_store_name from shop_store_info where shop_id=?",new BeanHandler<Shop_Store_Info>(Shop_Store_Info.class)
					,id2);
			if(info1!=null & info2!=null){
				if(info1.getShop_store_name().equals(info2.getShop_store_name())){
					flag=true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
	public Shop_Store_Info getInfoByShopId(int shop_id) {
		Shop_Store_Info shop_Store_Info=null;
		try {
			shop_Store_Info = qRunner.query("select shop_store_name from shop_store_info where shop_id=?",new BeanHandler<Shop_Store_Info>(Shop_Store_Info.class)
						,shop_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shop_Store_Info;
	}
	//通过商品id去user_to_shop表中拿商品数量
	public int getShopCountById(int user_id,int shop_id) {
		int count=0;
		try {
			User_To_Shop query = qRunner.query("select shop_count from user_to_shop where user_id=? and shop_id=?",new BeanHandler<User_To_Shop>(User_To_Shop.class)
					,user_id,shop_id);
			if(query!=null){
				count=query.getShop_count();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}
	public int getShopStoreIdByShopId(int shop_id) {
		int shop_store_id=-1;
		try {
			Shop_Info query = qRunner.query("select shop_store_id from shop_info where shop_id=?",new BeanHandler<Shop_Info>(Shop_Info.class)
					,shop_id);
			if(query!=null){
				shop_store_id=query.getShop_store_id();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shop_store_id;
	}
	public Shop_Store_Info getShopStoreInfoByShopStoreId(int shop_store_id) {
		Shop_Store_Info shop_Store_Info=null;
		try {
			shop_Store_Info=qRunner.query("select * from shop_store_info where shop_store_id=?",new BeanHandler<Shop_Store_Info>(Shop_Store_Info.class)
					,shop_store_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return shop_Store_Info;
	}

}
