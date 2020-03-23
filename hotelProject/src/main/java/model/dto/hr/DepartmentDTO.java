package model.dto.hr;

import java.io.Serializable;

@SuppressWarnings("serial")
public class DepartmentDTO implements Serializable{
	Integer deptNo;
	String detpName;
	String deptTel;
	String deptAddr;
	
	public Integer getDeptNo() {
		return deptNo;
	}
	public void setDeptNo(Integer deptNo) {
		this.deptNo = deptNo;
	}
	public String getDetpName() {
		return detpName;
	}
	public void setDetpName(String detpName) {
		this.detpName = detpName;
	}
	public String getDeptTel() {
		return deptTel;
	}
	public void setDeptTel(String deptTel) {
		this.deptTel = deptTel;
	}
	public String getDeptAddr() {
		return deptAddr;
	}
	public void setDeptAddr(String deptAddr) {
		this.deptAddr = deptAddr;
	}
}
