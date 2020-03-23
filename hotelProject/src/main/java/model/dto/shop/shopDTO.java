package model.dto.shop;

import java.io.Serializable;

@SuppressWarnings("serial")
public class shopDTO implements Serializable {
	private String goodsCode;
	private String goodsName;
	private Integer goodsPrice;
	private String goodsPic;
	private String goodsOpt;
	private Integer goodsLev;
	private String goodsCode2;
	private String goodsCategory;
	private String goodsIncode;
	private Integer goodsQty;
	
	public shopDTO() {} ;
	
	public shopDTO(String goodsCode, String goodsName, Integer goodsPrice, String goodsPic, String goodsOpt,
			Integer goodsLev, String goodsCode2, String goodsCategory, String goodsIncode, Integer goodsQty ) {
		super();
		this.goodsCode = goodsCode;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsPic = goodsPic;
		this.goodsOpt = goodsOpt;
		this.goodsLev = goodsLev;
		this.goodsCode2 = goodsCode2;
		this.goodsCategory = goodsCategory;
		this.goodsIncode = goodsIncode;
		this.goodsQty = goodsQty;
	}
	public String getGoodsCode() {
		return goodsCode;
	}
	public void setGoodsCode(String goodsCode) {
		this.goodsCode = goodsCode;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public Integer getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(Integer goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getGoodsPic() {
		return goodsPic;
	}
	public void setGoodsPic(String goodsPic) {
		this.goodsPic = goodsPic;
	}
	public String getGoodsOpt() {
		return goodsOpt;
	}
	public void setGoodsOpt(String goodsOpt) {
		this.goodsOpt = goodsOpt;
	}
	public Integer getGoodsLev() {
		return goodsLev;
	}
	public void setGoodsLev(Integer goodsLev) {
		this.goodsLev = goodsLev;
	}
	public String getGoodsCode2() {
		return goodsCode2;
	}
	public void setGoodsCode2(String goodsCode2) {
		this.goodsCode2 = goodsCode2;
	}
	public String getGoodsCategory() {
		return goodsCategory;
	}
	public void setGoodsCategory(String goodsCategory) {
		this.goodsCategory = goodsCategory;
	}
	public String getGoodsIncode() {
		return goodsIncode;
	}
	public void setGoodsIncode(String goodsIncode) {
		this.goodsIncode = goodsIncode;
	}

	public Integer getGoodsQty() {
		return goodsQty;
	}

	public void setGoodsQty(Integer goodsQty) {
		this.goodsQty = goodsQty;
	}
	
	
}
