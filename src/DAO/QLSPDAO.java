package DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import BEAN.QLSP;
import BEAN.QLTT;
import DB.DBConnection;
public class QLSPDAO {

	public static List<QLSP> LoadSanPham(Connection conn)
	{
		List<QLSP> list=new ArrayList<QLSP>();
		
		String sqlStr="select * from sanpham ";
		
		Statement stmt=null;
		try {
			
			stmt=conn.createStatement();
			
			ResultSet rs=stmt.executeQuery(sqlStr);
			
			while(rs.next())
			{
				
				String MaSanPham=rs.getString("MaSanPham");
				String TenSanPham=rs.getNString("TenSanPham");
				String MauSac=rs.getNString("MauSac");
				String GioiTinh=rs.getNString("GioiTinh");
				String ThuongHieu=rs.getNString("ThuongHieu");
				float KhuyenMai=rs.getFloat("KhuyenMai");
				float Gia=rs.getFloat("Gia");
				String HinhAnh=rs.getNString("HinhAnh");
			
				QLSP qlsp=new QLSP(MaSanPham,TenSanPham,ThuongHieu,MauSac,GioiTinh,KhuyenMai,Gia,HinhAnh);
				list.add(qlsp);
			}
			rs.close();
			conn.close();
			
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public static  QLSP getSanPham(String MaSanPham , Connection conn )
	{
		QLSP qlsp=null;
		String sqlStr="select * from sanpham where MaSanPham=? ";
		PreparedStatement ptmt=null;
		
		try {
			ptmt=conn.prepareStatement(sqlStr);
			
			ptmt.setString(1,MaSanPham);
			
			ResultSet rs=ptmt.executeQuery();
			
			if(rs.next())
			{
				
				String TenSanPham=rs.getNString("TenSanPham");
				String MauSac=rs.getNString("MauSac");
				String GioiTinh=rs.getNString("GioiTinh");
				String ThuongHieu=rs.getNString("ThuongHieu");
				float KhuyenMai=rs.getFloat("KhuyenMai");
				float Gia=rs.getFloat("Gia");
				String HinhAnh=rs.getNString("HinhAnh");
				 qlsp=new QLSP(MaSanPham,TenSanPham,ThuongHieu,MauSac,GioiTinh,KhuyenMai,Gia,HinhAnh);
				
			}
			rs.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return qlsp;
	}
}
