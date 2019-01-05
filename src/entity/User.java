package entity;

import java.io.Serializable;

public class User implements Serializable {
	private int id;
	private String uname;
	private String upwd;
	private String name;
	private String sex;
	private int age;
	private String tellphone;
	private int phone;
	private String addres;
	private String bankid;
	private String street;
	private String childphone;
	private String childname;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String uname, String upwd, String name, String sex, int age,
			String tellphone, int phone, String addres, String bankid,
			String street, String childphone, String childname) {
		super();
		this.uname = uname;
		this.upwd = upwd;
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.tellphone = tellphone;
		this.phone = phone;
		this.addres = addres;
		this.bankid = bankid;
		this.street = street;
		this.childphone = childphone;
		this.childname = childname;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getTellphone() {
		return tellphone;
	}
	public void setTellphone(String tellphone) {
		this.tellphone = tellphone;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getAddres() {
		return addres;
	}
	public void setAddres(String addres) {
		this.addres = addres;
	}
	public String getBankid() {
		return bankid;
	}
	public void setBankid(String bankid) {
		this.bankid = bankid;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getChildphone() {
		return childphone;
	}
	public void setChildphone(String childphone) {
		this.childphone = childphone;
	}
	public String getChildname() {
		return childname;
	}
	public void setChildname(String childname) {
		this.childname = childname;
	}
	@Override
	public String toString() {
		return "User [uname=" + uname + ", upwd=" + upwd + ", name=" + name
				+ ", sex=" + sex + ", age=" + age + ", tellphone=" + tellphone
				+ ", phone=" + phone + ", addres=" + addres + ", bankid="
				+ bankid + ", street=" + street + ", childphone=" + childphone
				+ ", childname=" + childname + "]";
	}
	
	
}
