package service.hr;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import command.hr.ApplyCommand;
import model.dto.hr.TeacherDTO;
import repository.hr.ApplyRepository;

public class TchModifyService {
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	@Autowired
	private ApplyRepository applyRepository;
	
	public void action(HttpServletRequest request, ApplyCommand command) {
		String password = bcryptPasswordEncoder.encode(command.getPw());
		TeacherDTO dto = new TeacherDTO();

		dto.setTeachName(command.getName());
		dto.setTeachTel(command.getTel());
		dto.setTeachEmail(command.getEmail());
		dto.setTeachAddr(command.getAddr());
		dto.setTeachCarr(command.getCareer());
		dto.setTeachCerti(command.getCerti());
		dto.setTeachId(command.getId());
		if(bcryptPasswordEncoder.matches(command.getRePw(), password)) {
			dto.setTeachPw(password);
		}else {
			System.out.println("::::::비밀번호 틀림 메시지+유효성검사 할 것::::::");
		}
		dto.setTeachIp(request.getRemoteAddr());
		
		applyRepository.applyPut2(dto);
	}
}
