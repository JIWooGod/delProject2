package service.hr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.hr.EmployeeDTO;
import repository.hr.EmpListRepository;

@Service
public class EmpListService {
	@Autowired
	private EmpListRepository empListRepository;
	
	public void view(Model model) {
		List<EmployeeDTO> list = empListRepository.listView();
		model.addAttribute("emp",list);
	}
}
