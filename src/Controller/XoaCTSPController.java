package Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ChiTietSanPhamDAO;

import DB.DBConnection;

@WebServlet("/XoaCTSPController")
public class XoaCTSPController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public XoaCTSPController() {
        super();
       
    }

	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn=DBConnection.CreateConnection();
		String MaSanPham=request.getParameter("MaSanPham");
		int Size=Integer.parseInt(request.getParameter("Size"));		
		boolean kt=ChiTietSanPhamDAO.DeleteChiTietSanPham(MaSanPham, Size, conn);	
		  if(kt)
	        {
	     	   request.setAttribute("msgXoaCTSP", "Xóa chi tiết sản phẩm  thành công");
	     	   RequestDispatcher rd = request.getRequestDispatcher("ChiTietSanPhamController?MaSanPham="+MaSanPham);
	   			rd.forward(request, response);
	        }
	        else
	        {
	        	request.setAttribute("msgThemCTSP", "Xóa chi tiết sản phẩm  thành công");
	     	   RequestDispatcher rd = request.getRequestDispatcher("ChiTietSanPhamController?MaSanPham="+MaSanPham);
	   			rd.forward(request, response);
	        }
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
