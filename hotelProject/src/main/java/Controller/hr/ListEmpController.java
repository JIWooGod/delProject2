package Controller.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.hr.EmpListService;

@Controller
public class ListEmpController {
	@Autowired
	private EmpListService empListService;
	
	@RequestMapping("/personnel/list")
	public String list(Model model) {
		empListService.view(model);
		return "hr/personList";
	}
	
	@RequestMapping("/teacher/list")
	public String list2(Model model) {
		empListService.view(model);
		return "hr/teacherList";
	}
}
