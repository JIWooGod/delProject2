package model.dto.hr;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class EmploymentDTO implements Serializable {
	Long employmentNo;
	Long empNo;
	String employmentSign;
	Long employmentSal;
	String employmentPosi;
	Timestamp employmentDate;
	
	public Long getEmploymentNo() {
		return employmentNo;
	}
	public void setEmploymentNo(Long employmentNo) {
		this.employmentNo = employmentNo;
	}
	public Long getEmpNo() {
		return empNo;
	}
	public void setEmpNo(Long empNo) {
		this.empNo = empNo;
	}
	public String getEmploymentSign() {
		return employmentSign;
	}
	public void setEmploymentSign(String employmentSign) {
		this.employmentSign = employmentSign;
	}
	public Long getEmploymentSal() {
		return employmentSal;
	}
	public void setEmploymentSal(Long employmentSal) {
		this.employmentSal = employmentSal;
	}
	public String getEmploymentPosi() {
		return employmentPosi;
	}
	public void setEmploymentPosi(String employmentPosi) {
		this.employmentPosi = employmentPosi;
	}
	public Timestamp getEmploymentDate() {
		return employmentDate;
	}
	public void setEmploymentDate(Timestamp employmentDate) {
		this.employmentDate = employmentDate;
	}
}
