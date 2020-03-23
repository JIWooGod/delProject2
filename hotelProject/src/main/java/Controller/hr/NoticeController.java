package Controller.hr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/personnel")
public class NoticeController {
	public String notice() {
		return "hr/notice";
	}
}