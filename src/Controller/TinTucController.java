package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;
import BEAN.TinTuc;
import DAO.TinTucDAO;
import DB.*;

@WebServlet("/TinTucController")
public class TinTucController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TinTucController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection conn = DBConnection.CreateConnection();
		List<TinTuc> list = TinTucDAO.TatCaTinTuc(conn);
		request.setAttribute("listtt", list);
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("blog.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
