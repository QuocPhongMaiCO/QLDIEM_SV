package models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class diem {

	private int maBD;
	public diem(int maBD, float heso1, float heso3, float heso6, float tongDiem, models.giangvien giangvien,
			models.sinhvien sinhvien, models.monhoc monhoc, models.tinchi tinchi, models.theloai theloai,
			models.hocky hocky, models.namhoc namhoc, Lop lop) {
		super();
		this.maBD = maBD;
		this.heso1 = heso1;
		this.heso3 = heso3;
		this.heso6 = heso6;
		this.tongDiem = tongDiem;
		this.giangvien = giangvien;
		this.sinhvien = sinhvien;
		this.monhoc = monhoc;
		this.tinchi = tinchi;
		this.theloai = theloai;
		this.hocky = hocky;
		this.namhoc = namhoc;
		this.lop = lop;
	}
	public diem() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * @return the maBD
	 */
	public int getMaBD() {
		return maBD;
	}
	/**
	 * @param maBD the maBD to set
	 */
	public void setMaBD(int maBD) {
		this.maBD = maBD;
	}
	/**
	 * @return the heso1
	 */
	public float getHeso1() {
		return heso1;
	}
	/**
	 * @param heso1 the heso1 to set
	 */
	public void setHeso1(float heso1) {
		this.heso1 = heso1;
	}
	/**
	 * @return the heso3
	 */
	public float getHeso3() {
		return heso3;
	}
	/**
	 * @param heso3 the heso3 to set
	 */
	public void setHeso3(float heso3) {
		this.heso3 = heso3;
	}
	/**
	 * @return the heso6
	 */
	public float getHeso6() {
		return heso6;
	}
	/**
	 * @param heso6 the heso6 to set
	 */
	public void setHeso6(float heso6) {
		this.heso6 = heso6;
	}
	/**
	 * @return the tongDiem
	 */
	public float getTongDiem() {
		return tongDiem;
	}
	/**
	 * @param tongDiem the tongDiem to set
	 */
	public void setTongDiem(float tongDiem) {
		this.tongDiem = tongDiem;
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
	/**
	 * @return the sinhvien
	 */
	public sinhvien getSinhvien() {
		return sinhvien;
	}
	/**
	 * @param sinhvien the sinhvien to set
	 */
	public void setSinhvien(sinhvien sinhvien) {
		this.sinhvien = sinhvien;
	}
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
	/**
	 * @return the hocky
	 */
	public hocky getHocky() {
		return hocky;
	}
	/**
	 * @param hocky the hocky to set
	 */
	public void setHocky(hocky hocky) {
		this.hocky = hocky;
	}
	/**
	 * @return the namhoc
	 */
	public namhoc getNamhoc() {
		return namhoc;
	}
	/**
	 * @param namhoc the namhoc to set
	 */
	public void setNamhoc(namhoc namhoc) {
		this.namhoc = namhoc;
	}
	/**
	 * @return the lop
	 */
	public Lop getLop() {
		return lop;
	}
	/**
	 * @param lop the lop to set
	 */
	public void setLop(Lop lop) {
		this.lop = lop;
	}
	private float heso1;
	private float heso3;
	private float heso6;
	private float tongDiem;
	giangvien giangvien;
	sinhvien sinhvien;
	monhoc monhoc;
	tinchi tinchi;
	theloai theloai;
	hocky hocky;
	namhoc namhoc;
	Lop lop;
	
	
}
