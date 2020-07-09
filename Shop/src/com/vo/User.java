package com.vo;

import java.io.Serializable;
/**
 * 
 * user ʵ����
 * Sun Dec 15 16:53:56 SGT 2019
 * @author ���ֻ� 
 * 
 */ 
public class User implements Serializable{
	private int id;
	private String account;
	private String password;
	private String name;
	private String sex;
	private String phone;
	private int flag;

	public User(){
		super();
	}

	public User(int id,String account,String password,String name,String sex,String phone,int flag){
		super();
		this.id=id;
		this.account=account;
		this.password=password;
		this.name=name;
		this.sex=sex;
		this.phone=phone;
		this.flag=flag;
	}

	@Override
	public String toString(){
		return "User [id=" + id + ", account=" + account + ", password=" + password + ", name=" + name + ", sex=" + sex + ", phone=" + phone + ", flag=" + flag + "]";
	}

	public void setId(int id){
		this.id=id;
	}

	public int getId(){
		return id;
	}

	public void setAccount(String account){
		this.account=account;
	}

	public String getAccount(){
		return account;
	}

	public void setPassword(String password){
		this.password=password;
	}

	public String getPassword(){
		return password;
	}

	public void setName(String name){
		this.name=name;
	}

	public String getName(){
		return name;
	}

	public void setSex(String sex){
		this.sex=sex;
	}

	public String getSex(){
		return sex;
	}

	public void setPhone(String phone){
		this.phone=phone;
	}

	public String getPhone(){
		return phone;
	}

	public void setFlag(int flag){
		this.flag=flag;
	}

	public int getFlag(){
		return flag;
	}
}

