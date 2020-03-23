package model.dto.room;

import java.io.Serializable;

@SuppressWarnings("serial")
public class RoomDTO implements Serializable
{
	private Integer roomNo;
	private String roomGrade;
	private Integer roomPrice;
	private String roomView;
	private String roomLoc;
	private String roomBed;
	private String roomPic;
	
	public RoomDTO() {}
	
	
	
	public RoomDTO(Integer roomNo, String roomGrade, Integer roomPrice, String roomView, String roomLoc, String roomBed,
			String roomPic) {
		this.roomNo = roomNo;
		this.roomGrade = roomGrade;
		this.roomPrice = roomPrice;
		this.roomView = roomView;
		this.roomLoc = roomLoc;
		this.roomBed = roomBed;
		this.roomPic = roomPic;
	}



	public Integer getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(Integer roomNo) {
		this.roomNo = roomNo;
	}
	public String getRoomGrade() {
		return roomGrade;
	}
	public void setRoomGrade(String roomGrade) {
		this.roomGrade = roomGrade;
	}
	public Integer getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(Integer roomPrice) {
		this.roomPrice = roomPrice;
	}
	public String getRoomView() {
		return roomView;
	}
	public void setRoomView(String roomView) {
		this.roomView = roomView;
	}
	public String getRoomLoc() {
		return roomLoc;
	}
	public void setRoomLoc(String roomLoc) {
		this.roomLoc = roomLoc;
	}
	public String getRoomBed() {
		return roomBed;
	}
	public void setRoomBed(String roomBed) {
		this.roomBed = roomBed;
	}
	public String getRoomPic() {
		return roomPic;
	}
	public void setRoomPic(String roomPic) {
		this.roomPic = roomPic;
	}
}
