package Controller.hr;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;

import command.hr.ApplyCommand;
import service.hr.ApplyService;

@Controller
public class ApplyEmpController {
	@Autowired
	private ApplyService applyService;
	
	@RequestMapping("/personnel/apply")
	public String empApply() {
		return "hr/apply";
	}
	
	@RequestMapping("/personnel/appling")
	public String empApplying(HttpServletRequest request,ApplyCommand applyCommand,
			Errors errors) {
		applyService.action(request,applyCommand,errors);
		return "redirect:/personnel/detail";
	}
}
