package com.hyn.domain;

public class House {

	private int id;
	private String rental_mode;//出租类型
	private String village_name;//小区名字
	private String address;//房屋地址
	private int house_room;//室
	private int living_room;	//厅
	private int house_toilet;//卫
	private String house_direction;	//朝向
	private String decoration;//装修情况
	private String house_type;//房屋类型
	private int rental;//租金
	private String house_title; //房源标题
	private String house_intro;//房源简介
	private String image1;//图片1
	private String image2;//图片2
	private String image3;//图片3
	private int u_id;//用户
	private int house_area;//房间的名字
	
	public House() {
	}
	public House(String rental_mode, String village_name, String address,
			int house_room, int living_room, int house_toilet,
			String house_direction, String decoration, String house_type,
			int rental, String house_title, String house_intro, String image1,
			String image2, String image3, int u_id, int house_area) {
		super();
		this.rental_mode = rental_mode;
		this.village_name = village_name;
		this.address = address;
		this.house_room = house_room;
		this.living_room = living_room;
		this.house_toilet = house_toilet;
		this.house_direction = house_direction;
		this.decoration = decoration;
		this.house_type = house_type;
		this.rental = rental;
		this.house_title = house_title;
		this.house_intro = house_intro;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.u_id = u_id;
		this.house_area = house_area;
	}
	
	public House(int id, String rental_mode, String village_name,
			String address, int house_room, int living_room, int house_toilet,
			String house_direction, String decoration, String house_type,
			int rental, String house_title, String house_intro, String image1,
			String image2, String image3, int u_id, int house_area) {
		super();
		this.id = id;
		this.rental_mode = rental_mode;
		this.village_name = village_name;
		this.address = address;
		this.house_room = house_room;
		this.living_room = living_room;
		this.house_toilet = house_toilet;
		this.house_direction = house_direction;
		this.decoration = decoration;
		this.house_type = house_type;
		this.rental = rental;
		this.house_title = house_title;
		this.house_intro = house_intro;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
		this.u_id = u_id;
		this.house_area = house_area;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRental_mode() {
		return rental_mode;
	}
	public void setRental_mode(String rental_mode) {
		this.rental_mode = rental_mode;
	}
	public String getVillage_name() {
		return village_name;
	}
	public void setVillage_name(String village_name) {
		this.village_name = village_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getHouse_room() {
		return house_room;
	}
	public void setHouse_room(int house_room) {
		this.house_room = house_room;
	}
	public int getLiving_room() {
		return living_room;
	}
	public void setLiving_room(int living_room) {
		this.living_room = living_room;
	}
	public int getHouse_toilet() {
		return house_toilet;
	}
	public void setHouse_toilet(int house_toilet) {
		this.house_toilet = house_toilet;
	}
	public String getHouse_direction() {
		return house_direction;
	}
	public void setHouse_direction(String house_direction) {
		this.house_direction = house_direction;
	}
	public String getDecoration() {
		return decoration;
	}
	public void setDecoration(String decoration) {
		this.decoration = decoration;
	}
	public String getHouse_type() {
		return house_type;
	}
	public void setHouse_type(String house_type) {
		this.house_type = house_type;
	}
	public int getRental() {
		return rental;
	}
	public void setRental(int rental) {
		this.rental = rental;
	}
	public String getHouse_title() {
		return house_title;
	}
	public void setHouse_title(String house_title) {
		this.house_title = house_title;
	}
	public String getHouse_intro() {
		return house_intro;
	}
	public void setHouse_intro(String house_intro) {
		this.house_intro = house_intro;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public String getImage3() {
		return image3;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public int getHouse_area() {
		return house_area;
	}
	public void setHouse_area(int house_area) {
		this.house_area = house_area;
	}
	@Override
	public String toString() {
		return "House [id=" + id + ", rental_mode=" + rental_mode + ", village_name=" + village_name + ", address="
				+ address + ", house_room=" + house_room + ", living_room=" + living_room + ", house_toilet="
				+ house_toilet + ", house_direction=" + house_direction + ", decoration=" + decoration + ", house_type="
				+ house_type + ", rental=" + rental + ", house_title=" + house_title + ", house_intro=" + house_intro
				+ ", image1=" + image1 + ", image2=" + image2 + ", image3=" + image3 + ", u_id=" + u_id
				+ ", house_area=" + house_area + "]";
	}
	
	
}
