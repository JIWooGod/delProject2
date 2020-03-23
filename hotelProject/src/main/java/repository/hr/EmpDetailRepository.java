package repository.hr;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.dto.hr.EmployeeDTO;

public class EmpDetailRepository {
	private String namespace = "applyMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public EmployeeDTO reposit(EmployeeDTO dto) {
		String statement = namespace + ".detailView";
		return sqlSession.selectOne(statement, dto);
	}
}