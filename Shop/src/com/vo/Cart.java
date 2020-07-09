package com.vo;

import java.io.Serializable;
/**
 * 
 * cart ʵ����
 * Sun Dec 15 16:53:56 SGT 2019
 * @author ���ֻ� 
 * 
 */ 
public class Cart implements Serializable{
	private int id;
	private int gid;
	private int uid;

	public Cart(){
		super();
	}

	public Cart(int id,int gid,int uid){
		super();
		this.id=id;
		this.gid=gid;
		this.uid=uid;
	}

	@Override
	public String toString(){
		return "Cart [id=" + id + ", gid=" + gid + ", uid=" + uid + "]";
	}

	public void setId(int id){
		this.id=id;
	}

	public int getId(){
		return id;
	}

	public void setGid(int gid){
		this.gid=gid;
	}

	public int getGid(){
		return gid;
	}

	public void setUid(int uid){
		this.uid=uid;
	}

	public int getUid(){
		return uid;
	}
}

