package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class monhoc_giangvien {

	monhoc monhoc;
	giangvien giangvien;
	/**
	 * @return the monhoc
	 */
	public monhoc getMonhoc() {
		return monhoc;
	}
	/**
	 * @param monhoc the monhoc to set
	 */
	public void setMonhoc(monhoc monhoc) {
		this.monhoc = monhoc;
	}
	public monhoc_giangvien(models.monhoc monhoc, models.giangvien giangvien) {
		super();
		this.monhoc = monhoc;
		this.giangvien = giangvien;
	}
	/**
	 * @return the giangvien
	 */
	public giangvien getGiangvien() {
		return giangvien;
	}
	/**
	 * @param giangvien the giangvien to set
	 */
	public void setGiangvien(giangvien giangvien) {
		this.giangvien = giangvien;
	}
	
}
