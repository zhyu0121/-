package com.vo;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * banner ʵ����
 * Sun Dec 15 16:53:56 SGT 2019
 * @author ���ֻ� 
 * 
 */ 
public class Banner implements Serializable{
	private int id;
	private int gid;
	private String gpic;
	private int status;
	private int bannerQuale;
	private Date time;

	public Banner(){
		super();
	}

	public Banner(int id,int gid,String gpic,int status,int bannerQuale,Date time){
		super();
		this.id=id;
		this.gid=gid;
		this.gpic=gpic;
		this.status=status;
		this.bannerQuale=bannerQuale;
		this.time=time;
	}

	@Override
	public String toString(){
		return "Banner [id=" + id + ", gid=" + gid + ", gpic=" + gpic + ", status=" + status + ", bannerQuale=" + bannerQuale + ", time=" + time + "]";
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

	public void setGpic(String gpic){
		this.gpic=gpic;
	}

	public String getGpic(){
		return gpic;
	}

	public void setStatus(int status){
		this.status=status;
	}

	public int getStatus(){
		return status;
	}

	public void setBannerQuale(int bannerQuale){
		this.bannerQuale=bannerQuale;
	}

	public int getBannerQuale(){
		return bannerQuale;
	}

	public void setTime(Date time){
		this.time=time;
	}

	public Date getTime(){
		return time;
	}
}

