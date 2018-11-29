package BEAN;

public class Comment {
	
	private String MaComment;
	private String MaSanPham;
	private String MaKhachHang;
	private String NoiDung;
	public Comment() {}
	public Comment(String macm, String masp, String makh, String nd) {
		
	}
	public String getMaComment() {
		return MaComment;
	}
	public void setMaComment(String maComment) {
		MaComment = maComment;
	}
	public String getMaSanPham() {
		return MaSanPham;
	}
	public void setMaSanPham(String maSanPham) {
		MaSanPham = maSanPham;
	}
	public String getMaKhachHang() {
		return MaKhachHang;
	}
	public void setMaKhachHang(String maKhachHang) {
		MaKhachHang = maKhachHang;
	}
	public String getNoiDung() {
		return NoiDung;
	}
	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}
}
