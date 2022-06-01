package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class theloai {

	private String maTL;
	private String tenTL;
	/**
	 * @return the maTL
	 */
	public String getMaTL() {
		return maTL;
	}
	/**
	 * @param maTL the maTL to set
	 */
	public void setMaTL(String maTL) {
		this.maTL = maTL;
	}
	public theloai(String maTL, String tenTL) {
		super();
		this.maTL = maTL;
		this.tenTL = tenTL;
	}
	/**
	 * @return the tenTL
	 */
	public String getTenTL() {
		return tenTL;
	}
	/**
	 * @param tenTL the tenTL to set
	 */
	public void setTenTL(String tenTL) {
		this.tenTL = tenTL;
	}
	
}
