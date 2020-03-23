package Controller.shop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.shop.shopCommand;
import service.shop.goodsInsertService;

@Controller
@RequestMapping(value = "/delshop/sa")
public class shopInsertController {
	@Autowired
	goodsInsertService goodsInsertService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String insert() {
		
		return "shop/goodsInsert";
	}
	@RequestMapping(method = RequestMethod.POST)
	public String insertPro(shopCommand shopcommand , HttpServletRequest request) {
		System.out.println("들어옴");
		goodsInsertService.execute(shopcommand, request);
		return "redirect:delshop/product";
	}

}
