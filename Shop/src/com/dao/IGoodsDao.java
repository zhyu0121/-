package com.dao;

import java.util.List;
import java.util.Map;

import com.vo.Goods;

public interface IGoodsDao {
	
	List<Goods> selectAllGoods();

	Map<Integer,List<Goods>> selectGoodsBySearch(String search);
	
	Goods selectOneGoods(int gId);
	
	int addGoods(Goods goods);
}
