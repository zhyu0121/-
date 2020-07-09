package com.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.dao.IGoodsDao;
import com.dao.baseDao;
import com.vo.Goods;

public class GoodsDao extends baseDao<Goods> implements IGoodsDao {

	@Override
	public List<Goods> selectAllGoods() {
		// TODO Auto-generated method stub
		String sql = "select * from goods";
		return executeQuery(sql, Goods.class);
	}

	@Override
	public Map<Integer,List<Goods>> selectGoodsBySearch(String search) {
		// TODO Auto-generated method stub
		String sql = "select * from goods where name = ? or category1 = ?";
		Map<Integer,List<Goods>> map = new LinkedHashMap<>();
		List<Goods> executeQuery = executeQuery(sql, Goods.class, search,search);
		int x = 0;
		for (int i = 0; i < executeQuery.size(); i++) {
			Goods goods = executeQuery.get(i);
			List<Goods> list = map.get(x);
			if (list==null) {
				list = new ArrayList<>();
			}
			list.add(goods);
			map.put(x, list);
			if (list.size()==5) {
				x ++;
			}
		}
		return map;
	}

	@Override
	public Goods selectOneGoods(int gId) {
		// TODO Auto-generated method stub
		String sql = "select * from goods where id = ?";
		return executeSingleQuery(sql, Goods.class, gId);
	}

	@Override
	public int addGoods(Goods goods) {
		// TODO Auto-generated method stub
		String sql = "insert into goods values(default,?,?,?,default,?,?,?,?,?,?,?,default,default)";
		return executeUpdate(sql, goods.getName(),goods.getPrice(),goods.getLinePrice(),goods.getBrand(),goods.getCategory1(),goods.getCategory2(),goods.getPic(),goods.getDetails(),goods.getSize1(),goods.getSize2());
	}
	

}
