package Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import BEAN.TinTuc;
import DAO.TinTucDAO;
import DB.DBConnection;


@WebServlet("/SuaTinTucController")
public class SuaTinTucController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public SuaTinTucController() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        
       
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); 
		 String action = request.getParameter("action");
		 if(action==null)
			 ShowTinTuc(request, response);
		 else {
			 if(action.contains("Update"))		
					UpdateTinTuc(request, response);
		 }
		
			
	}
	private void ShowTinTuc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection conn=DBConnection.CreateConnection();
        int MaTinTuc=Integer.parseInt(request.getParameter("MaTinTuc"));
        BEAN.TinTuc qltt=TinTucDAO.LayTinTuc(MaTinTuc, conn);
        RequestDispatcher rd=request.getRequestDispatcher("suaTT.jsp");
        request.setAttribute("tttt", qltt);
        rd.forward(request, response);
	}
	
	private void UpdateTinTuc(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException 
	{
		 	Connection conn=DBConnection.CreateConnection();
	        int MaTinTuc=Integer.parseInt(request.getParameter("MaTinTuc"));
	        String TieuDe=request.getParameter("TieuDe");
	        String NoiDung=request.getParameter("NoiDung");
	        String HinhAnh=request.getParameter("HinhAnh");
	       
	        if(HinhAnh=="")
	        {
	        	HinhAnh=request.getParameter("HinhAnhCu");
	        }
	        TinTuc qltt=new TinTuc();
	        qltt.setMaTinTuc(MaTinTuc);
	        qltt.setTieuDe(TieuDe);
	        qltt.setNoiDung(NoiDung);
	        qltt.setHinhAnh(HinhAnh);
	        
	       boolean kt= TinTucDAO.SuaTinTuc(qltt, conn);
	       if(kt)
	       {
	    	   request.setAttribute("msgSuaTinTuc", "Sửa tin tức  thành công");
	    	   RequestDispatcher rd = request.getRequestDispatcher("QLTTController");
	  			rd.forward(request, response);
	       }
	       else
	       {
	    	   request.setAttribute("msgSuaTinTuc", "Sửa tin tức không thành công");
	    	   RequestDispatcher rd = request.getRequestDispatcher("QLTTController");
	  			rd.forward(request, response);
	       }
	}

}
