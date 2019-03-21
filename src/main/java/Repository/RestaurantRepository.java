package Repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.RestaurantDTO;

public class RestaurantRepository {
	@Autowired
	private SqlSession sqlSession;
	
	
	
	public Integer insertRestaurant(RestaurantDTO redto) {

		return sqlSession.insert("RestaurantMapper.insertRestaurant", redto);
	}

}
