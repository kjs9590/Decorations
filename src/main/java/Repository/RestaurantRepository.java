package Repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.RestaurantDTO;

public class RestaurantRepository {
	@Autowired
	private SqlSession sqlSession;
	
	
	
	public Integer insertRestaurant(RestaurantDTO redto) {

		return sqlSession.insert("RestaurantMapper.insertRestaurant", redto);
	}



	public List<RestaurantDTO> restaurantList() {
		
		return sqlSession.selectList("RestaurantMapper.listRestaurant");
	}

}
