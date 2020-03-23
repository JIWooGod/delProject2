package model.dto.hr;

import java.io.Serializable;

@SuppressWarnings("serial")
public class JobintvDTO implements Serializable {
	Long jobintvNo;
	Long empNo;
	Long jobintvLang;
	Long jobintvServ;
	Long jobintvTask;
	Long jobintvSocial;
	Long jobintvSolve;
	
	public Long getJobintvNo() {
		return jobintvNo;
	}
	public void setJobintvNo(Long jobintvNo) {
		this.jobintvNo = jobintvNo;
	}
	public Long getEmpNo() {
		return empNo;
	}
	public void setEmpNo(Long empNo) {
		this.empNo = empNo;
	}
	public Long getJobintvLang() {
		return jobintvLang;
	}
	public void setJobintvLang(Long jobintvLang) {
		this.jobintvLang = jobintvLang;
	}
	public Long getJobintvServ() {
		return jobintvServ;
	}
	public void setJobintvServ(Long jobintvServ) {
		this.jobintvServ = jobintvServ;
	}
	public Long getJobintvTask() {
		return jobintvTask;
	}
	public void setJobintvTask(Long jobintvTask) {
		this.jobintvTask = jobintvTask;
	}
	public Long getJobintvSocial() {
		return jobintvSocial;
	}
	public void setJobintvSocial(Long jobintvSocial) {
		this.jobintvSocial = jobintvSocial;
	}
	public Long getJobintvSolve() {
		return jobintvSolve;
	}
	public void setJobintvSolve(Long jobintvSolve) {
		this.jobintvSolve = jobintvSolve;
	}
}
