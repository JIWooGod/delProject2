package Controller.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.hr.EmpDetailService;

@Controller
public class FormEmpController {
	@Autowired
	private EmpDetailService empDetailService;
	
	@RequestMapping(value="/personnel/modify", method=RequestMethod.GET)
	public String form(@RequestParam(value="empNo") Long empNo, Model model) {
		empDetailService.action(empNo, model);
		return "hr/modify";
	}
}