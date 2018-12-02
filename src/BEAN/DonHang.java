package BEAN;

import java.util.*;

public class DonHang {

	private String MaDonHang;
	private Date Ngay;
	private String MaNguoiDat;
	private int TongTien;
	private String TinhTrang;
	public DonHang() {}
	public DonHang(String madh, Date ngay, String mand, int tongtien, String tinhtrang)
	{
		this.setMaDonHang(madh);
		this.setNgay(ngay);
		this.setMaNguoiDat(mand);
		this.setTongTien(tongtien);
		this.setTinhTrang(tinhtrang);
	}
	public DonHang(Date ngay, String mand, int tongtien, String tinhtrang)
	{
		this.setRandomString();
		this.setNgay(ngay);
		this.setMaNguoiDat(mand);
		this.setTongTien(tongtien);
		this.setTinhTrang(tinhtrang);
	}
	public String getMaDonHang() {
		return MaDonHang;
	}
	public void setMaDonHang(String maDonHang) {
		MaDonHang = maDonHang;
	}
	public Date getNgay() {
		return Ngay;
	}
	public void setNgay(Date ngay) {
		Ngay = ngay;
	}
	public String getMaNguoiDat() {
		return MaNguoiDat;
	}
	public void setMaNguoiDat(String maNguoiDat) {
		MaNguoiDat = maNguoiDat;
	}
	public int getTongTien() {
		return TongTien;
	}
	public void setTongTien(int tongTien) {
		TongTien = tongTien;
	}
	public String getTinhTrang() {
		return TinhTrang;
	}
	public void setTinhTrang(String tinhTrang) {
		TinhTrang = tinhTrang;
	}
	public void setRandomString() 
	{
		String chuoi = "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm1234567890";
		int max = (int)Math.random()*40;
		while(max==0)
			max=(int)Math.random()*40;
		for(int i=0;i<max;i++) {
			int temp=(int)Math.round(Math.random() * chuoi.length());
			MaDonHang += chuoi.charAt(temp); 
		}
	}
}
