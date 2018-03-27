package com.hyn.domain;
/**
 * 图片的实体类
 * @author Administrator
 *
 */
public class Img {

	private int id;
	private String img_name;
	private String img_path;
	private String img_type;
	
	public Img() {
		super();
	}
	public Img(String img_name, String img_path, String img_type) {
		super();
		this.img_name = img_name;
		this.img_path = img_path;
		this.img_type = img_type;
	}
	public Img(int id, String img_name, String img_path, String img_type) {
		super();
		this.id = id;
		this.img_name = img_name;
		this.img_path = img_path;
		this.img_type = img_type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImg_name() {
		return img_name;
	}
	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}
	public String getImg_path() {
		return img_path;
	}
	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}
	public String getImg_type() {
		return img_type;
	}
	public void setImg_type(String img_type) {
		this.img_type = img_type;
	}
	
}
