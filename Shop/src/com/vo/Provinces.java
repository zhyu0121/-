package com.vo;

import java.io.Serializable;
/**
 * 
 * provinces ʵ����
 * Sun Dec 15 16:53:56 SGT 2019
 * @author ���ֻ� 
 * 
 */ 
public class Provinces implements Serializable{
	private int id;
	private String provinceCode;
	private String province;
	private String cityCode;
	private String city;

	public Provinces(){
		super();
	}

	public Provinces(int id,String provinceCode,String province,String cityCode,String city){
		super();
		this.id=id;
		this.provinceCode=provinceCode;
		this.province=province;
		this.cityCode=cityCode;
		this.city=city;
	}

	@Override
	public String toString(){
		return "Provinces [id=" + id + ", provinceCode=" + provinceCode + ", province=" + province + ", cityCode=" + cityCode + ", city=" + city + "]";
	}

	public void setId(int id){
		this.id=id;
	}

	public int getId(){
		return id;
	}

	public void setProvinceCode(String provinceCode){
		this.provinceCode=provinceCode;
	}

	public String getProvinceCode(){
		return provinceCode;
	}

	public void setProvince(String province){
		this.province=province;
	}

	public String getProvince(){
		return province;
	}

	public void setCityCode(String cityCode){
		this.cityCode=cityCode;
	}

	public String getCityCode(){
		return cityCode;
	}

	public void setCity(String city){
		this.city=city;
	}

	public String getCity(){
		return city;
	}
}

