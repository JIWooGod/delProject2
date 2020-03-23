package model.dto.hr;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class EmployeeDTO implements Serializable{
	Long empNo;
	Long deptNo;
	String empName;
	String empTel;
	String empEmail;
	String empAddr;
	Timestamp empDate;
	String empCarr;
	String empCerti;
	String empId;
	String empPw;
	Long joinChk;
	String passState;
	String empIp;
	
	public Long getEmpNo() {
		return empNo;
	}
	public void setEmpNo(Long empNo) {
		this.empNo = empNo;
	}
	public Long getDeptNo() {
		return deptNo;
	}
	public void setDeptNo(Long deptNo) {
		this.deptNo = deptNo;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpTel() {
		return empTel;
	}
	public void setEmpTel(String empTel) {
		this.empTel = empTel;
	}
	public String getEmpEmail() {
		return empEmail;
	}
	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}
	public String getEmpAddr() {
		return empAddr;
	}
	public void setEmpAddr(String empAddr) {
		this.empAddr = empAddr;
	}
	public Timestamp getEmpDate() {
		return empDate;
	}
	public void setEmpDate(Timestamp empDate) {
		this.empDate = empDate;
	}
	public String getEmpCarr() {
		return empCarr;
	}
	public void setEmpCarr(String empCarr) {
		this.empCarr = empCarr;
	}
	public String getEmpCerti() {
		return empCerti;
	}
	public void setEmpCerti(String empCerti) {
		this.empCerti = empCerti;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getEmpPw() {
		return empPw;
	}
	public void setEmpPw(String empPw) {
		this.empPw = empPw;
	}
	public Long getJoinChk() {
		return joinChk;
	}
	public void setJoinChk(Long joinChk) {
		this.joinChk = joinChk;
	}
	public String getPassState() {
		return passState;
	}
	public void setPassState(String passState) {
		this.passState = passState;
	}
	public String getEmpIp() {
		return empIp;
	}
	public void setEmpIp(String empIp) {
		this.empIp = empIp;
	}
}
