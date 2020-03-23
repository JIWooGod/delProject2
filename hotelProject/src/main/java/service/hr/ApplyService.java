package service.hr;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.web.multipart.MultipartFile;

import command.hr.ApplyCommand;
import model.dto.hr.EmployeeDTO;
import repository.hr.ApplyRepository;

@Service
public class ApplyService {
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	@Autowired
	private ApplyRepository applyRepository;
	
	public void action(HttpServletRequest request, ApplyCommand applyCommand,
			Errors errors) {
		String password = bcryptPasswordEncoder.encode(applyCommand.getPw());
		request.getRemoteAddr();
		
		EmployeeDTO dto = new EmployeeDTO();
		dto.setEmpId(applyCommand.getId());
		if(bcryptPasswordEncoder.matches(applyCommand.getRePw(), password)) {
			dto.setEmpPw(password);
		}else {
			System.out.println("::::::비밀번호 틀림 메시지+유효성검사 할 것::::::");
		}
		dto.setEmpName(applyCommand.getName());
		dto.setEmpTel(applyCommand.getTel());
		dto.setEmpEmail(applyCommand.getEmail());
		dto.setEmpAddr(applyCommand.getAddr());
		dto.setEmpCarr(applyCommand.getCareer());
	
 		String storeTotal = "";
 		String path = request.getServletContext().getRealPath("/");
 		
 		for(MultipartFile mf : applyCommand.getCerti()) {
 			String origin = mf.getOriginalFilename();
 			String extension = origin.substring(origin.lastIndexOf("."));
 			String store = UUID.randomUUID().toString().replace("-", "") + extension;
 			String size = Long.toString(mf.getSize());
 			
 			storeTotal += store + "-";

 			File file = new File(path + store);
 			try {
 				mf.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
 		}
 		dto.setEmpCerti(storeTotal);
 		
 		applyRepository.applyPut(dto);
	}
}