package DAO;

import java.sql.*;
import BEAN.*;

import BEAN.SanPham;

public class DonHangDAO {

	public static int TongTienDonHang(Connection conn, String madh) {
		
		String sql = "select SUM(SoLuong * DonGia) as tong from chitietdonhang where MaDonHang = '" + madh + "'";
		int tong=0;
		Statement statement;
		try {
			statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			if (rs.next())
			{
				tong = rs.getInt("tong");
			}
			rs.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return tong;
	}
	
	public static int TongSanPham(Connection conn, String madh) {
		
		String sql = "select SUM(SoLuong) as tong from chitietdonhang where MaDonHang = '" + madh + "'";
		int tong=0;
		Statement statement;
		try {
			statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			if (rs.next())
			{
				tong = rs.getInt("tong");
			}
			rs.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return tong;
	}
	
	public static void ThemDonHang(Connection conn, DonHang dh) {
		
		String sql= "insert into donhang(MaDonHang, MaNguoiDat, TinhTrang) values ( ?, ?, ?);";
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement(sql);
			statement.setString(1, dh.getMaDonHang());
			statement.setString(2, dh.getMaNguoiDat());
			statement.setString(3, dh.getTinhTrang());
			statement.executeUpdate();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
	
	public static void ThemChiTietDonHang(Connection conn, ChiTietDonHang ctdh) {
		
		String sql= "insert into chitietdonhang(MaChiTietDonHang, MaDonHang, MaSanPham, Size, SoLuong, DonGia) values ( ?, ?, ?, ?, ?, ?);";
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement(sql);
			statement.setString(1, ctdh.getMaChiTietDonHang());
			statement.setString(2, ctdh.getMaDonHang());
			statement.setString(3, ctdh.getSanPham().getMaSanPham());
			statement.setInt(4, ctdh.getSize());
			statement.setInt(5, ctdh.getSoLuong());
			statement.setInt(6, ctdh.getDonGia());
			statement.executeUpdate();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public static void SuaChiTietDonHang(Connection conn, String mactdh, int soluong) {
		
		String sql= "update chitietdonhang set soluong = ? where MaChiTietDonHang = ?;";
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement(sql);
			statement.setInt(1, soluong);
			statement.setString(2, mactdh);
			statement.executeUpdate();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public static void XoaChiTietDonHang(Connection conn, String mactdh) {
		
		String sql= "delete from chitietdonhang where MaChiTietDonHang = ?;";
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement(sql);
			statement.setString(1, mactdh);
			statement.executeUpdate();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public static void SuaDonHang(Connection conn, DonHang dh) {
		
		String sql= "update donhang set Ngay = ? , MaNguoiDat = ? , TongTien = ? , TinhTrang = ? where MaDonHang = ?";
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement(sql);
			statement.setDate(1, dh.getNgay());
			statement.setString(2, dh.getMaNguoiDat());
			statement.setInt(3, dh.getTongTien());
			statement.setString(4, dh.getTinhTrang());
			statement.setString(5, dh.getMaDonHang());
			statement.executeUpdate();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public static void XoaDonHang(Connection conn, String madh) {
		
		String sql= "delete from donhang where MaDonHang = ?";
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement(sql);
			statement.setString(1, madh);
			statement.executeUpdate();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	public static ChiTietDonHang KiemTraSanPhamTrongGio(Connection conn, String madh, String masp, int size) {
		
		
		String sql= "select * from chitietdonhang where MaDonHang = ? and MaSanPham = ? and Size = ?";
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement(sql);
			statement.setString(1, madh);
			statement.setString(2, masp);
			statement.setInt(3, size);
			ResultSet rs = statement.executeQuery();
			if(rs.next())
			{
				String mactdh = rs.getString("MaChiTietDonHang");
				int soluong = rs.getInt("SoLuong");
				int dongia = rs.getInt("DonGia");
				SanPham sp = SanPhamDAO.LaySanPham(conn, masp);
				ChiTietDonHang ctdh = new ChiTietDonHang(mactdh, madh, sp, size, soluong, dongia);
				rs.close();
				statement.close();
				return ctdh;
			}
			rs.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
