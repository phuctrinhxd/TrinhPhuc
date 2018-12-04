package DAO;

import java.sql.*;
import BEAN.KhachHang;

public class KhachHangDAO {

		public static boolean ThemKhachHang(Connection conn, KhachHang kh) 
		{
		PreparedStatement statement = null;
		String sql="insert into khachhang(MaKhachHang, HoTen, Email, SDT, DiaChi) values (?, ?, ?, ?, ?)";
		try {
			statement = conn.prepareStatement(sql);
			statement.setString(1, kh.getMaKhachHang());
			statement.setString(2, kh.getHoTen());
			statement.setString(3, kh.getEmail());
			statement.setString(4, kh.getSoDienThoai());
			statement.setString(5, kh.getDiaChi());
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
