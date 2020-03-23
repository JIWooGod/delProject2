package command.shop;

import org.springframework.web.multipart.MultipartFile;

public class shopCommand {
	private String goodsCode;
	private String goodsName;
	private Integer goodsPrice;
	private String goodsOpt;
	private Integer goodsLev;
	private String goodsCode2;
	private String goodsCategory;
	private String goodsIncode;
	private Integer goodsQty;
	
	MultipartFile [] goodsPic;
	
	public Integer getGoodsQty() {
		return goodsQty;
	}

	public void setGoodsQty(Integer goodsQty) {
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

	public MultipartFile[] getGoodsPic() {
		return goodsPic;
	}

	public void setGoodsPic(MultipartFile[] goodsPic) {
		this.goodsPic = goodsPic;
	}
	
	
}