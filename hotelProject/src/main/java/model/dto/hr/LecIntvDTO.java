package model.dto.hr;

import java.io.Serializable;

@SuppressWarnings("serial")
public class LecIntvDTO implements Serializable {
	Long lecIntvNo;
	Long teachNo;
	Long empNo;
	Long lecIntvEthic;
	Long lecIntvTeach;
	Long lecIntvUdst;
	String lecIntvEtc;
	
	public Long getLecIntvNo() {
		return lecIntvNo;
	}
	public void setLecIntvNo(Long lecIntvNo) {
		this.lecIntvNo = lecIntvNo;
	}
	public Long getTeachNo() {
		return teachNo;
	}
	public void setTeachNo(Long teachNo) {
		this.teachNo = teachNo;
	}
	public Long getEmpNo() {
		return empNo;
	}
	public void setEmpNo(Long empNo) {
		this.empNo = empNo;
	}
	public Long getLecIntvEthic() {
		return lecIntvEthic;
	}
	public void setLecIntvEthic(Long lecIntvEthic) {
		this.lecIntvEthic = lecIntvEthic;
	}
	public Long getLecIntvTeach() {
		return lecIntvTeach;
	}
	public void setLecIntvTeach(Long lecIntvTeach) {
		this.lecIntvTeach = lecIntvTeach;
	}
	public Long getLecIntvUdst() {
		return lecIntvUdst;
	}
	public void setLecIntvUdst(Long lecIntvUdst) {
		this.lecIntvUdst = lecIntvUdst;
	}
	public String getLecIntvEtc() {
		return lecIntvEtc;
	}
	public void setLecIntvEtc(String lecIntvEtc) {
		this.lecIntvEtc = lecIntvEtc;
	}
}
