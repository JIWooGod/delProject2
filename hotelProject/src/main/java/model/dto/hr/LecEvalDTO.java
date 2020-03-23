package model.dto.hr;

import java.io.Serializable;

@SuppressWarnings("serial")
public class LecEvalDTO implements Serializable {
	Long LecEvalNo;
	Long empNo;
	Long lecNo;
	Long lecEvalSubStfy;
	Long lecEvalRelate;
	Long lecEvalLecStfy;
	String LecEvalEtc;
	
	public Long getLecEvalNo() {
		return LecEvalNo;
	}
	public void setLecEvalNo(Long lecEvalNo) {
		LecEvalNo = lecEvalNo;
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
	public Long getLecEvalSubStfy() {
		return lecEvalSubStfy;
	}
	public void setLecEvalSubStfy(Long lecEvalSubStfy) {
		this.lecEvalSubStfy = lecEvalSubStfy;
	}
	public Long getLecEvalRelate() {
		return lecEvalRelate;
	}
	public void setLecEvalRelate(Long lecEvalRelate) {
		this.lecEvalRelate = lecEvalRelate;
	}
	public Long getLecEvalLecStfy() {
		return lecEvalLecStfy;
	}
	public void setLecEvalLecStfy(Long lecEvalLecStfy) {
		this.lecEvalLecStfy = lecEvalLecStfy;
	}
	public String getLecEvalEtc() {
		return LecEvalEtc;
	}
	public void setLecEvalEtc(String lecEvalEtc) {
		LecEvalEtc = lecEvalEtc;
	}
}
