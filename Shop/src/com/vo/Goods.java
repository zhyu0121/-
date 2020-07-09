package com.vo;

import java.io.Serializable;
/**
 * 
 * goods ʵ����
 * Sun Dec 15 16:53:56 SGT 2019
 * @author ���ֻ� 
 * 
 */ 
public class Goods implements Serializable{
	private int id;
	private String name;
	private int price;
	private int linePrice;
	private int brandId;
	private String brand;
	private String category1;
	private String category2;
	private String pic;
	private String details;
	private String size1;
	private String size2;
	private String source;
	private String store;

	public Goods(){
		super();
	}

	public Goods(int id,String name,int price,int linePrice,int brandId,String brand,String category1,String category2,String pic,String details,String size1,String size2,String source,String store){
		super();
		this.id=id;
		this.name=name;
		this.price=price;
		this.linePrice=linePrice;
		this.brandId=brandId;
		this.brand=brand;
		this.category1=category1;
		this.category2=category2;
		this.pic=pic;
		this.details=details;
		this.size1=size1;
		this.size2=size2;
		this.source=source;
		this.store=store;
	}

	@Override
	public String toString(){
		return "Goods [id=" + id + ", name=" + name + ", price=" + price + ", linePrice=" + linePrice + ", brandId=" + brandId + ", brand=" + brand + ", category1=" + category1 + ", category2=" + category2 + ", pic=" + pic + ", details=" + details + ", size1=" + size1 + ", size2=" + size2 + ", source=" + source + ", store=" + store + "]";
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

	public void setPrice(int price){
		this.price=price;
	}

	public int getPrice(){
		return price;
	}

	public void setLinePrice(int linePrice){
		this.linePrice=linePrice;
	}

	public int getLinePrice(){
		return linePrice;
	}

	public void setBrandId(int brandId){
		this.brandId=brandId;
	}

	public int getBrandId(){
		return brandId;
	}

	public void setBrand(String brand){
		this.brand=brand;
	}

	public String getBrand(){
		return brand;
	}

	public void setCategory1(String category1){
		this.category1=category1;
	}

	public String getCategory1(){
		return category1;
	}

	public void setCategory2(String category2){
		this.category2=category2;
	}

	public String getCategory2(){
		return category2;
	}

	public void setPic(String pic){
		this.pic=pic;
	}

	public String getPic(){
		return pic;
	}

	public void setDetails(String details){
		this.details=details;
	}

	public String getDetails(){
		return details;
	}

	public void setSize1(String size1){
		this.size1=size1;
	}

	public String getSize1(){
		return size1;
	}

	public void setSize2(String size2){
		this.size2=size2;
	}

	public String getSize2(){
		return size2;
	}

	public void setSource(String source){
		this.source=source;
	}

	public String getSource(){
		return source;
	}

	public void setStore(String store){
		this.store=store;
	}

	public String getStore(){
		return store;
	}
}

