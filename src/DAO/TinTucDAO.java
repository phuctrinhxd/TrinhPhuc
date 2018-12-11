package DAO;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import BEAN.TinTuc;


public class TinTucDAO 
{
	public static List<TinTuc> LoadTinTuc( Connection conn) 
	{
		List<TinTuc>list=new ArrayList<TinTuc>();
		
		String sqlStr="select * from tintuc ";
		Statement stmt=null;
		
		try {
			
			stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sqlStr);
			
			
			while(rs.next())
			{
				
				int MaTinTuc=rs.getInt("MaTinTuc");
				String TieuDe=rs.getString("TieuDe");
				String NoiDung=rs.getString("NoiDung");
				String HinhAnh=rs.getString("HinhAnh");
			
				
				TinTuc qltt=new TinTuc(MaTinTuc,TieuDe,NoiDung,HinhAnh);
				
				list.add(qltt);
			}
			conn.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public static TinTuc LayTinTuc(int MaTinTuc,Connection conn)
	{
		TinTuc qltt=null;
		String sqlStr="Select * from tintuc Where MaTinTuc=?";
		PreparedStatement ptmt=null;
		
		try {
			ptmt=conn.prepareStatement(sqlStr);
			
			ptmt.setInt(1,MaTinTuc);
			
			ResultSet rs=ptmt.executeQuery();
			
			if(rs.next())
			{
				String TieuDe=rs.getString("TieuDe");
				String NoiDung=rs.getString("NoiDung");
				String HinhAnh=rs.getString("HinhAnh");
				
				qltt=new TinTuc(MaTinTuc,TieuDe,NoiDung,HinhAnh);
				rs.close();
				conn.close();
				return qltt;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return qltt;
		
	}
	public static boolean ThemTinTuc(TinTuc qltt, Connection conn)
	{
	
		String sqlStr ="insert into tintuc(MaTinTuc,TieuDe,NoiDung,HinhAnh) values (?, ?, ?, ?)";
		PreparedStatement ptmt=null;
		try {
			ptmt=conn.prepareStatement(sqlStr);
			
			ptmt.setInt(1, qltt.getMaTinTuc());
			ptmt.setString(2, qltt.getTieuDe());
			ptmt.setString(3, qltt.getNoiDung());
			ptmt.setString(4, qltt.getHinhAnh());
			
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
	public static boolean SuaTinTuc(TinTuc qltt, Connection conn)
	{
		
	        boolean	update = false;
	       String  sqlStr="Update tintuc set TieuDe= ?, NoiDung= ? , HinhAnh= ? where MaTinTuc= ? ";
	       
	        PreparedStatement ptmt =null;
	        try {
	        	
	        	ptmt=conn.prepareStatement(sqlStr);
				
				ptmt.setInt(4, qltt.getMaTinTuc());
				ptmt.setString(1, qltt.getTieuDe());
				ptmt.setString(2, qltt.getNoiDung());
				ptmt.setString(3, qltt.getHinhAnh());
				
				update=ptmt.executeUpdate()>0;
				ptmt.close();
				conn.close();
				 

			}  catch (SQLException e) {
				e.printStackTrace();
			}
	        
	        return update;

	}
	public static boolean DeleteTinTuc(int MaTinTuc,Connection conn)
	{
		String sqlStr="Delete from tintuc where MaTinTuc= ?";
		PreparedStatement ptmt=null;
		boolean delete=false;
		try {
			
			ptmt=conn.prepareStatement(sqlStr);
			ptmt.setInt(1,MaTinTuc);
			delete=ptmt.executeUpdate()>0;
			ptmt.close();
			conn.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return delete;
	}
	
}
