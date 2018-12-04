package BEAN;

public class QLTT {

	private String MaTinTuc;
	private String  TieuDe;
	private String NoiDung;
	private String HinhAnh;
	
	public QLTT() {
		super();
	}
	public QLTT(String MaTinTuc, String TieuDe, String NoiDung, String HinhAnh) {
		
		this.MaTinTuc = MaTinTuc;
		this.TieuDe = TieuDe;
		this.NoiDung = NoiDung;
		this.HinhAnh = HinhAnh;
	}
	public String getMaTinTuc() {
		return MaTinTuc;
	}
	public void setMaTinTuc(String MaTinTuc) {
		this.MaTinTuc = MaTinTuc;
	}
	public String getTieuDe() {
		return TieuDe;
	}
	public void setTieuDe(String TieuDe) {
		this.TieuDe = TieuDe;
	}
	public String getNoiDung() {
		return NoiDung;
	}
	public void setNoiDung(String NoiDung) {
		this.NoiDung = NoiDung;
	}
	public String getHinhAnh() {
		return HinhAnh;
	}
	public void setHinhAnh(String HinhAnh) {
		this.HinhAnh = HinhAnh;
	}
	
	
	
}
