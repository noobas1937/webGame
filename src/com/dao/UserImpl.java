package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.User;
import com.util.DBUtils;
import com.util.JdbcUtil;

public class UserImpl implements IUserDao {

	public void addUser(String username,String password) {
		String sql="insert into tb_user (username,password) values(?,?)";
		DBUtils.executeDML(sql, new Object[] {username,password});
	}


	@Override
	public List<User> selectCloseUser() {
		String sql = "select id,username,password,credit,cday from tb_user"
				+ " where cday > 0";
		return DBUtils.executeQuery(sql, null, User.class);
	}
	
	@Override
	public List<User> selectAllUser() {
		String sql = "select id,username,password,credit,cday from tb_user";

		return DBUtils.executeQuery(sql, null, User.class);
	}
	
	@Override
	public User selectUserById(Integer id) {
		String sql = "select  id,username,password,credit,cday from tb_user where id="+id;
		return DBUtils.executeOneQuery(sql, null, User.class);
	}
	
	@Override
	public Integer deleteUserByIds(int[] ids) {
		String sql = "delete tb_user where id in (";
		for (int id : ids) {
			sql=sql + id+',';
		}
		int index = sql.lastIndexOf(',');
		String endsql = sql.substring(0, index)+')';
		System.out.println(endsql);
		
		return DBUtils.executeDML(endsql, null);
	}
	
	@Override
	public List<User> selectUserByName(String username) {
		String sql = "select id,username,password,credit,cday from tb_user"
				+ " where username like '%"+username+"%'";
		return DBUtils.executeQuery(sql, null, User.class);
	}
	
	@Override
	public List<User> selectCloseUserByName(String username) {
		String sql = "select id,username,password,credit,cday from tb_user"
				+ " where cday > 0 and username like '%"+username+"%'";
		return DBUtils.executeQuery(sql, null, User.class);
	}
	
	
	@Override
	public Integer updateUserByIds(Integer id,Object params[]) {
		String sql = "update tb_user set username=?,password=?,credit=?,cday = ? where id ="+id;
		return DBUtils.executeDML(sql, params);
	}

	@Override
	public int selectTotalCount() {
		String sql = "select count(*) from tb_user";
		Connection conn = DBUtils.getConn();
		PreparedStatement ps = null;
		ResultSet rs =null;
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}finally {
			DBUtils.close(rs, ps, conn);
		}
		return 0;
	}

	@Override
	public List<User> pageSelectUser(Integer nowpage, Integer pageCount) {
		String sql = "select id,username,password,credit,cday from tb_user limit "+(nowpage-1)*pageCount+","+pageCount;
		
		return DBUtils.executeQuery(sql, null, User.class);
	}

	@Override
	public List<User> pageSelectCloseUser(Integer nowpage, Integer pageCount) {
		String sql = "select id,username,password,credit,cday from tb_user where cday > 0 limit "+(nowpage-1)*pageCount+","+pageCount;
		return DBUtils.executeQuery(sql, null, User.class);
	}


	@Override
	public List<User> query(String username) {
		String sql="select * from tb_user where username=? and cday = 0";
		List<Object> params=new ArrayList<Object>();
		params.add(username);
		JdbcUtil jdbc=new JdbcUtil();
		List<User> user=jdbc.queryPreparedStatement(sql, params, User.class);
		jdbc.close();
		return user;
	}


	@Override
	public void addHistoryUser(String heroname) {
		Integer heronum = null;
		String sql1 = "select id from tb_user where username = ?";
		Connection conn = DBUtils.getConn();
		ResultSet rs = null;
		PreparedStatement ps = null;
		
		try {
			ps = conn.prepareStatement(sql1);
			ps.setObject(1, heroname);
			rs = ps.executeQuery();
			if(rs.next()) {
				heronum = rs.getInt("id");
				System.out.println(heronum);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtils.close(rs, ps, conn);
		}
		
		String sql="insert into history (heronum,heroname) values(?,?)";
		DBUtils.executeDML(sql, new Object[] {heronum,heroname});
	}



	

}
