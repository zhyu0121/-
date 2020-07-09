package com.vo;

import java.io.Serializable;
/**
 * 
 * address ʵ����
 * Sun Dec 15 16:53:56 SGT 2019
 * @author ���ֻ� 
 * 
 */ 
public class Address implements Serializable{
	private int id;
	private int uid;
	private String address;
	private String orderCode;

	public Address(){
		super();
	}

	public Address(int id,int uid,String address,String orderCode){
		super();
		this.id=id;
		this.uid=uid;
		this.address=address;
		this.orderCode=orderCode;
	}

	@Override
	public String toString(){
		return "Address [id=" + id + ", uid=" + uid + ", address=" + address + ", orderCode=" + orderCode + "]";
	}

	public void setId(int id){
		this.id=id;
	}

	public int getId(){
		return id;
	}

	public void setUid(int uid){
		this.uid=uid;
	}

	public int getUid(){
		return uid;
	}

	public void setAddress(String address){
		this.address=address;
	}

	public String getAddress(){
		return address;
	}

	public void setOrderCode(String orderCode){
		this.orderCode=orderCode;
	}

	public String getOrderCode(){
		return orderCode;
	}
}

