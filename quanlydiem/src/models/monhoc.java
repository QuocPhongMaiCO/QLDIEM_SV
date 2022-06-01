package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class monhoc {

	private String maMH;
	private String tenMH;
	tinchi tinchi;
	theloai theloai;
	/**
	 * @return the maMH
	 */
	public String getMaMH() {
		return maMH;
	}
	/**
	 * @param maMH the maMH to set
	 */
	public void setMaMH(String maMH) {
		this.maMH = maMH;
	}
	/**
	 * @return the tenMH
	 */
	public String getTenMH() {
		return tenMH;
	}
	public monhoc(String maMH, String tenMH, models.tinchi tinchi, models.theloai theloai) {
		super();
		this.maMH = maMH;
		this.tenMH = tenMH;
		this.tinchi = tinchi;
		this.theloai = theloai;
	}
	/**
	 * @param tenMH the tenMH to set
	 */
	public void setTenMH(String tenMH) {
		this.tenMH = tenMH;
	}
	/**
	 * @return the tinchi
	 */
	public tinchi getTinchi() {
		return tinchi;
	}
	/**
	 * @param tinchi the tinchi to set
	 */
	public void setTinchi(tinchi tinchi) {
		this.tinchi = tinchi;
	}
	/**
	 * @return the theloai
	 */
	public theloai getTheloai() {
		return theloai;
	}
	/**
	 * @param theloai the theloai to set
	 */
	public void setTheloai(theloai theloai) {
		this.theloai = theloai;
	}
	
}
