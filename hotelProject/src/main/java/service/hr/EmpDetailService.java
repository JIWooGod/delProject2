package service.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.hr.EmployeeDTO;
import repository.hr.EmpDetailRepository;

@Service
public class EmpDetailService {
	@Autowired
	private EmpDetailRepository empDetailRepository;
	
	public void action(Long empNo, Model model) {
		EmployeeDTO dto = new EmployeeDTO();
		dto.setEmpNo(empNo);
		dto = empDetailRepository.reposit(dto);
		model.addAttribute("emp",dto);
	}
}