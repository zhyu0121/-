package com.uitl;

import com.enums.OrderCodeOrlogisticsCodeEnum;

public class CreateOrderCodeUtil {
	
    /*
     * @Author  zhulinhua
     * @Description   生成订单号以及物流单号
     * @Date  2019/11/30
     * @Param  
     * @return  java.lang.String
     */
	@SuppressWarnings("unused")
	private static String createOrderCode(OrderCodeOrlogisticsCodeEnum codeEnum){
		String code = codeEnum.getCode() + System.currentTimeMillis()+"";
		return code;
	}
	
}
