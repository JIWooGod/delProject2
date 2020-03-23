package model.dto.hr;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class TeacherDTO implements Serializable {
	Long teachNo;
	String teachName;
	String teachTel;
	String teachEmail;
	String teachAddr;
	String teachCarr;
	String teachViol;
	String teachCerti;
	String teachId;
	String teachPw;
	Timestamp teachDate;
	Long joinChk;
	String passState;
	String teachIp;
	
	public Long getTeachNo() {
		return teachNo;
	}
	public void setTeachNo(Long teachNo) {
		this.teachNo = teachNo;
	}
	public String getTeachName() {
		return teachName;
	}
	public void setTeachName(String teachName) {
		this.teachName = teachName;
	}
	public String getTeachTel() {
		return teachTel;
	}
	public void setTeachTel(String teachTel) {
		this.teachTel = teachTel;
	}
	public String getTeachEmail() {
		return teachEmail;
	}
	public void setTeachEmail(String teachEmail) {
		this.teachEmail = teachEmail;
	}
	public String getTeachAddr() {
		return teachAddr;
	}
	public void setTeachAddr(String teachAddr) {
		this.teachAddr = teachAddr;
	}
	public String getTeachCarr() {
		return teachCarr;
	}
	public void setTeachCarr(String teachCarr) {
		this.teachCarr = teachCarr;
	}
	public String getTeachViol() {
		return teachViol;
	}
	public void setTeachViol(String teachViol) {
		this.teachViol = teachViol;
	}
	public String getTeachCerti() {
		return teachCerti;
	}
	public void setTeachCerti(String teachCerti) {
		this.teachCerti = teachCerti;
	}
	public String getTeachId() {
		return teachId;
	}
	public void setTeachId(String teachId) {
		this.teachId = teachId;
	}
	public String getTeachPw() {
		return teachPw;
	}
	public void setTeachPw(String teachPw) {
		this.teachPw = teachPw;
	}
	public Timestamp getTeachDate() {
		return teachDate;
	}
	public void setTeachDate(Timestamp teachDate) {
		this.teachDate = teachDate;
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
	public String getTeachIp() {
		return teachIp;
	}
	public void setTeachIp(String teachIp) {
		this.teachIp = teachIp;
	}
}
