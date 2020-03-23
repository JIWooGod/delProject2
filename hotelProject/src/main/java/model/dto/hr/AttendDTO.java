package model.dto.hr;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class AttendDTO implements Serializable {
	Long attendNo;
	Long empNo;
	Long lecNo;
	Timestamp attendDate;
	Long attendTime;
	Timestamp complDate;
	
	public Long getAttendNo() {
		return attendNo;
	}
	public void setAttendNo(Long attendNo) {
		this.attendNo = attendNo;
	}
	public Long getEmpNo() {
		return empNo;
	}
	public void setEmpNo(Long empNo) {
		this.empNo = empNo;
	}
	public Long getLecNo() {
		return lecNo;
	}
	public void setLecNo(Long lecNo) {
		this.lecNo = lecNo;
	}
	public Timestamp getAttendDate() {
		return attendDate;
	}
	public void setAttendDate(Timestamp attendDate) {
		this.attendDate = attendDate;
	}
	public Long getAttendTime() {
		return attendTime;
	}
	public void setAttendTime(Long attendTime) {
		this.attendTime = attendTime;
	}
	public Timestamp getComplDate() {
		return complDate;
	}
	public void setComplDate(Timestamp complDate) {
		this.complDate = complDate;
	}
}
