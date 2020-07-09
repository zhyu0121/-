package com.vo;

import java.io.Serializable;
/**
 * 
 * order ʵ����
 * Sun Dec 15 16:53:56 SGT 2019
 * @author ���ֻ� 
 * 
 */ 
public class Order implements Serializable{
	private int id;
	private String orderCode;
	private int uid;
	private int sum;
	private int gid;
	private int gprice;
	private String gname;
	private int payWay;
	private String status;
	private String logisticsCode;
	private String remark;
	private String createTime;

	public Order(){
		super();
	}

	public Order(int id,String orderCode,int uid,int sum,int gid,int gprice,String gname,int payWay,String status,String logisticsCode,String remark,String createTime){
		super();
		this.id=id;
		this.orderCode=orderCode;
		this.uid=uid;
		this.sum=sum;
		this.gid=gid;
		this.gprice=gprice;
		this.gname=gname;
		this.payWay=payWay;
		this.status=status;
		this.logisticsCode=logisticsCode;
		this.remark=remark;
		this.createTime=createTime;
	}

	@Override
	public String toString(){
		return "Order [id=" + id + ", orderCode=" + orderCode + ", uid=" + uid + ", sum=" + sum + ", gid=" + gid + ", gprice=" + gprice + ", gname=" + gname + ", payWay=" + payWay + ", status=" + status + ", logisticsCode=" + logisticsCode + ", remark=" + remark + ", createTime=" + createTime + "]";
	}

	public void setId(int id){
		this.id=id;
	}

	public int getId(){
		return id;
	}

	public void setOrderCode(String orderCode){
		this.orderCode=orderCode;
	}

	public String getOrderCode(){
		return orderCode;
	}

	public void setUid(int uid){
		this.uid=uid;
	}

	public int getUid(){
		return uid;
	}

	public void setSum(int sum){
		this.sum=sum;
	}

	public int getSum(){
		return sum;
	}

	public void setGid(int gid){
		this.gid=gid;
	}

	public int getGid(){
		return gid;
	}

	public void setGprice(int gprice){
		this.gprice=gprice;
	}

	public int getGprice(){
		return gprice;
	}

	public void setGname(String gname){
		this.gname=gname;
	}

	public String getGname(){
		return gname;
	}

	public void setPayWay(int payWay){
		this.payWay=payWay;
	}

	public int getPayWay(){
		return payWay;
	}

	public void setStatus(String status){
		this.status=status;
	}

	public String getStatus(){
		return status;
	}

	public void setLogisticsCode(String logisticsCode){
		this.logisticsCode=logisticsCode;
	}

	public String getLogisticsCode(){
		return logisticsCode;
	}

	public void setRemark(String remark){
		this.remark=remark;
	}

	public String getRemark(){
		return remark;
	}

	public void setCreateTime(String createTime){
		this.createTime=createTime;
	}

	public String getCreateTime(){
		return createTime;
	}
}

