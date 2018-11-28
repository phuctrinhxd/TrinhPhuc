package BEAN;

public class SanPham {

	private String MaSanPham;
	private String TenSanPham;
	private String MauSac;
	private String GioiTinh;
	private String ThuongHieu;
	private float KhuyenMai;
	private float Gia;
	private float GiaBan;
	private String HinhAnh;
	public SanPham() {}
	public SanPham(String masanpham) {
		this.setMaSanPham(masanpham);
	}
	public SanPham(String masp, String tensp, String mau, String gioitinh, String thuonghieu, float khuyenmai, float gia, String hinh) {
		this.setMaSanPham(masp);
		this.setTenSanPham(tensp);
		this.setMauSac(mau);
		this.setGioiTinh(gioitinh);
		this.setThuongHieu(thuonghieu);
		this.setKhuyenMai(khuyenmai);
		this.setGia(gia);
		this.setGiaBan(gia, khuyenmai);
		this.setHinhAnh(hinh);
	}
	public String getMaSanPham() {
		return MaSanPham;
	}
	public void setMaSanPham(String maSanPham) {
		MaSanPham = maSanPham;
	}
	public String getTenSanPham() {
		return TenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		TenSanPham = tenSanPham;
	}
	public String getMauSac() {
		return MauSac;
	}
	public void setMauSac(String mauSac) {
		MauSac = mauSac;
	}
	public String getGioiTinh() {
		return GioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		GioiTinh = gioiTinh;
	}
	public String getThuongHieu() {
		return ThuongHieu;
	}
	public void setThuongHieu(String thuongHieu) {
		ThuongHieu = thuongHieu;
	}
	public float getKhuyenMai() {
		return KhuyenMai;
	}
	public void setKhuyenMai(float khuyenMai) {
		KhuyenMai = khuyenMai;
	}
	public float getGia() {
		return Gia;
	}
	public void setGia(float gia) {
		Gia = gia;
	}
	public float getGiaBan() {
		return (this.Gia  - this.Gia*this.KhuyenMai);
	}
	public void setGiaBan(float gia, float khuyenmai) {
		GiaBan = gia - gia*khuyenmai;
	}
	public String getHinhAnh() {
		return HinhAnh;
	}
	public void setHinhAnh(String hinhAnh) {
		HinhAnh = hinhAnh;
	}
}
