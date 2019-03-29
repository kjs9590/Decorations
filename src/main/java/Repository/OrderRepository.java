package Repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.OrderDTO;

public class OrderRepository {
	
	@Autowired
	private SqlSession sqlSession;
	
	//
	public int orderNum() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("OrderMapper.orderNum");
	}

	public int orderInsert(OrderDTO odto) {
		// TODO Auto-generated method stub
		return sqlSession.insert("OrderMapper.orderInsert" ,odto);
	}

}
