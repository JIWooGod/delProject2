package model.dto.hr;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class AnswerDTO implements Serializable {
	Long lecNo;
	Long answerNo;
	Long questNo;
	Long answer1;
	Long answer2;
	Long answer3;
	Long answer4;
	Long answer5;
	Long answer6;
	Long answer7;
	Long answer8;
	Long answer9;
	Long answer10;
	Timestamp answerRegdate;
	
	public Long getLecNo() {
		return lecNo;
	}
	public void setLecNo(Long lecNo) {
		this.lecNo = lecNo;
	}
	public Long getAnswerNo() {
		return answerNo;
	}
	public void setAnswerNo(Long answerNo) {
		this.answerNo = answerNo;
	}
	public Long getQuestNo() {
		return questNo;
	}
	public void setQuestNo(Long questNo) {
		this.questNo = questNo;
	}
	public Long getAnswer1() {
		return answer1;
	}
	public void setAnswer1(Long answer1) {
		this.answer1 = answer1;
	}
	public Long getAnswer2() {
		return answer2;
	}
	public void setAnswer2(Long answer2) {
		this.answer2 = answer2;
	}
	public Long getAnswer3() {
		return answer3;
	}
	public void setAnswer3(Long answer3) {
		this.answer3 = answer3;
	}
	public Long getAnswer4() {
		return answer4;
	}
	public void setAnswer4(Long answer4) {
		this.answer4 = answer4;
	}
	public Long getAnswer5() {
		return answer5;
	}
	public void setAnswer5(Long answer5) {
		this.answer5 = answer5;
	}
	public Long getAnswer6() {
		return answer6;
	}
	public void setAnswer6(Long answer6) {
		this.answer6 = answer6;
	}
	public Long getAnswer7() {
		return answer7;
	}
	public void setAnswer7(Long answer7) {
		this.answer7 = answer7;
	}
	public Long getAnswer8() {
		return answer8;
	}
	public void setAnswer8(Long answer8) {
		this.answer8 = answer8;
	}
	public Long getAnswer9() {
		return answer9;
	}
	public void setAnswer9(Long answer9) {
		this.answer9 = answer9;
	}
	public Long getAnswer10() {
		return answer10;
	}
	public void setAnswer10(Long answer10) {
		this.answer10 = answer10;
	}
	public Timestamp getAnswerRegdate() {
		return answerRegdate;
	}
	public void setAnswerRegdate(Timestamp answerRegdate) {
		this.answerRegdate = answerRegdate;
	}
}
