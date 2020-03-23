package model.dto.hr;

import java.io.Serializable;

@SuppressWarnings("serial")
public class PromotionDTO implements Serializable {
	Long prmoNo;
	Long empNo;
	Long empProGrd;
	Long empProScore;
	
	public Long getPrmoNo() {
		return prmoNo;
	}
	public void setPrmoNo(Long prmoNo) {
		this.prmoNo = prmoNo;
	}
	public Long getEmpNo() {
		return empNo;
	}
	public void setEmpNo(Long empNo) {
		this.empNo = empNo;
	}
	public Long getEmpProGrd() {
		return empProGrd;
	}
	public void setEmpProGrd(Long empProGrd) {
		this.empProGrd = empProGrd;
	}
	public Long getEmpProScore() {
		return empProScore;
	}
	public void setEmpProScore(Long empProScore) {
		this.empProScore = empProScore;
	}
}
