package Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.ChiTietSanPham;

import DAO.ChiTietSanPhamDAO;

import DB.DBConnection;


@WebServlet("/ThemCTSPController")
public class ThemCTSPController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ThemCTSPController() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		Connection conn = DBConnection.CreateConnection();
		String MaSanPham=request.getParameter("MaSanPham");
        int Size=Integer.parseInt(request.getParameter("Size"));
        int SoLuong=Integer.parseInt(request.getParameter("SoLuong"));
      
        System.out.println(MaSanPham);
        System.out.print(Size);
        System.out.print(SoLuong);
        
        ChiTietSanPham ctsp=new ChiTietSanPham();
        ctsp.setMaSanPham(MaSanPham);
        ctsp.setSize(Size);
        ctsp.setSoLuong(SoLuong);
        boolean kt=ChiTietSanPhamDAO.ThemChiTietSanPham(ctsp, conn);
        
        if(kt)
        {
     	   request.setAttribute("msgThemCTSP", "Thêm chi tiết sản phẩm  thành công");
     	   RequestDispatcher rd = request.getRequestDispatcher("ChiTietSanPhamController?MaSanPham="+MaSanPham);
   			rd.forward(request, response);
        }
        else
        {
        	request.setAttribute("msgThemCTSP", "Thêm chi tiết sản phẩm  thành công");
     	   RequestDispatcher rd = request.getRequestDispatcher("ChiTietSanPhamController?MaSanPham="+MaSanPham);
   			rd.forward(request, response);
        }

	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
