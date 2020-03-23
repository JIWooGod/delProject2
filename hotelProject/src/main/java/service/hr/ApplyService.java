package service.hr;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.multipart.MultipartFile;

import command.hr.ApplyCommand;
import model.dto.hr.EmployeeDTO;
import model.dto.hr.TeacherDTO;
import repository.hr.ApplyRepository;

@Service
public class ApplyService {
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	@Autowired
	private ApplyRepository applyRepository;
	
	public void action(HttpServletRequest request, ApplyCommand applyCommand,
			Errors errors, String job) {
		String password = bcryptPasswordEncoder.encode(applyCommand.getPw());
		
		if(job=="staff") {
			EmployeeDTO dto = new EmployeeDTO();

			dto.setDeptNo(applyCommand.getDeptNo());
			dto.setEmpName(applyCommand.getName());
			dto.setEmpTel(applyCommand.getTel());
			dto.setEmpEmail(applyCommand.getEmail());
			dto.setEmpAddr(applyCommand.getAddr());
			dto.setEmpCarr(applyCommand.getCareer());
			dto.setEmpCerti(applyCommand.getCerti());
			dto.setEmpId(applyCommand.getId());
			if(bcryptPasswordEncoder.matches(applyCommand.getRePw(), password)) {
				dto.setEmpPw(password);
			}else {
				System.out.println("::::::비밀번호 틀림 메시지+유효성검사 할 것::::::");
			}
			dto.setEmpIp(request.getRemoteAddr());
			
			applyRepository.applyPut(dto);
		}else if(job=="teacher") {
			TeacherDTO dto = new TeacherDTO();

			dto.setTeachName(applyCommand.getName());
			dto.setTeachTel(applyCommand.getTel());
			dto.setTeachEmail(applyCommand.getEmail());
			dto.setTeachAddr(applyCommand.getAddr());
			dto.setTeachCarr(applyCommand.getCareer());
			dto.setTeachCerti(applyCommand.getCerti());
			dto.setTeachId(applyCommand.getId());
			if(bcryptPasswordEncoder.matches(applyCommand.getRePw(), password)) {
				dto.setTeachPw(password);
			}else {
				System.out.println("::::::비밀번호 틀림 메시지+유효성검사 할 것::::::");
			}
			dto.setTeachIp(request.getRemoteAddr());
			
			applyRepository.applyPut2(dto);
		}
	}
}