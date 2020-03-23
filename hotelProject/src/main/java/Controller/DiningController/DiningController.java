package Controller.DiningController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DiningController {
	@RequestMapping("/dining1")
	public String dining1() {
		return "dining/dining1";
	}
	
	@RequestMapping("/dining2")
	public String dining2() {
		return "dining/dining2";
	}
	
	@RequestMapping("/dining3")
	public String dining3() {
		return "dining/dining3";
	}
	
	@RequestMapping("/dining4")
	public String dining4() {
		return "dining/dining4";
	}
	
	@RequestMapping("/dining5")
	public String dining5() {
		return "dining/dining5";
	}
	
	@RequestMapping("/dining6")
	public String dining6() {
		return "dining/dining6";
	}
	
	@RequestMapping("/dining1_detail")
	public String dining1_detail() {
		return "dining/dining1_detail";
	}
	
	@RequestMapping("/d1reservation")
	public String d1reservation() {
		return "dining/d1reservation";
	}
}
