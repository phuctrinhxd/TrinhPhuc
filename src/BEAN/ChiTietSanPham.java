package BEAN;

public class ChiTietSanPham {

	private String MaSanPham;
	private int Size;
	private int SoLuong;
	
	public ChiTietSanPham() {
		super();
	}
	public ChiTietSanPham(String maSanPham, int size, int soLuong) {
		super();
		MaSanPham = maSanPham;
		Size = size;
		SoLuong = soLuong;
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
}
