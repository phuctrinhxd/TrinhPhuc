package DAO;

import java.sql.*;
import BEAN.Users;

public class UsersDAO {
	
	public static Users LayTaiKhoan(Connection conn, String username, String pass) {
		
		String sql = "select * from user where ID = ? and Pass = ?";
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement(sql);
			statement.setString(1, username);
			statement.setString(2, pass);
			ResultSet rs = statement.executeQuery();
			if(rs.next()) {
				int quyen = rs.getInt("Quyen");
				Users user = new Users(username, pass, quyen);
				rs.close();
				statement.close();
				return user;
			}
			rs.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return null;
	}

	public static boolean ThemTaiKhoan(Connection conn, Users user) 
	{
		PreparedStatement statement = null;
		String sql="insert into user(id,pass,quyen) values (?, ?, ?)";
		try {
			statement = conn.prepareStatement(sql);
			statement.setString(1, user.getId());
			statement.setString(2, user.getPass());
			statement.setInt(3, 1);
			if(statement.executeUpdate()!=0) {
				statement.close();
				return true;
			}
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return false;
	}
}
