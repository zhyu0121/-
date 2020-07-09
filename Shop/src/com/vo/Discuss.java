package com.vo;

import java.io.Serializable;
/**
 * 
 * discuss ʵ����
 * Sun Dec 15 16:53:56 SGT 2019
 * @author ���ֻ� 
 * 
 */ 
public class Discuss implements Serializable{
	private int id;
	private int gid;
	private String orderCode;
	private String time;
	private String content;
	private int status;

	public Discuss(){
		super();
	}

	public Discuss(int id,int gid,String orderCode,String time,String content,int status){
		super();
		this.id=id;
		this.gid=gid;
		this.orderCode=orderCode;
		this.time=time;
		this.content=content;
		this.status=status;
	}

	@Override
	public String toString(){
		return "Discuss [id=" + id + ", gid=" + gid + ", orderCode=" + orderCode + ", time=" + time + ", content=" + content + ", status=" + status + "]";
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

	public void setOrderCode(String orderCode){
		this.orderCode=orderCode;
	}

	public String getOrderCode(){
		return orderCode;
	}

	public void setTime(String time){
		this.time=time;
	}

	public String getTime(){
		return time;
	}

	public void setContent(String content){
		this.content=content;
	}

	public String getContent(){
		return content;
	}

	public void setStatus(int status){
		this.status=status;
	}

	public int getStatus(){
		return status;
	}
}

