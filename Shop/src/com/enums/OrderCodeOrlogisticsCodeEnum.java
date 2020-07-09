package com.enums;

public enum OrderCodeOrlogisticsCodeEnum {
	
	OC("20", "订单开头"),
	LC("30", "物流开头"),
	;

	private String code;
	private String desc;

	public static OrderCodeOrlogisticsCodeEnum get(String code) {
		for (OrderCodeOrlogisticsCodeEnum Status : OrderCodeOrlogisticsCodeEnum.values()) {
			if (Status.code.equals(code)) {
				return Status;
			}
		}
		return null;
	}

	private OrderCodeOrlogisticsCodeEnum(String code, String desc) {
		this.code = code;
		this.desc = desc;
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
	
}
