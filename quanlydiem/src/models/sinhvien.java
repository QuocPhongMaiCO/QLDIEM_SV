package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class sinhvien {

	private int maSV;
	private String tenSV;
	private String diaChi;
	private int sdt;
	/**
	 * @return the maSV
	 */
	public int getMaSV() {
		return maSV;
	}
	/**
	 * @param maSV the maSV to set
	 */
	public void setMaSV(int maSV) {
		this.maSV = maSV;
	}
	/**
	 * @return the tenSV
	 */
	public String getTenSV() {
		return tenSV;
	}
	/**
	 * @param tenSV the tenSV to set
	 */
	public void setTenSV(String tenSV) {
		this.tenSV = tenSV;
	}
	public sinhvien(int maSV, String tenSV, String diaChi, int sdt, String email, Lop lop) {
		super();
		this.maSV = maSV;
		this.tenSV = tenSV;
		this.diaChi = diaChi;
		this.sdt = sdt;
		this.email = email;
		this.lop = lop;
	}
	/**
	 * @return the diaChi
	 */
	public String getDiaChi() {
		return diaChi;
	}
	/**
	 * @param diaChi the diaChi to set
	 */
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	/**
	 * @return the sdt
	 */
	public int getSdt() {
		return sdt;
	}
	/**
	 * @param sdt the sdt to set
	 */
	public void setSdt(int sdt) {
		this.sdt = sdt;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the lop
	 */
	public Lop getLop() {
		return lop;
	}
	/**
	 * @param lop the lop to set
	 */
	public void setLop(Lop lop) {
		this.lop = lop;
	}
	private String email;
	Lop lop;
	
}
