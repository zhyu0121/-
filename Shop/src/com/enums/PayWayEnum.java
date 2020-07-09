package com.enums;

/*
 * @Author  zhulinhua
 * @Description   支付方式枚举
 * @Date  2019/11/29
 * @Param  
 * @return  
 */
public enum PayWayEnum {

	ZFB("ZFB", "支付宝","img/zfb.png"),
	WXZF("WX", "微信","img/wx.png"), 
	MTZF("MT","美团支付","img/mt.png"), 
	WBQB("WBQB", "微博钱包","img/wb.png"), 
	JDZF("JDZF", "京东支付","img/jd.png"), 
	;

	private String code;
	private String name;
	private String pic;

	public static PayWayEnum get(String code) {
		for (PayWayEnum Status : PayWayEnum.values()) {
			if (Status.code.equals(code)) {
				return Status;
			}
		}
		return null;
	}

	private PayWayEnum() {
	}

	private PayWayEnum(String code, String name, String pic) {
		this.code = code;
		this.name = name;
		this.pic = pic;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}
	
}
