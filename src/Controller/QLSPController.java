package Controller;

import java.io.IOException;
import java.sql.Connection;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.SanPhamDAO;
import DB.DBConnection;



@WebServlet("/QLSPController")
public class QLSPController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public QLSPController() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				ListSanPham(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
	
	
	
	private void ListSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn=DBConnection.CreateConnection();
		List<BEAN.SanPham> list=SanPhamDAO.TatCaSanPham(conn);
		request.setAttribute("listQLSP", list);
		RequestDispatcher rd=request.getRequestDispatcher("QLSP.jsp");
		rd.forward(request, response);
		
	}
}
