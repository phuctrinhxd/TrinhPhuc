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


@WebServlet("/SuaSanPhamController")
public class SuaSanPhamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SuaSanPhamController() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); 
		 String action = request.getParameter("action");
		 if(action==null)
			 ShowSanPham(request, response);
		 else {
			 if(action.contains("Update"))		
					UpdateSanPham(request, response);
		 }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

	private void ShowSanPham(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection conn=DBConnection.CreateConnection();
        String MaSanPham=request.getParameter("MaSanPham");
        BEAN.SanPham qlsp=SanPhamDAO.LaySanPham(MaSanPham, conn);
        RequestDispatcher rd=request.getRequestDispatcher("suaSP.jsp");
        request.setAttribute("ttsp", qlsp);
        rd.forward(request, response);
	}
	
	private void UpdateSanPham(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException 
	{
		
		Connection conn = DBConnection.CreateConnection();
		String ThuongHieu=request.getParameter("ThuongHieu");
		String MaSanPham=request.getParameter("MaSanPham");
		String TenSanPham=request.getParameter("TenSanPham");
		String MauSac=request.getParameter("MauSac");
		String GioiTinh=request.getParameter("GioiTinh");
		float KhuyenMai=Float.parseFloat(request.getParameter("KhuyenMai"));
		float Gia=Float.parseFloat(request.getParameter("GiaBan"));
		String HinhAnh=request.getParameter("HinhAnh");
		if(HinhAnh=="")
		{
			HinhAnh=request.getParameter("HinhAnhCu");
		}
		
		System.out.println(MaSanPham);
		System.out.println(ThuongHieu);
		System.out.println(TenSanPham);
		System.out.println(GioiTinh);
		
		SanPham qlsp=new SanPham(MaSanPham, TenSanPham, ThuongHieu, MauSac, GioiTinh, KhuyenMai, Gia, HinhAnh);
		boolean kt=SanPhamDAO.UpdateSanPham(qlsp, conn);

		if(kt)
       {
    	   request.setAttribute("msgSuaSanPham", "Sửa sản phẩm  thành công");
    	   RequestDispatcher rd = request.getRequestDispatcher("QLSPController");
  			rd.forward(request, response);
       }
       else
       {
    	   request.setAttribute("msgSuaSanPham", "Sửa sản phẩm không thành công");
    	   RequestDispatcher rd = request.getRequestDispatcher("QLSPController");
  			rd.forward(request, response);
       }
		
	}

}
