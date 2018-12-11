package Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DAO.TinTucDAO;
import DB.DBConnection;


@WebServlet("/XoaTinTucController")
public class XoaTinTucController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public XoaTinTucController() {
        super();
      
    }

	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn=DBConnection.CreateConnection();
		int MaTinTuc=Integer.parseInt(request.getParameter("MaTinTuc"));
		boolean kt=TinTucDAO.DeleteTinTuc(MaTinTuc, conn);
		if(kt)
	       {
	    	   request.setAttribute("msgXoaTinTuc", "Xóa tin tức  thành công");
	    	   RequestDispatcher rd = request.getRequestDispatcher("QLTTController");
	  			rd.forward(request, response);
	       }
	       else
	       {
	    	   request.setAttribute("msgXoaTinTuc", "Xóa tin tức không thành công");
	    	   RequestDispatcher rd = request.getRequestDispatcher("QLTTController");
	  			rd.forward(request, response);
	       }
	        
		
		
	}

}
