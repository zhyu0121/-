package com.vo;

import java.io.Serializable;
/**
 * 
 * logistics ʵ����
 * Sun Dec 15 16:53:56 SGT 2019
 * @author ���ֻ� 
 * 
 */ 
public class Logistics implements Serializable{
	private int id;
	private String logisticsCode;
	private String content;
	private String time;

	public Logistics(){
		super();
	}

	public Logistics(int id,String logisticsCode,String content,String time){
		super();
		this.id=id;
		this.logisticsCode=logisticsCode;
		this.content=content;
		this.time=time;
	}

	@Override
	public String toString(){
		return "Logistics [id=" + id + ", logisticsCode=" + logisticsCode + ", content=" + content + ", time=" + time + "]";
	}

	public void setId(int id){
		this.id=id;
	}

	public int getId(){
		return id;
	}

	public void setLogisticsCode(String logisticsCode){
		this.logisticsCode=logisticsCode;
	}

	public String getLogisticsCode(){
		return logisticsCode;
	}

	public void setContent(String content){
		this.content=content;
	}

	public String getContent(){
		return content;
	}

	public void setTime(String time){
		this.time=time;
	}

	public String getTime(){
		return time;
	}
}

