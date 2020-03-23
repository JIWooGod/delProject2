package service.hr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.hr.ApplyCommand;
import model.dto.hr.EmployeeDTO;
import repository.hr.EmpModifyRepository;

@Service
public class EmpModifyService {
	@Autowired
	private BCryptPasswordEncoder bcryptpasswordEncoder;
	@Autowired
	private EmpModifyRepository empModifyRepository;
	
	public Integer action(Long empNo, ApplyCommand app, Model model, HttpSession session) {
		//AuthInfoHR auth = ((AuthInfoHr)session.getAttribute("authHR")).getAuthId;
		
		String password = bcryptpasswordEncoder.encode(app.getPw());
		
		EmployeeDTO dto = new EmployeeDTO();
		dto.setEmpNo(empNo);
		if(bcryptpasswordEncoder.matches(app.getRePw(), password)) {
			dto.setEmpPw(password);
		}else {
			System.out.println("::::::비번틀림, error 유효성검사::::::");
		}
		dto.setEmpName(app.getName());
		dto.setEmpTel(app.getTel());
		dto.setEmpEmail(app.getEmail());
		dto.setEmpAddr(app.getAddr());
		dto.setEmpCerti(app.getCerti());
		dto.setEmpCarr(app.getCareer());
		
		Integer i = empModifyRepository.reposit(dto);
				
		model.addAttribute("emp",dto);
		return i;
	}
}
