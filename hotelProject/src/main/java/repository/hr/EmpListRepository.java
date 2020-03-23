package repository.hr;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dto.hr.EmployeeDTO;

@Repository
public class EmpListRepository {
	private String namespace = "applyMapper";
	@Autowired
	private SqlSession sqlSession;
	
	public List<EmployeeDTO> listView() {
		String statement = namespace + ".selectEmpList";
		return sqlSession.selectList(statement);
	}

}
