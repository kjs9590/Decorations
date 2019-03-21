package Repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.CustomerserviceDTO;

public class CustomerServiceRepository {
	@Autowired
	private SqlSession sqlSession;
	
	private final String namespace = "CustomerMapper";

	public Integer insert(CustomerserviceDTO dto) {
		// TODO Auto-generated method stub
		return sqlSession.insert("CustomerMapper.cinsert", dto);
	}

}
