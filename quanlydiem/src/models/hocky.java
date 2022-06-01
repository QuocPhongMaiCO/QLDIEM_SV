package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class hocky {
	
	private String maHK;
	private String tenHK;
	public hocky(String maHK, String tenHK) {
		super();
		this.maHK = maHK;
		this.tenHK = tenHK;
	}
	/**
	 * @return the maHK
	 */
	public String getMaHK() {
		return maHK;
	}
	/**
	 * @param maHK the maHK to set
	 */
	public void setMaHK(String maHK) {
		this.maHK = maHK;
	}
	/**
	 * @return the tenHK
	 */
	public String getTenHK() {
		return tenHK;
	}
	/**
	 * @param tenHK the tenHK to set
	 */
	public void setTenHK(String tenHK) {
		this.tenHK = tenHK;
	}
	
}
