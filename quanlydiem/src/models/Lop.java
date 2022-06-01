package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Lop {
	
	private int maLop;
	private String tenLop;
	Khoa khoa;
	/**
	 * @return the maLop
	 */
	public int getMaLop() {
		return maLop;
	}
	/**
	 * @param maLop the maLop to set
	 */
	public void setMaLop(int maLop) {
		this.maLop = maLop;
	}
	public Lop(int maLop, String tenLop, Khoa khoa) {
		super();
		this.maLop = maLop;
		this.tenLop = tenLop;
		this.khoa = khoa;
	}
	/**
	 * @return the tenLop
	 */
	public String getTenLop() {
		return tenLop;
	}
	/**
	 * @param tenLop the tenLop to set
	 */
	public void setTenLop(String tenLop) {
		this.tenLop = tenLop;
	}
	/**
	 * @return the khoa
	 */
	public Khoa getKhoa() {
		return khoa;
	}
	/**
	 * @param khoa the khoa to set
	 */
	public void setKhoa(Khoa khoa) {
		this.khoa = khoa;
	}
	
}
