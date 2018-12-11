package BEAN;


import java.io.InputStream;
import java.io.OutputStream;



public class QLTT_HinhAnh {
	private int MaTinTuc;
	private String  TieuDe;
	private String NoiDung;
	private InputStream HinhAnh;
	private OutputStream HinhAnhLen;
	
	
	public QLTT_HinhAnh(int maTinTuc, String tieuDe, String noiDung, OutputStream hinhAnhLen) {
		super();
		MaTinTuc = maTinTuc;
		TieuDe = tieuDe;
		NoiDung = noiDung;
		HinhAnhLen = hinhAnhLen;
	}
	public OutputStream getHinhAnhLen() {
		return HinhAnhLen;
	}
	public void setHinhAnhLen(OutputStream hinhAnhLen) {
		HinhAnhLen = hinhAnhLen;
	}
	public QLTT_HinhAnh() {
		super();
	}
	public int getMaTinTuc() {
		return MaTinTuc;
	}
	public void setMaTinTuc(int maTinTuc) {
		MaTinTuc = maTinTuc;
	}
	public String getTieuDe() {
		return TieuDe;
	}
	public void setTieuDe(String tieuDe) {
		TieuDe = tieuDe;
	}
	public String getNoiDung() {
		return NoiDung;
	}
	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}
	public InputStream getHinhAnh() {
		return HinhAnh;
	}
	public void setHinhAnh(InputStream inputHinhAnh) {
		HinhAnh = inputHinhAnh;
	}
	public QLTT_HinhAnh(int maTinTuc, String tieuDe, String noiDung, InputStream hinhAnh) {
		super();
		MaTinTuc = maTinTuc;
		TieuDe = tieuDe;
		NoiDung = noiDung;
		HinhAnh = hinhAnh;
	}
	
	
	
}
