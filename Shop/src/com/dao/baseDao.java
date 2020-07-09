package com.dao;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.uitl.StringUtil;


public class baseDao<T> {

	protected Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=UTF-8", "root", "root");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

	protected void close(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	protected void close(PreparedStatement ps) {
		if (ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	protected void close(Connection con) {
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	protected void close(Connection con, PreparedStatement ps) {
		close(ps);
		close(con);
	}

	protected void close(Connection con, PreparedStatement ps, ResultSet rs) {
		close(rs);
		close(con, ps);
	}

	protected int executeUpdate(String sql, Object... args) {
		int c = 0;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = getConnection();
			ps = con.prepareStatement(sql);
			if (args != null) {
				for (int i = 0; i < args.length; i++) {
					ps.setObject(i + 1, args[i]);
				}
			}
			c = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(con, ps);
		}
		return c;
	}
	
	protected T executeSingleQuery(String sql,Class targetClass, Object... args){
		List<T> objects = new ArrayList<>();
		objects = executeQuery(sql, targetClass, args);
		if(objects.size() == 1){
			return objects.get(0);
		}else{
			return null;
		}
	}

	protected List<T> executeQuery(String sql,Class targetClass, Object... args){
		List<T> objects = new ArrayList<>();
		Connection con = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			ps = con.prepareStatement(sql);
			if(args != null){
				for (int i = 0; i < args.length; i++) {
					ps.setObject(i+1, args[i]);
				}
			}
			rs = ps.executeQuery();
			
			while(rs.next()){
				@SuppressWarnings("unchecked")
				T target = (T) targetClass.newInstance();
				Field[] fields = targetClass.getDeclaredFields();
				for (Field field : fields) {
					//��������set+�ֶ�����ĸ��д
					@SuppressWarnings("unchecked")
					Method setMethod = targetClass.getMethod("set"+StringUtil.upperFirstLetter(field.getName()), field.getType());
					Object value = rs.getObject(field.getName());
					setMethod.invoke(target, value);
				}
				
				objects.add(target);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(con, ps, rs);
		}
		return objects;
	}
	
}
