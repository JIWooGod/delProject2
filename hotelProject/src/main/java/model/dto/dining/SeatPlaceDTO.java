package model.dto.dining;

import java.io.Serializable;

@SuppressWarnings("serial")
public class SeatPlaceDTO implements Serializable {
	Long rstNo;
	Long rstTbl;
	Long rstSeat;
	String tblKind;
	
	public SeatPlaceDTO(Long rstNo, Long rstTbl, Long rstSeat, String tblKind) {
		this.rstNo = rstNo;
		this.rstTbl = rstTbl;
		this.rstSeat = rstSeat;
		this.tblKind = tblKind;
	}

	public String getTblKind() {
		return tblKind;
	}

	public void setTblKind(String tblKind) {
		this.tblKind = tblKind;
	}

	public SeatPlaceDTO() {
		
	}

	public Long getRstNo() {
		return rstNo;
	}

	public void setRstNo(Long rstNo) {
		this.rstNo = rstNo;
	}

	public Long getRstTbl() {
		return rstTbl;
	}

	public void setRstTbl(Long rstTbl) {
		this.rstTbl = rstTbl;
	}

	public Long getRstSeat() {
		return rstSeat;
	}

	public void setRstSeat(Long rstSeat) {
		this.rstSeat = rstSeat;
	}
	
	
}
