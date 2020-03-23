package Controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class shopMainController {
	@RequestMapping("/delshop")
	public String shopMain() {
		return "shop/shopIndex";
	}
	@RequestMapping("/product")
	public String productMain() {
		return "shop/product-page";
	}
	@RequestMapping("/cart")
	public String cartMain() {
		return "shop/shop-Cart";
	}
	@RequestMapping("/sa")
	public String goodsInsert() {
		return "shop/goodsInsert";
	}
}
