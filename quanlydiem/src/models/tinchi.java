package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class tinchi {
	
	private String maTC;
	private int soTC;
	/**
	 * @return the maTC
	 */
	public String getMaTC() {
		return maTC;
	}
	/**
	 * @param maTC the maTC to set
	 */
	public void setMaTC(String maTC) {
		this.maTC = maTC;
	}
	/**
	 * @return the soTC
	 */
	public int getSoTC() {
		return soTC;
	}
	public tinchi(String maTC, int soTC) {
		super();
		this.maTC = maTC;
		this.soTC = soTC;
	}
	/**
	 * @param soTC the soTC to set
	 */
	public void setSoTC(int soTC) {
		this.soTC = soTC;
	}
	
}
