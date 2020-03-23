package repository.hr;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dto.hr.EmployeeDTO;
import model.dto.hr.TeacherDTO;

@Repository
public class ApplyRepository {
	private String namespace = "applyMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public void applyPut(EmployeeDTO dto) {
		String statement = namespace + ".applyInsert";
		sqlSession.insert(statement,dto);
		System.out.println("직원 등록 완료");
	}

	public void applyPut2(TeacherDTO dto) {
		String statement = namespace + ".applyInsert";
		sqlSession.insert(statement,dto);
		System.out.println("강사 등록 완료");
	}
}