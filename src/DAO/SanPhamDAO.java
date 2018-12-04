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
				int gia=rs.getInt("Gia");
				int khuyenmai=rs.getInt("KhuyenMai");
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
	public static List<SanPham> LocSanPham(Connection conn, String[] thuonghieu, String[] gioitinh, String[] size, String[] mau, String gia){
		
		List<SanPham> list = new ArrayList<SanPham>();
		List<SanPham> listsp = new ArrayList<SanPham>();
		
		String sql = "select sanpham.MaSanPham, TenSanPham, MauSac, GioiTinh, ThuongHieu, KhuyenMai, Gia, HinhAnh from sanpham, chitietsanpham where sanpham.MaSanPham = chitietsanpham.MaSanPham ";
		try {
			PreparedStatement statement;
			if(thuonghieu!=null) {
				sql += " and ( ThuongHieu = '" + thuonghieu[0] + "'";
				for(int i=1; i < thuonghieu.length;i++) {
					sql += "or ThuongHieu = '"+thuonghieu[i] + "'";
				}
				sql += " )";
			}
			if(gioitinh!=null) {
				sql += " and ( GioiTinh = '" + gioitinh[0] + "'";
				for(int i=1; i < gioitinh.length;i++) {
					sql += "or GioiTinh = '"+gioitinh[i] + "'";
				}
				sql += " )";
			}
			if(size!=null) {
				sql += " and ( Size = " + size[0] ;
				for(int i=1; i < size.length;i++) {
					sql += " or Size = " + size[i] ;
				}
				sql += " )";
			}
			if(mau!=null) {
				sql += " and ( MauSac = '" + mau[0] + "'";
				for(int i=1; i < mau.length;i++) {
					sql += "or MauSac = '"+mau[i] + "'";
				}
				sql += " )";
			}
			if(gia!=null) {
				if(gia.contains("thap"))
					sql += " and (Gia - Gia*KhuyenMai/100) < " + "1000000";
				else if(gia.contains("tb"))
					sql += " and (Gia - Gia*KhuyenMai/100) BETWEEN 1000000 and 2000000";
				else
					sql += "and (Gia - Gia*KhuyenMai/100) > 2000000";
					
			}
			sql +=" group by sanpham.MaSanPham";
			statement = conn.prepareStatement(sql);
			
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				String masp = rs.getString("MaSanPham");
				String tensp = rs.getNString("TenSanPham");
				String mausac = rs.getNString("MauSac");
				String gioiTinh=rs.getNString("GioiTinh");
				String thuongHieu=rs.getNString("ThuongHieu");
				int Gia=rs.getInt("Gia");
				int khuyenmai=rs.getInt("KhuyenMai");
				String hinh = rs.getNString("HinhAnh");
				SanPham sp = new SanPham(masp, tensp, mausac, gioiTinh, thuongHieu, khuyenmai, Gia, hinh);
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
				int gia=rs.getInt("Gia");
				int khuyenmai=rs.getInt("KhuyenMai");
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
				int size = rs.getInt("Size");
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
