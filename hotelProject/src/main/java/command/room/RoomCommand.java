package command.room;

import org.springframework.web.multipart.MultipartFile;

public class RoomCommand {
	private Integer roomNo;
	private String roomGrade;
	private Integer roomPrice;
	private String roomView;
	private String roomLoc;
	private String roomBed;
	
	MultipartFile [] roomPic;

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

	public MultipartFile[] getRoomPic() {
		return roomPic;
	}

	public void setRoomPic(MultipartFile[] roomPic) {
		this.roomPic = roomPic;
	}
	
	
}
