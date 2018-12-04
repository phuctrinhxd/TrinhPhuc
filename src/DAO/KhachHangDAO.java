package DAO;

import java.sql.*;
import BEAN.KhachHang;

public class KhachHangDAO {

	public static KhachHang LayKhachHang(Connection conn, String makh) {
		
		String sql = "select * from khachhang where MaKhachHang = ?";
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement(sql);
			statement.setString(1, makh);
			ResultSet rs = statement.executeQuery();
			if(rs.next()) {
				String hoten = rs.getNString("HoTen");
				String mail = rs.getString("Email");
				String sdt = rs.getString("SDT");
				String diachi = rs.getNString("DiaChi");
				KhachHang kh = new KhachHang(makh, hoten, mail, sdt, diachi);
				rs.close();
				statement.close();
				return kh;
			}
			rs.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return null;
	}
	
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
