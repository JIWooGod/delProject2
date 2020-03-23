package command.room;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ReservationCommand {
	@DateTimeFormat(pattern= "yyyy-MM-dd")
	private Date fromdate;
	@DateTimeFormat(pattern= "yyyy-MM-dd")
	private Date todate;
	private String roomCount;
	private String people;
	private String days;
	private String roomGrade;
	
	
	public String getRoomGrade() {
		return roomGrade;
	}
	public void setRoomGrade(String roomGrade) {
		this.roomGrade = roomGrade;
	}
	public Date getFromdate() {
		return fromdate;
	}
	public void setFromdate(Date fromdate) {
		this.fromdate = fromdate;
	}
	public Date getTodate() {
		return todate;
	}
	public void setTodate(Date todate) {
		this.todate = todate;
	}
	public String getRoomCount() {
		return roomCount;
	}
	public void setRoomCount(String roomCount) {
		this.roomCount = roomCount;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	
	
	
}
