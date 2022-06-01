package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class namhoc {

	/**
	 * @return the maNH
	 */
	public String getMaNH() {
		return maNH;
	}
	/**
	 * @param maNH the maNH to set
	 */
	public void setMaNH(String maNH) {
		this.maNH = maNH;
	}
	public namhoc(String maNH, String tenNH) {
		super();
		this.maNH = maNH;
		this.tenNH = tenNH;
	}
	/**
	 * @return the tenNH
	 */
	public String getTenNH() {
		return tenNH;
	}
	/**
	 * @param tenNH the tenNH to set
	 */
	public void setTenNH(String tenNH) {
		this.tenNH = tenNH;
	}
	private String maNH;
	private String tenNH;
	
}
