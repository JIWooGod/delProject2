package Controller.hr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.hr.ApplyCommand;
import model.dto.hr.AuthInfoHR;
import service.hr.EmpModifyService;

@Controller
public class ModifyEmpController {
	@Autowired
	private EmpModifyService empModifyService;
	@RequestMapping(value="/personnel/modifying", method=RequestMethod.POST)
	public String modifying(@RequestParam(value="empNo") Long empNo,
			ApplyCommand applyCommand, Model model, HttpSession session) {
		Integer i = empModifyService.action(empNo,applyCommand,model,session);
		if(i>0) {
			return "redirect:/personnel/detail/"+empNo;
		}else {
			return "hr/modify";
		}
	}
}
