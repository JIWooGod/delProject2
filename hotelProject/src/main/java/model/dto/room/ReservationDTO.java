package model.dto.room;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;


@SuppressWarnings("serial")
public class ReservationDTO implements Serializable {
	private Integer rmbkNo;
	private String memId;
	private Integer roomNo;
	private Integer roomGrade;
	private Integer payNo;
	private Timestamp rmbkDate;
	private String rmbkOption;
	private String rmbkDnd;
	private String rmbkPeople;
	private String rmbkPrice;
	private String rmbkAdd;
	private Timestamp rmbkChkIn;
	private Timestamp rmbkChkOut;
	private String realIn;
	private String realOut;
	private String roomCount;
	private String roomDays;
	
	
	public String getRoomDays() {
		return roomDays;
	}
	public void setRoomDays(String roomDays) {
		this.roomDays = roomDays;
	}
	public String getRoomCount() {
		return roomCount;
	}
	public void setRoomCount(String roomCount) {
		this.roomCount = roomCount;
	}
	public Integer getRmbkNo() {
		return rmbkNo;
	}
	public void setRmbkNo(Integer rmbkNo) {
		this.rmbkNo = rmbkNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public Integer getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(Integer roomNo) {
		this.roomNo = roomNo;
	}
	public Integer getRoomGrade() {
		return roomGrade;
	}
	public void setRoomGrade(Integer roomGrade) {
		this.roomGrade = roomGrade;
	}
	public Integer getPayNo() {
		return payNo;
	}
	public void setPayNo(Integer payNo) {
		this.payNo = payNo;
	}
	public Timestamp getRmbkDate() {
		return rmbkDate;
	}
	public void setRmbkDate(Timestamp rmbkDate) {
		this.rmbkDate = rmbkDate;
	}
	public String getRmbkOption() {
		return rmbkOption;
	}
	public void setRmbkOption(String rmbkOption) {
		this.rmbkOption = rmbkOption;
	}
	public String getRmbkDnd() {
		return rmbkDnd;
	}
	public void setRmbkDnd(String rmbkDnd) {
		this.rmbkDnd = rmbkDnd;
	}
	public String getRmbkPeople() {
		return rmbkPeople;
	}
	public void setRmbkPeople(String rmbkPeople) {
		this.rmbkPeople = rmbkPeople;
	}
	public String getRmbkPrice() {
		return rmbkPrice;
	}
	public void setRmbkPrice(String rmbkPrice) {
		this.rmbkPrice = rmbkPrice;
	}
	public String getRmbkAdd() {
		return rmbkAdd;
	}
	public void setRmbkAdd(String rmbkAdd) {
		this.rmbkAdd = rmbkAdd;
	}
	public Timestamp getRmbkChkIn() {
		return rmbkChkIn;
	}
	public void setRmbkChkIn(Timestamp rmbkChkIn) {
		this.rmbkChkIn = rmbkChkIn;
	}
	public Timestamp getRmbkChkOut() {
		return rmbkChkOut;
	}
	public void setRmbkChkOut(Timestamp rmbkChkOut) {
		this.rmbkChkOut = rmbkChkOut;
	}
	public String getRealIn() {
		return realIn;
	}
	public void setRealIn(String realIn) {
		this.realIn = realIn;
	}
	public String getRealOut() {
		return realOut;
	}
	public void setRealOut(String realOut) {
		this.realOut = realOut;
	}
	
	
}
