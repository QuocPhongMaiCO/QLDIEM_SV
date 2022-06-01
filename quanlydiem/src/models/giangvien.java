package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class giangvien {
	public giangvien(String maGV, String tenGV, String diaChi, int sdt, String email) {
		super();
		this.maGV = maGV;
		this.tenGV = tenGV;
		this.diaChi = diaChi;
		this.sdt = sdt;
		this.email = email;
	}
	private String maGV;
	private String tenGV;
	private String diaChi;
	private int sdt;
	private String email;
	/**
	 * @return the maGV
	 */
	public String getMaGV() {
		return maGV;
	}
	/**
	 * @param maGV the maGV to set
	 */
	public void setMaGV(String maGV) {
		this.maGV = maGV;
	}
	/**
	 * @return the tenGV
	 */
	public String getTenGV() {
		return tenGV;
	}
	/**
	 * @param tenGV the tenGV to set
	 */
	public void setTenGV(String tenGV) {
		this.tenGV = tenGV;
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
	
}
