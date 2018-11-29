package Controller;

import java.io.IOException;
import java.sql.*;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DAO.SanPhamDAO;
import DB.DBConnection;
import BEAN.*;

@WebServlet("/ChiTietSPController")
public class ChiTietSPController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ChiTietSPController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = DBConnection.CreateConnection();
		String masp = request.getParameter("masp");
		SanPham sp = SanPhamDAO.LaySanPham(conn, masp);
		List<ChiTietSanPham> ctsp = SanPhamDAO.ChiTietSanPham(conn, masp);
		if(sp !=null && ctsp.size() >0) {
			request.setAttribute("sanpham", sp);
			request.setAttribute("chitiet", ctsp);
			RequestDispatcher rd = request.getRequestDispatcher("single-product.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("msgChiTietSP", "1");
			RequestDispatcher rd = request.getRequestDispatcher("SanPhamController");
			rd.forward(request, response);
		}
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
