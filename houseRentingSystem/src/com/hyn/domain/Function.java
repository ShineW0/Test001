package com.hyn.domain;
/**
 * 用户权限的实体类
 * @author Administrator
 *
 */
public class Function {
	private int id;	//权限的编号
	private String fun_name;//权限的名字
	private int state;//数据字典的状态
	public Function() {}
	public Function(String fun_name, int did) {
		this.fun_name = fun_name;
	}
	public Function(int id, String fun_name, int did) {
		this.id = id;
		this.fun_name = fun_name;
	}
	public Function(int id, String fun_name, int did, int state) {
		super();
		this.id = id;
		this.fun_name = fun_name;
		this.state = state;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFun_name() {
		return fun_name;
	}
	public void setFun_name(String fun_name) {
		this.fun_name = fun_name;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	
}
