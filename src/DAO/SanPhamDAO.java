package DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import BEAN.SanPham;


public class SanPhamDAO {

	public static List<SanPham> LoadSanPham(Connection conn)
	{
		List<SanPham> list=new ArrayList<SanPham>();
		
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
			
				SanPham qlsp=new SanPham(MaSanPham,TenSanPham,ThuongHieu,MauSac,GioiTinh,KhuyenMai,Gia,HinhAnh);
				list.add(qlsp);
			}
			rs.close();
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public static  SanPham LaySanPham(String MaSanPham , Connection conn )
	{
		SanPham qlsp=null;
		String sqlStr="select * from sanpham where MaSanPham=? ";
		PreparedStatement ptmt=null;
		
		try {
			ptmt=conn.prepareStatement(sqlStr);	
			ptmt.setString(1,MaSanPham);
			ResultSet rs=ptmt.executeQuery();
			if(rs.next())
			{
				String TenSanPham=rs.getString("TenSanPham");
				String MauSac=rs.getString("MauSac");
				String GioiTinh=rs.getString("GioiTinh");
				String ThuongHieu=rs.getString("ThuongHieu");
				float KhuyenMai=rs.getFloat("KhuyenMai");
				float Gia=rs.getFloat("Gia");
				String HinhAnh=rs.getString("HinhAnh");
				qlsp=new SanPham(MaSanPham,TenSanPham,ThuongHieu,MauSac,GioiTinh,KhuyenMai,Gia,HinhAnh);
				return qlsp;
			}
			rs.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return qlsp;
	}
	public static boolean UpdateSanPham(SanPham qlsp, Connection conn)
	{
			boolean	update = false;
	      
			String sqlStr="Update sanpham set TenSanPham=?,ThuongHieu=?,MauSac=?,GioiTinh=?,KhuyenMai=?,Gia=?,HinhAnh=? where MaSanPham=?";
	        PreparedStatement ptmt =null;
	        try {
	        	
	        	ptmt=conn.prepareStatement(sqlStr);
				ptmt.setString(8, qlsp.getMaSanPham());
				ptmt.setString(1, qlsp.getTenSanPham());
				ptmt.setString(2, qlsp.getThuongHieu());
				ptmt.setString(3, qlsp.getMauSac());
				ptmt.setString(4, qlsp.getGioiTinh());
				ptmt.setFloat(5, qlsp.getKhuyenMai());
				ptmt.setFloat(6, qlsp.getGia());
				ptmt.setString(7, qlsp.getHinhAnh());

				update=ptmt.executeUpdate()>0;
				ptmt.close();
				conn.close();
				 

			}  catch (SQLException e) {
				e.printStackTrace();
			}
	        
	        return update;
	}
	

	public static boolean DeleteSanPham(String MaSanPham, Connection conn)
	{
		DeleteChiTietSanPham(MaSanPham, conn);
		String sqlStr="Delete from sanpham where MaSanPham= ?";
		
		PreparedStatement ptmt=null;
		boolean delete=false;
			try {
				
				ptmt=conn.prepareStatement(sqlStr);
				ptmt.setString(1,MaSanPham);
				
				delete=ptmt.executeUpdate()>0;
				ptmt.close();
				conn.close();
			
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		return delete;
	}
	public static boolean DeleteChiTietSanPham(String MaSanPham, Connection conn)
	{
		String sqlStr="Delete from chitietsanpham where MaSanPham= ?";
		PreparedStatement ptmt=null;
		boolean delete=false;
		try {
			
			ptmt=conn.prepareStatement(sqlStr);
			ptmt.setString(1,MaSanPham);
			delete=ptmt.executeUpdate()>0;
			ptmt.close();
			conn.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return delete;
	}
	public static boolean ThemSanPham(SanPham qlsp,Connection conn)
	{

		String sqlStr="insert into sanpham(MaSanPham,TenSanPham,ThuongHieu,MauSac,GioiTinh,KhuyenMai,Gia,HinhAnh) values(?,?,?,?,?,?,?,?)";
		PreparedStatement ptmt=null;
		try {
			ptmt=conn.prepareStatement(sqlStr);
			
			ptmt=conn.prepareStatement(sqlStr);
			ptmt.setString(1, qlsp.getMaSanPham());
			ptmt.setString(2, qlsp.getTenSanPham());
			ptmt.setString(3, qlsp.getThuongHieu());
			ptmt.setString(4, qlsp.getMauSac());
			ptmt.setString(5, qlsp.getGioiTinh());
			ptmt.setFloat(6, qlsp.getKhuyenMai());
			ptmt.setFloat(7, qlsp.getGia());
			ptmt.setString(8, qlsp.getHinhAnh());
			
			if(ptmt.executeUpdate()!=0)
			{
				ptmt.close();
				return true;
			}
			
			ptmt.close();
					
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
}
