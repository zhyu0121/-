package com.dao.impl;

import com.dao.IUserDao;
import com.dao.baseDao;
import com.vo.User;

public class UserDao extends baseDao<User> implements IUserDao {

	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		String sql = "insert into user values(default,?,?,?,?,?,default)";
		return executeUpdate(sql, user.getAccount(),user.getPassword(),user.getName(),user.getSex(),user.getPhone());
	}

	@Override
	public User findUser(String name, String password) {
		// TODO Auto-generated method stub
		String sql = "select * from user where account = ? and password = ?";
		if ("0".equals(password)) {
			sql = "select * from user where account = ?";
			return executeSingleQuery(sql, User.class, name);
		}else {
			return executeSingleQuery(sql, User.class, name,password);
		}

	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		String sql = "update user set password = ?,flag = ? where id = ?";
		return executeUpdate(sql, user.getPassword(),user.getFlag(),user.getId());
	}

}
