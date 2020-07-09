package com.dao;

import java.util.List;

import com.vo.Banner;

public interface IBannerDao {
	
	List<Banner> selectBanner(int bannerQuale);
	
	int updateBanner(Banner banner);

}
