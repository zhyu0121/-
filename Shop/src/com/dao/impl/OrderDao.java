package com.dao.impl;

import java.util.List;

import com.dao.IOrderDao;
import com.dao.baseDao;
import com.vo.Order;

public class OrderDao extends baseDao<Order> implements IOrderDao{

	@Override
	public List<Order> selectOrders(int uid) {
		// TODO Auto-generated method stub
		String sql = "select * from `order` where uid = ?";
		if (0==uid) {
			sql = "select * from `order`";
			return executeQuery(sql, Order.class);
		}else {
			return executeQuery(sql, Order.class,uid);
		}

	}

	@Override
	public Order selectOneOrderById(int id) {
		// TODO Auto-generated method stub
		String sql = "select * from `order` where id = ?";
		return executeSingleQuery(sql, Order.class, id);
	}

	@Override
	public int addOrder(Order order) {
		// TODO Auto-generated method stub
		String sql = "insert into `order` values(default,?,?,?,?,?,?,default,default,default,default,?)";
		return executeUpdate(sql, order.getOrderCode(),order.getUid(),order.getSum(),order.getGid(),order.getGprice(),order.getGname(),order.getCreateTime());
	}
	
	public static void main(String[] args) {
		OrderDao orderDao = new OrderDao();
		Order order = new Order();
//		Order [id=0, orderCode=201576405132210, uid=13, sum=2, gid=1, gprice=3299, gname=华为 HUAWEI Mate20 X (5G) 7nm工艺5G旗舰芯片全面屏超大广角徕卡三摄8GB+256GB宝石蓝5G双模全, payWay=0, status=null, logisticsCode=null, remark=null, createTime=2019-12-15 18:18:52]
		order.setCreateTime("2019-12-15 18:18:52");
		order.setUid(13);
		order.setGid(1);
		order.setGname("华为 HUAWEI Mate20 X (5G) 7nm工艺5G旗舰芯片全面屏超大广角徕卡三摄8GB+256GB宝石蓝5G双模全");
		order.setGprice(1000);
		order.setOrderCode("201576405132210");
		orderDao.addOrder(order);
	}

	@Override
	public int updateOrder(Order order) {
		// TODO Auto-generated method stub
		String sqString = "update `order` set status = ? where id = ?";
		return executeUpdate(sqString, order.getStatus(),order.getId());
	}

}
