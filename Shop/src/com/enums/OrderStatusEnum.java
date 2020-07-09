package com.enums;

public enum OrderStatusEnum {

	O100("O100", "等待付款","未付款"),
	O101("O101", "等待发货","发货"),
	O102("O102", "已发货","待用户收货"),
	O104("O104", "交易取消","暂无"),
	O103("O103", "交易成功","已收货"), 
	;

	private String code;
	private String desc;
	private String tdString;

	public static OrderStatusEnum get(String code) {
		for (OrderStatusEnum Status : OrderStatusEnum.values()) {
			if (Status.code.equals(code)) {
				return Status;
			}
		}
		return null;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getTdString() {
		return tdString;
	}

	public void setTdString(String tdString) {
		this.tdString = tdString;
	}

	private OrderStatusEnum() {
	}

	private OrderStatusEnum(String code, String desc, String tdString) {
		this.code = code;
		this.desc = desc;
		this.tdString = tdString;
	}
	
}
