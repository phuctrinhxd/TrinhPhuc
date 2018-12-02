package BEAN;

public class ChiTietDonHang {

	private String MaChiTietDonHang;
	private String MaDonHang;
	private String MaSanPham;
	private int Size;
	private int SoLuong;
	private int DonGia;
	public ChiTietDonHang() {}
	public ChiTietDonHang(String mactdh, String madh, String masp, int size, int soluong, int dongia)
	{
		this.setMaChiTietDonHang(mactdh);
		this.setMaDonHang(madh);
		this.setMaSanPham(masp);
		this.setSize(size);
		this.setSoLuong(soluong);
		this.setDonGia(dongia);
	}
	public ChiTietDonHang(String madh, String masp, int size, int soluong, int dongia)
	{
		this.setRandomString();
		this.setMaDonHang(madh);
		this.setMaSanPham(masp);
		this.setSize(size);
		this.setSoLuong(soluong);
		this.setDonGia(dongia);
	}
	public String getMaChiTietDonHang() {
		return MaChiTietDonHang;
	}
	public void setMaChiTietDonHang(String maChiTietDonHang) {
		MaChiTietDonHang = maChiTietDonHang;
	}
	public String getMaDonHang() {
		return MaDonHang;
	}
	public void setMaDonHang(String maDonHang) {
		MaDonHang = maDonHang;
	}
	public String getMaSanPham() {
		return MaSanPham;
	}
	public void setMaSanPham(String maSanPham) {
		MaSanPham = maSanPham;
	}
	public int getSize() {
		return Size;
	}
	public void setSize(int size) {
		Size = size;
	}
	public int getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}
	public int getDonGia() {
		return DonGia;
	}
	public void setDonGia(int donGia) {
		DonGia = donGia;
	}
	public void setRandomString() 
	{
		String chuoi = "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm1234567890";
		int max = (int)Math.random()*40;
		while(max==0)
			max=(int)Math.random()*40;
		for(int i=0;i<max;i++) {
			int temp=(int)Math.round(Math.random() * chuoi.length());
			MaChiTietDonHang += chuoi.charAt(temp); 
		}
	}
}
