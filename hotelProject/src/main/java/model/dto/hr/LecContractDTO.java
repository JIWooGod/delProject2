package model.dto.hr;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class LecContractDTO implements Serializable {
	Long lecNo;
	Long teachNo;
	Long subjNo;
	Timestamp lecDate;
	Long lecPay;
	String lecSign;
	Long lecUnit;
	
	public Long getLecNo() {
		return lecNo;
	}
	public void setLecNo(Long lecNo) {
		this.lecNo = lecNo;
	}
	public Long getTeachNo() {
		return teachNo;
	}
	public void setTeachNo(Long teachNo) {
		this.teachNo = teachNo;
	}
	public Long getSubjNo() {
		return subjNo;
	}
	public void setSubjNo(Long subjNo) {
		this.subjNo = subjNo;
	}
	public Timestamp getLecDate() {
		return lecDate;
	}
	public void setLecDate(Timestamp lecDate) {
		this.lecDate = lecDate;
	}
	public Long getLecPay() {
		return lecPay;
	}
	public void setLecPay(Long lecPay) {
		this.lecPay = lecPay;
	}
	public String getLecSign() {
		return lecSign;
	}
	public void setLecSign(String lecSign) {
		this.lecSign = lecSign;
	}
	public Long getLecUnit() {
		return lecUnit;
	}
	public void setLecUnit(Long lecUnit) {
		this.lecUnit = lecUnit;
	}
}
