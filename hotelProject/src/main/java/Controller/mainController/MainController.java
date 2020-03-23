package Controller.mainController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("/main")
	public String mainPage() {
		return "/main/main";
	}
	@RequestMapping("/about")
	public String aboutOne() {
		return "/about/about_1";
	}
	@RequestMapping("/about2")
	public String aboutTwo() {
		return "/about/about_2";
	}
}
