package Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.SanPham;
import DAO.SanPhamDAO;
import DB.DBConnection;


@WebServlet("/ThemSanPhamController")
public class ThemSanPhamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ThemSanPhamController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Connection conn = DBConnection.CreateConnection();
		String ThuongHieu=request.getParameter("ThuongHieu");
		String MaSanPham=request.getParameter("MaSanPham");
		String TenSanPham=request.getParameter("TenSanPham");
		String MauSac=request.getParameter("MauSac");
		String GioiTinh=request.getParameter("GioiTinh");
		float KhuyenMai=Float.parseFloat(request.getParameter("KhuyenMai"));
		float Gia=Float.parseFloat(request.getParameter("GiaBan"));
		String HinhAnh=request.getParameter("HinhAnh");
		
		System.out.println(MaSanPham);
		System.out.println(ThuongHieu);
		System.out.println(TenSanPham);
		System.out.println(GioiTinh);
		
		SanPham qlsp=new SanPham(MaSanPham, TenSanPham, ThuongHieu, MauSac, GioiTinh, KhuyenMai, Gia, HinhAnh);
		boolean kt=SanPhamDAO.ThemSanPham(qlsp, conn);
	
			if(kt)
	       {
	    	   request.setAttribute("msgThemSanPham", "Thêm sản phẩm  thành công");
	    	   RequestDispatcher rd = request.getRequestDispatcher("QLSPController");
	  			rd.forward(request, response);
	       }
	       else
	       {
	    	   request.setAttribute("msgThemSanPham", "Thêm sản phẩm không thành công");
	    	   RequestDispatcher rd = request.getRequestDispatcher("QLSPController");
	  			rd.forward(request, response);
	       }
		
	}

}
