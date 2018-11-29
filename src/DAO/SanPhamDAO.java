package DAO;

import java.sql.*;
import java.util.*;
import BEAN.*;

public class SanPhamDAO {

	public static List<SanPham> SanPhamNoiBac(Connection conn){
		List<SanPham> list = TatCaSanPham(conn);
		List<SanPham> listspnb = new ArrayList<SanPham>();
		for(SanPham sp: list)
		{
			listspnb.add(sp);
			if(listspnb.size()>=4)
				return listspnb;
		}
		return listspnb;
	}
	public static List<SanPham> TatCaSanPham(Connection conn){
		List<SanPham> list = new ArrayList<SanPham>();
		List<SanPham> listsp = new ArrayList<SanPham>();
		
		String sql="SELECT * FROM sanpham";
		Statement statement;
		try {
			statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next())
			{
				String masp = rs.getString("MaSanPham");
				String tensp = rs.getNString("TenSanPham");
				String mausac = rs.getNString("MauSac");
				String gioitinh=rs.getNString("GioiTinh");
				String thuonghieu=rs.getNString("ThuongHieu");
				float gia=rs.getFloat("Gia");
				float khuyenmai=rs.getFloat("KhuyenMai");
				String hinh = rs.getNString("HinhAnh");
				SanPham sp = new SanPham(masp, tensp, mausac, gioitinh, thuonghieu, khuyenmai, gia, hinh);
				list.add(sp);
			}
			rs.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		ListIterator<SanPham> itr = list.listIterator();
		while(itr.hasNext())
		{
			itr.next();
		}
		while (itr.hasPrevious()) {
            listsp.add(itr.previous());
        }
		return listsp;
	}
	public static List<SanPham> GiaCaoDan(Connection conn, List<SanPham> list){
		
		Collections.sort(list);
		return list;
	}
	public static List<SanPham> GiaThapDan(Connection conn, List<SanPham> list){
		
		Collections.sort(list);
		ListIterator<SanPham> itr = list.listIterator();
		List<SanPham> listsp = new ArrayList<SanPham>();
		while(itr.hasNext())
		{
			itr.next();
		}
		while(itr.hasPrevious()) {
			listsp.add(itr.previous());
		}
		return listsp;
	}
	public static SanPham LaySanPham(Connection conn, String masp) {
		SanPham sp;
		
		String sql = "SELECT * FROM sanpham WHERE MaSanPham=?";
		PreparedStatement statement;
		try {
			statement=conn.prepareStatement(sql);
			statement.setString(1, masp);
			ResultSet rs = statement.executeQuery();
			if (rs.next())
			{
				String tensp = rs.getNString("TenSanPham");
				String mausac = rs.getNString("MauSac");
				String gioitinh=rs.getNString("GioiTinh");
				String thuonghieu=rs.getNString("ThuongHieu");
				float gia=rs.getFloat("Gia");
				float khuyenmai=rs.getFloat("KhuyenMai");
				String hinh = rs.getNString("HinhAnh");
				sp = new SanPham(masp, tensp, mausac, gioitinh, thuonghieu, khuyenmai, gia, hinh);
				return sp;
			}
			rs.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static List<ChiTietSanPham> ChiTietSanPham(Connection conn, String masp){
		
		List<ChiTietSanPham> list = new ArrayList<ChiTietSanPham>();
		
		String sql="SELECT * FROM chitietsanpham WHERE MaSanPham=?";
		PreparedStatement statement;
		try {
			statement=conn.prepareStatement(sql);
			statement.setString(1, masp);
			ResultSet rs = statement.executeQuery();
			while (rs.next())
			{
				float size = rs.getFloat("Size");
				int soluong = rs.getInt("SoLuong");
				ChiTietSanPham ctsp = new ChiTietSanPham(masp, size, soluong);
				list.add(ctsp);
			}
			rs.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
