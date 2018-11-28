package DB;

import java.sql.*;

public class DBConnection {

	public static Connection CreateConnection() {
		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/quanlyshopgiay";
		String username="root";
		String pass="123456";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, username, pass);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
}
