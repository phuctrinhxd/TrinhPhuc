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

import BEAN.ChiTietSanPham;
import BEAN.SanPham;
import DAO.ChiTietSanPhamDAO;
import DAO.SanPhamDAO;
import DB.DBConnection;


@WebServlet("/ChiTietSanPhamController")
public class ChiTietSanPhamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ChiTietSanPhamController() {
        super();
       
    }

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Connection conn = DBConnection.CreateConnection();
		String MaSanPham=request.getParameter("MaSanPham");
		System.out.println(MaSanPham);
		SanPham qlsp=SanPhamDAO.LaySanPham(MaSanPham, conn);
		List<ChiTietSanPham> ctsp=ChiTietSanPhamDAO.ChiTietSanPham(MaSanPham, conn);
		request.setAttribute("ThongTinSanPham",qlsp);
		request.setAttribute("ThongTinChiTietSanPham", ctsp);
		RequestDispatcher rd = request.getRequestDispatcher("chiTietSLSP.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
