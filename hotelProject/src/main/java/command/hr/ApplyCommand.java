package command.hr;

import org.springframework.web.multipart.MultipartFile;

public class ApplyCommand {
	String id;
	String pw;
	String rePw;
	String name;
	String tel;
	String email;
	String addr;
	String certi;
	String career;
	String violate;
	Long deptNo;
	
	public Long getDeptNo() {
		return deptNo;
	}
	public void setDeptNo(Long deptNo) {
		this.deptNo = deptNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getRePw() {
		return rePw;
	}
	public void setRePw(String rePw) {
		this.rePw = rePw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getViolate() {
		return violate;
	}
	public void setViolate(String violate) {
		this.violate = violate;
	}
	public String getCerti() {
		return certi;
	}
	public void setCerti(String certi) {
		this.certi = certi;
	}
}
