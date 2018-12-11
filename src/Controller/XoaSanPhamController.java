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
import DAO.SanPhamDAO;

import DB.DBConnection;


@WebServlet("/XoaSanPhamController")
public class XoaSanPhamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public XoaSanPhamController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn=DBConnection.CreateConnection();
		String MaSanPham=request.getParameter("MaSanPham");
		boolean f=ChiTietSanPhamDAO.DeleteChiTietSanPham_1(MaSanPham,conn);
		if(f)
		{
			boolean kt=SanPhamDAO.DeleteSanPham(MaSanPham, conn);	
			if(kt)
	       {
	    	   request.setAttribute("msgXóaSanPham", "Xóa sản phẩm  thành công");
	    	   RequestDispatcher rd = request.getRequestDispatcher("QLSPController");
	  			rd.forward(request, response);
	       }
	       else
	       {
	    	   request.setAttribute("msgXoaSanPham", "Xóa sản phẩm không thành công");
	    	   RequestDispatcher rd = request.getRequestDispatcher("QLSPController");
	  			rd.forward(request, response);
	       }
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
