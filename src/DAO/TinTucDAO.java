package DAO;

import java.util.*;
import java.sql.*;
import BEAN.*;

public class TinTucDAO {

	public static List<TinTuc> PhanTrang(Connection conn, int page){
		List<TinTuc> list = new ArrayList<TinTuc>();
		String sql = "select * from tintuc order by MaTinTuc desc limit ?, ?";
		PreparedStatement statement;
		try {
			statement = conn.prepareStatement(sql);
			statement.setInt(1, (page-1)*6);
			statement.setInt(2, (page-1)*6+6);
			ResultSet rs = statement.executeQuery();
			while(rs.next()) {
				int matt = rs.getInt("MaTinTuc");
				String tieude = rs.getNString("TieuDe");
				String nd = rs.getNString("NoiDung");
				String hinh = rs.getNString("HinhAnh");
				TinTuc tintuc = new TinTuc(matt, tieude, nd, hinh);
				list.add(tintuc);
			}
			rs.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public static List<TinTuc> TatCaTinTuc(Connection conn){
		List<TinTuc> list = new ArrayList<TinTuc>();
		List<TinTuc> listtt = new ArrayList<TinTuc>();
		
		String sql = "SELECT * FROM tintuc";
		Statement statement;
		try {
			statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next())
			{
				int matt = rs.getInt("MaTinTuc");
				String tieude = rs.getNString("TieuDe");
				String nd = rs.getNString("NoiDung");
				String hinh = rs.getNString("HinhAnh");
				TinTuc tt= new TinTuc(matt, tieude, nd, hinh);
				list.add(tt);
			}
			rs.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		ListIterator<TinTuc> itr = list.listIterator();
		while(itr.hasNext())
		{
			itr.next();
		}
		while (itr.hasPrevious()) {
			listtt.add(itr.previous());
        }
		return listtt;
	}
	public static List<TinTuc> TinTucNoiBac(Connection conn){
		List<TinTuc> list = TatCaTinTuc(conn);
		List<TinTuc> listtt = new ArrayList<TinTuc>();
		for(TinTuc tt : list)
		{
			listtt.add(tt);
			if(listtt.size()>=3)
				return listtt;
		}
		return listtt;
	}
	public static TinTuc ChiTietTinTuc(Connection conn, int matt) {
		TinTuc tintuc;
		String sql = "SELECT * FROM tintuc WHERE MaTinTuc=?";
		try {
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, matt);
			ResultSet rs = statement.executeQuery();
			if(rs.next()) {
				String tieude = rs.getNString("TieuDe");
				String nd = rs.getNString("NoiDung");
				String hinh = rs.getNString("HinhAnh");
				tintuc = new TinTuc(matt, tieude, nd, hinh);
				rs.close();
				statement.close();
				return tintuc;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
