package com.hyn.domain;

public class Facility {

	private int id;
	private String fac_name;
	
	public Facility() {
		super();
	}
	public Facility(int id, String fac_name) {
		super();
		this.id = id;
		this.fac_name = fac_name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFac_name() {
		return fac_name;
	}
	public void setFac_name(String fac_name) {
		this.fac_name = fac_name;
	}
	
}
