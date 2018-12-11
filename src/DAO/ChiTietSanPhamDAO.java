package DAO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import BEAN.ChiTietSanPham;
import BEAN.SanPham;

public class ChiTietSanPhamDAO {

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
	public static List<ChiTietSanPham> ChiTietSanPham(String MaSanPham,Connection conn){
		
		List<ChiTietSanPham> list = new ArrayList<ChiTietSanPham>();
		
		String sql="SELECT * FROM chitietsanpham WHERE MaSanPham=?";
		PreparedStatement statement;
		try {
			statement=conn.prepareStatement(sql);
			statement.setString(1, MaSanPham);
			ResultSet rs = statement.executeQuery();
			while (rs.next())
			{
				int Size = rs.getInt("Size");
				int SoLuong = rs.getInt("SoLuong");
				ChiTietSanPham ctsp = new ChiTietSanPham(MaSanPham,Size,SoLuong);
				list.add(ctsp);
			}
			rs.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public static boolean UpdateChiTietSanPham(ChiTietSanPham ctsp,Connection conn)
	{
		boolean	update = false;
	       String  sqlStr="Update chitietsanpham set SoLuong=? where MaSanPham= ? and Size=? ";
	       
	        PreparedStatement ptmt =null;
	        try {
	        	
	        	ptmt=conn.prepareStatement(sqlStr);
				ptmt.setString(2,ctsp.getMaSanPham());
				ptmt.setInt(3,ctsp.getSize());
				ptmt.setInt(1,ctsp.getSoLuong());
	     
				update=ptmt.executeUpdate()>0;
				ptmt.close();
				conn.close();
				 

			}  catch (SQLException e) {
				e.printStackTrace();
			}
	        
	        return update;

	}
	public static boolean DeleteChiTietSanPham(String MaSanPham,int Size,Connection conn)
	{
		String sqlStr="Delete from chitietsanpham where MaSanPham=? And Size=?";
		PreparedStatement ptmt=null;
		boolean delete=false;
		try {
			
			ptmt=conn.prepareStatement(sqlStr);
			ptmt.setString(1,MaSanPham);
			ptmt.setInt(2, Size);
			delete=ptmt.executeUpdate()>0;
			ptmt.close();
			conn.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return delete;
	}
	public static boolean ThemChiTietSanPham(ChiTietSanPham ctsp, Connection conn)
	{
		String sqlStr ="insert into chitietsanpham(MaSanPham,Size,SoLuong) values (?, ?, ?)";
		PreparedStatement ptmt=null;
		try {
			ptmt=conn.prepareStatement(sqlStr);
			
			ptmt.setString(1, ctsp.getMaSanPham());
			ptmt.setInt(2, ctsp.getSize());
			ptmt.setInt(3, ctsp.getSoLuong());
			
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
	public static boolean DeleteChiTietSanPham_1(String MaSanPham, Connection conn)
	{
		String sqlStr="Delete from chitietsanpham where MaSanPham= ?";
		PreparedStatement ptmt=null;
		
		try {
			
			ptmt=conn.prepareStatement(sqlStr);
			ptmt.setString(1,MaSanPham);
			
			
			if(ptmt.executeUpdate()!=0)
			{
				ptmt.close();
				return true;
			}
			
			conn.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
