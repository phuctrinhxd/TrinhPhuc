package BEAN;

public class TinTuc {

	private int MaTinTuc;
	private String  TieuDe;
	private String NoiDung;
	private String HinhAnh;

	public TinTuc() {
		super();
	}
	public TinTuc(int MaTinTuc, String TieuDe, String NoiDung, String HinhAnh) {
		
		this.MaTinTuc = MaTinTuc;
		this.TieuDe = TieuDe;
		this.NoiDung = NoiDung;
		this.HinhAnh = HinhAnh;
	}
	public int getMaTinTuc() {
		return MaTinTuc;
	}
	public void setMaTinTuc(int MaTinTuc) {
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
