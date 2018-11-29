package BEAN;

public class ChiTietSanPham {

	private String MaSanPham;
	private float Size;
	private int SoLuong;
	public ChiTietSanPham() {}
	public ChiTietSanPham(String masp, float size, int soluong)
	{
		this.setMaSanPham(masp);
		this.setSize(size);
		this.setSoLuong(soluong);
	}
	public String getMaSanPham() {
		return MaSanPham;
	}
	public void setMaSanPham(String maSanPham) {
		MaSanPham = maSanPham;
	}
	public float getSize() {
		return Size;
	}
	public void setSize(float size) {
		Size = size;
	}
	public int getSoLuong() {
		return SoLuong;
	}
	public void setSoLuong(int soLuong) {
		SoLuong = soLuong;
	}

}
