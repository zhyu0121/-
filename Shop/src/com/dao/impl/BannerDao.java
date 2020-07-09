package com.dao.impl;

import java.util.List;

import com.dao.IBannerDao;
import com.dao.baseDao;
import com.vo.Banner;

public class BannerDao extends baseDao<Banner> implements IBannerDao {

	@Override
	public List<Banner> selectBanner(int bannerQuale) {
		// TODO Auto-generated method stub
		String sql = "select * from banner where bannerQuale = ?";
		return executeQuery(sql, Banner.class, bannerQuale);
	}

	@Override
	public int updateBanner(Banner banner) {
		// TODO Auto-generated method stub
		Integer id = banner.getId();
		String sql = "";
		if (null != id) {
			sql = "update banner set status = ?  where id = ?";
			return executeUpdate(sql, banner.getStatus(),id);
		}else {
			sql = "insert into banner values(default,?,?,default,?,?)";
			return executeUpdate(sql, banner.getGid(),banner.getGpic(),banner.getBannerQuale(),banner.getTime());
		}

	}

}
