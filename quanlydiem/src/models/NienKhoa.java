package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class NienKhoa {
	
	private String maNK;
	private String tenNK;
	/**
	 * @return the maNK
	 */
	public String getMaNK() {
		return maNK;
	}
	/**
	 * @param maNK the maNK to set
	 */
	public void setMaNK(String maNK) {
		this.maNK = maNK;
	}
	/**
	 * @return the tenNK
	 */
	public String getTenNK() {
		return tenNK;
	}
	public NienKhoa(String maNK, String tenNK) {
		super();
		this.maNK = maNK;
		this.tenNK = tenNK;
	}
	/**
	 * @param tenNK the tenNK to set
	 */
	public void setTenNK(String tenNK) {
		this.tenNK = tenNK;
	}
	
}
