package com.enums;

public enum OrderStatusEnum {

	O100("O100", "�ȴ�����","δ����"),
	O101("O101", "�ȴ�����","����"),
	O102("O102", "�ѷ���","���û��ջ�"),
	O104("O104", "����ȡ��","����"),
	O103("O103", "���׳ɹ�","���ջ�"), 
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
