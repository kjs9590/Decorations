package Repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.RestaurantDTO;
import Model.TheaterRegisterDTO;

public class TheaterRegisterRepository {
	@Autowired
	private SqlSession sqlSession;
	
	
	
	public Integer insertTheater(TheaterRegisterDTO tRdto) {
        return sqlSession.insert("TheaterMapper.insertTheater", tRdto);
	}
}
