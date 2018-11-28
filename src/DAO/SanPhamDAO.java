package DAO;

import java.sql.*;
import java.util.*;
import BEAN.SanPham;

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
		ListIterator<SanPham> itr = list.listIterator();
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
		while(itr.hasNext())
		{
			itr.next();
		}
		while (itr.hasPrevious()) {
            listsp.add(itr.previous());
        }
		return listsp;
	}
}
