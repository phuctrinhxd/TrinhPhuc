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
import javax.servlet.http.HttpSession;

import BEAN.*;
import DAO.*;
import DB.DBConnection;

@WebServlet("/GioHangController")
public class GioHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GioHangController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String thaotac=request.getParameter("thaotac");
		
		switch (thaotac) {
		case "ThemVaoGioHang":
			ThemVaoGioHang(request, response);
			break;

		default:
			break;
		}
		
	}
	
	public void ThemVaoGioHang(HttpServletRequest request, HttpServletResponse response)
	{
		Connection conn = DBConnection.CreateConnection();
		int soluong, size;
		String masp=request.getParameter("masp");
		if(request.getParameter("soluong")==null)
			soluong=1;
		else
			soluong= Integer.parseInt(request.getParameter("soluong"));
		if(request.getParameter("size")==null)
		{
			List<ChiTietSanPham> ctsp = SanPhamDAO.ChiTietSanPham(conn, masp);
			if(ctsp.size()>0)
				size= ctsp.get(0).getSize();
			else
				size=0;
		}
		else
			size= Integer.parseInt(request.getParameter("size"));
		HttpSession session = request.getSession();
		DonHang giohang = null;
		//Kiểm tra có giỏ hàng chưa, nếu chưa thì tạo mới
		if(session.getAttribute("giohang")==null) {
			//Kiểm tra đăng nhập chưa
			//Nếu chưa thì lấy mã người đặt là id của session
			if(session.getAttribute("login")==null) {
				giohang = new DonHang(session.getId(), "chưa đặt");
			}
			//Nếu đã đăng nhập thì mã người đặt là session (user).getID()
			else {
				giohang = new DonHang(((Users)session.getAttribute("user")).getId(), "chưa đặt");
			}
			// Thêm sản phẩm vào giỏ hàng
			SanPham sp = SanPhamDAO.LaySanPham(conn, masp);
			ChiTietDonHang ctgh = new ChiTietDonHang(giohang.getMaDonHang(), sp, size, soluong, sp.getGiaBan());
			List<ChiTietDonHang> list = giohang.getListCTDH();
			list.add(ctgh);
			giohang.setListCTDH(list);
			//Thêm vào database
			DonHangDAO.ThemDonHang(conn, giohang);
			DonHangDAO.ThemChiTietDonHang(conn, ctgh);
			
		}
		//Nếu đã tồn tại giỏ hàng 
		else {
			giohang = (DonHang)session.getAttribute("giohang");
			
			//Kiểm tra trong giỏ hàng có sản phẩm đó cùng size chưa
			ChiTietDonHang ctgh = DonHangDAO.KiemTraSanPhamTrongGio(conn, giohang.getMaDonHang(), masp, size);
			//Nếu có rồi thì cộng số lượng vào
			if(ctgh!=null) {
				ctgh.setSoLuong(ctgh.getSoLuong()+soluong);
				DonHangDAO.SuaChiTietDonHang(conn, ctgh.getMaChiTietDonHang(), ctgh.getSoLuong());
			}
			//Nếu chưa thì tạo mới chi tiết đơn hàng
			else {
				SanPham sp = SanPhamDAO.LaySanPham(conn, masp);
				ctgh = new ChiTietDonHang(giohang.getMaDonHang(), sp, size, soluong, sp.getGiaBan());
				DonHangDAO.ThemChiTietDonHang(conn, ctgh);
			}
			List<ChiTietDonHang> list = giohang.getListCTDH();
			list.add(ctgh);
			giohang.setListCTDH(list);
		}
		giohang.setTongSanPham(DonHangDAO.TongSanPham(conn, giohang.getMaDonHang()));
		giohang.setTongTien(DonHangDAO.TongTienDonHang(conn, giohang.getMaDonHang()));
		DonHangDAO.SuaDonHang(conn, giohang);
		session.setAttribute("giohang", giohang);
		try {
			response.getWriter().write(String.valueOf(giohang.getTongSanPham()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
