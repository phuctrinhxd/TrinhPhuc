package Controller;



import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import BEAN.TinTuc;
import DAO.TinTucDAO;
import DB.DBConnection;



@WebServlet("/ThemTinTucController")
public class ThemTinTucController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
/*
	private static final String UPLOAD_DIRECTORY = "cart";
	
	private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3;  // 3MB

	private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
	
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB
    */
    public ThemTinTucController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		 
	     
	/*
        
        if (!ServletFileUpload.isMultipartContent(request)) {
            // if not, we stop here
            PrintWriter writer = response.getWriter();
            writer.println("Error: Form must has enctype=multipart/form-data.");
            writer.flush();
            return;
        }
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // sets memory threshold - beyond which files are stored in disk 
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // sets temporary location to store files
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
 
        ServletFileUpload cart= new ServletFileUpload(factory);
 
        // sets maximum size of upload file
        cart.setFileSizeMax(MAX_FILE_SIZE);
 
        // sets maximum size of request (include file + form data)
        cart.setSizeMax(MAX_REQUEST_SIZE);
 
        // constructs the directory path to store upload file
        // this path is relative to application's directory
        String uploadPath = getServletContext().getRealPath("D:\\KTLT_JAVA\\giay_web\\WebContent\\img")
                + File.separator + UPLOAD_DIRECTORY;
 
        // creates the directory if it does not exist
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
 
        try {
            // parses the request's content to extract file data
    
            List<FileItem> formItems = cart.parseRequest((RequestContext) request);

            if (formItems != null && formItems.size() > 0) {
                // iterates over form's fields
                for (FileItem item : formItems) {
                    // processes only fields that are not form fields
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        String filePath = uploadPath + File.separator + fileName;
                        File storeFile = new File(filePath);

                        // saves the file on disk
                        item.write(storeFile);
                        request.setAttribute("message",
                                "Upload has been done successfully >>" + UPLOAD_DIRECTORY + "/" + fileName);
                    }
                }
            }
        } catch (Exception ex) {
            request.setAttribute("message",
                    "There was an error: " + ex.getMessage());
        }*/
        Connection conn = DBConnection.CreateConnection();
		
        String TieuDe=request.getParameter("TieuDe");
        String NoiDung=request.getParameter("NoiDung");
        String HinhAnh=request.getParameter("HinhAnh");
        TinTuc qltt=new TinTuc();
      
        qltt.setTieuDe(TieuDe);
        qltt.setNoiDung(NoiDung);
        qltt.setHinhAnh(HinhAnh);

        System.out.println(TieuDe);
        System.out.print(NoiDung);
        System.out.print(HinhAnh);
        
       boolean kt= TinTucDAO.ThemTinTuc(qltt, conn);
       if(kt)
       {
    	   request.setAttribute("msgThemTinTuc", "Thêm tin tức  thành công");
    	   RequestDispatcher rd = request.getRequestDispatcher("QLTTController");
  			rd.forward(request, response);
       }
       else
       {
    	   request.setAttribute("msgThemTinTuc", "Thêm tin tức không thành công");
    	   RequestDispatcher rd = request.getRequestDispatcher("QLTTController");
  			rd.forward(request, response);
       }
        
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
}