package repository.hr;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import model.dto.hr.EmployeeDTO;

@Repository
public class EmpModifyRepository {
	private String namespace = "applyMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public Integer reposit(EmployeeDTO dto) {
		String statement = namespace + ".empModify";
		return sqlSession.update(statement,dto);
	}
}
