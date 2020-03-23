package repository.hr;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public class EmpInterviewController {
	@RequestMapping("personnel/contract")
	public String contract(@RequestParam(value="num") Long num) {
		return "hr/contractEmp";
	}
}