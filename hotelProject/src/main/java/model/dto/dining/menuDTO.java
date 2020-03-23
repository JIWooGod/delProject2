package model.dto.dining;

public class menuDTO {
	Long rstNo;
	Long menuNo;
	String menuName;
	Long menuPrice;
	String menuCnt;
	String menuImg;
	
	public menuDTO() {
		
	}
	
	public Long getRstNo() {
		return rstNo;
	}
	public void setRstNo(Long rstNo) {
		this.rstNo = rstNo;
	}
	public Long getMenuNo() {
		return menuNo;
	}
	public void setMenuNo(Long menuNo) {
		this.menuNo = menuNo;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public Long getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(Long menuPrice) {
		this.menuPrice = menuPrice;
	}
	public String getMenuCnt() {
		return menuCnt;
	}
	public void setMenuCnt(String menuCnt) {
		this.menuCnt = menuCnt;
	}
	public String getMenuImg() {
		return menuImg;
	}
	public void setMenuImg(String menuImg) {
		this.menuImg = menuImg;
	}
	public menuDTO(Long rstNo, Long menuNo, String menuName, Long menuPrice, String menuCnt, String menuImg) {
		super();
		this.rstNo = rstNo;
		this.menuNo = menuNo;
		this.menuName = menuName;
		this.menuPrice = menuPrice;
		this.menuCnt = menuCnt;
		this.menuImg = menuImg;
	}
	
}
