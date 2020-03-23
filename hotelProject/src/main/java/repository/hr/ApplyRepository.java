package repository.hr;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dto.hr.EmployeeDTO;

@Repository
public class ApplyRepository {
	private String namespace = "applyMapper";
	private String statement = null;
	@Autowired
	private SqlSession sqlSession;
	
	public void applyPut(EmployeeDTO dto) {
		statement = namespace + ".applyInsert";
		sqlSession.insert(statement,dto);
	}
}