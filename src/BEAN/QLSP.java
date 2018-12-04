package BEAN;

public class QLSP {

	private String MaSanPham;
	private String TenSanPham;
	private String ThuongHieu;
	private String MauSac;
	private String GioiTinh;
	private float KhuyenMai;
	private float Gia;
	private String HinhAnh;
	public QLSP() {
		super();
	}
	public QLSP(String MaSanPham, String TenSanPham, String ThuongHieu, String MauSac, String GioiTinh, float KhuyenMai,
			float Gia, String HinhAnh) {
	
		this.MaSanPham = MaSanPham;
		this.TenSanPham = TenSanPham;
		this.ThuongHieu = ThuongHieu;
		this.MauSac = MauSac;
		this.GioiTinh = GioiTinh;
		this.KhuyenMai = KhuyenMai;
		this.Gia = Gia;
		this.HinhAnh = HinhAnh;
	}
	
	public String getMaSanPham() {
		return MaSanPham;
	}
	public void setMaSanPham(String MaSanPham) {
		this.MaSanPham = MaSanPham;
	}
	public String getTenSanPham() {
		return TenSanPham;
	}
	public void setTenSanPham(String TenSanPham) {
		this.TenSanPham = TenSanPham;
	}
	public String getThuongHieu() {
		return ThuongHieu;
	}
	public void setThuongHieu(String ThuongHieu) {
		this.ThuongHieu = ThuongHieu;
	}
	public String getMauSac() {
		return MauSac;
	}
	public void setMauSac(String MauSac) {
		this.MauSac = MauSac;
	}
	public String getGioiTinh() {
		return GioiTinh;
	}
	public void setGioiTinh(String GioiTinh) {
		this.GioiTinh = GioiTinh;
	}
	public float getKhuyenMai() {
		return KhuyenMai;
	}
	public void setKhuyenMai(float KhuyenMai) {
		this.KhuyenMai = KhuyenMai;
	}
	public float getGia() {
		return Gia;
	}
	public void setGia(float Gia) {
		this.Gia = Gia;
	}
	public String getHinhAnh() {
		return HinhAnh;
	}
	public void setHinhAnh(String HinhAnh) {
		this.HinhAnh = HinhAnh;
	}
	
}
