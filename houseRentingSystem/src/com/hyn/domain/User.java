package com.hyn.domain;
/**
 * 用户的实体类
 * @author Administrator
 *
 */
public class User {
	private int id;
	private String userName;
	private String passWord;
	private String type;
	private int age;
	private String sex;
	private String email;
	private String phone;
	public User() {}
	public User(String userName, String passWord, String type) {
		this.userName = userName;
		this.passWord = passWord;
		this.type = type;
	}
	
	public User(int id, String userName, String passWord, String type) {
		super();
		this.id = id;
		this.userName = userName;
		this.passWord = passWord;
		this.type = type;
	}
	public User(String userName, String passWord, int age, String sex,
			String email, String phone) {
		this.userName = userName;
		this.passWord = passWord;
		this.age = age;
		this.sex = sex;
		this.email = email;
		this.phone = phone;
	}
	public User(String userName, String passWord, String type, int age,
			String sex, String email, String phone) {
		this.userName = userName;
		this.passWord = passWord;
		this.type = type;
		this.age = age;
		this.sex = sex;
		this.email = email;
		this.phone = phone;
	}
	public User(int id, String userName, String passWord, String type, int age,
			String sex, String email, String phone) {
		this.id = id;
		this.userName = userName;
		this.passWord = passWord;
		this.type = type;
		this.age = age;
		this.sex = sex;
		this.email = email;
		this.phone = phone;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
