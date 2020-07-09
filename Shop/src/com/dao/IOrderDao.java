package com.dao;

import java.util.List;

import com.vo.Order;

public interface IOrderDao {
	
	List<Order> selectOrders(int uid);
	
	Order selectOneOrderById(int id);
	
	int addOrder(Order order);
	
	int updateOrder(Order order);

}
