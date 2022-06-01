package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Khoa {
	
	private String maKH;
	private String tenKH;
	private String lienheKH;
	/**
	 * @return the maKH
	 */
	public String getMaKH() {
		return maKH;
	}
	/**
	 * @param maKH the maKH to set
	 */
	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}
	/**
	 * @return the tenKH
	 */
	public String getTenKH() {
		return tenKH;
	}
	public Khoa(String maKH, String tenKH, String lienheKH) {
		super();
		this.maKH = maKH;
		this.tenKH = tenKH;
		this.lienheKH = lienheKH;
	}
	/**
	 * @param tenKH the tenKH to set
	 */
	public void setTenKH(String tenKH) {
		this.tenKH = tenKH;
	}
	/**
	 * @return the lienheKH
	 */
	public String getLienheKH() {
		return lienheKH;
	}
	/**
	 * @param lienheKH the lienheKH to set
	 */
	public void setLienheKH(String lienheKH) {
		this.lienheKH = lienheKH;
	}
	
}
