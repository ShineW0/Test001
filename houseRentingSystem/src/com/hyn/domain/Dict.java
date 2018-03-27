package com.hyn.domain;

import java.util.List;

/**
 * 数据字典的实体
 * @author Administrator
 *
 */
public class Dict {

	private int id;//主键
	private String data_name;//数据名称
	private String data_code;//数据编码
	private String data_type;//数据类型
	private int data_pared;//数据的父级
	private List<Function> funList;
	public Dict() {}
	public Dict(String data_name, String data_code, String data_type,
			int data_pared) {
		this.data_name = data_name;
		this.data_code = data_code;
		this.data_type = data_type;
		this.data_pared = data_pared;
	}
	public Dict(int id, String data_name, String data_code, String data_type,
			int data_pared) {
		this.id = id;
		this.data_name = data_name;
		this.data_code = data_code;
		this.data_type = data_type;
		this.data_pared = data_pared;
	}
	public Dict(int id, String data_name, String data_code, String data_type,
			int data_pared, List<Function> funList) {
		super();
		this.id = id;
		this.data_name = data_name;
		this.data_code = data_code;
		this.data_type = data_type;
		this.data_pared = data_pared;
		this.funList = funList;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getData_name() {
		return data_name;
	}
	public void setData_name(String data_name) {
		this.data_name = data_name;
	}
	public String getData_code() {
		return data_code;
	}
	public void setData_code(String data_code) {
		this.data_code = data_code;
	}
	public String getData_type() {
		return data_type;
	}
	public void setData_type(String data_type) {
		this.data_type = data_type;
	}
	public int getData_pared() {
		return data_pared;
	}
	public void setData_pared(int data_pared) {
		this.data_pared = data_pared;
	}
	public List<Function> getFunList() {
		return funList;
	}
	public void setFunList(List<Function> funList) {
		this.funList = funList;
	}
	
	
}
