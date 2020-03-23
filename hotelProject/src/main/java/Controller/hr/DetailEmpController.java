package Controller.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import service.hr.EmpDetailService;

@Controller
public class DetailEmpController {
	@Autowired
	private EmpDetailService empDetailService;
	
	@RequestMapping("/personnel/detail/{empNo}")
	public String empDetail(@PathVariable(value="empNo") Long empNo,
			Model model) {
		empDetailService.action(empNo, model);
		return "hr/detail";
	}
}
