package com.dao;

import com.vo.User;

public interface IUserDao {
	
	int addUser(User user);
	
	User findUser(String name,String password);
	
	int updateUser(User user);
}
