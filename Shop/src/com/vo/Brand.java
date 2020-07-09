package com.vo;

import java.io.Serializable;
/**
 * 
 * brand ʵ����
 * Sun Dec 15 16:53:56 SGT 2019
 * @author ���ֻ� 
 * 
 */ 
public class Brand implements Serializable{
	private int id;
	private String name;
	private int status;

	public Brand(){
		super();
	}

	public Brand(int id,String name,int status){
		super();
		this.id=id;
		this.name=name;
		this.status=status;
	}

	@Override
	public String toString(){
		return "Brand [id=" + id + ", name=" + name + ", status=" + status + "]";
	}

	public void setId(int id){
		this.id=id;
	}

	public int getId(){
		return id;
	}

	public void setName(String name){
		this.name=name;
	}

	public String getName(){
		return name;
	}

	public void setStatus(int status){
		this.status=status;
	}

	public int getStatus(){
		return status;
	}
}

