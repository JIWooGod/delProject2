package Controller.hr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	@RequestMapping("/personnel")
	public String notice() {
		return "hr/notice";
	}
}