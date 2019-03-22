package Repository;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.FoodDTO;
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



	public RestaurantDTO restaurantDedail(Long num) {
		
		return sqlSession.selectOne("RestaurantMapper.detailRestaurant", num);
	}



	public List<RestaurantDTO> restaurantList(String kind) {
		
		return sqlSession.selectList("RestaurantMapper.listKindRestaurant", kind);
	}



	public List<RestaurantDTO> restaurantArea(String area, String kind) {
		HashMap<String, Object> map = new HashMap<String,Object>();
		map.put("area", area);
		map.put("kind", kind);
	
		return sqlSession.selectList("RestaurantMapper.restaurantArea", map);
	}



	public List<RestaurantDTO> newRestaurant(String kind) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("RestaurantMapper.newRestaurant", kind);
	}


//음식이 등록 될 때 부모테이블인 데이트 상품 넘버 값을 가져오기 위해
	public Long dateProductNum() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("RestaurantMapper.DateProductNum");
	}



	public int dateProduct(FoodDTO fdto) {
		return sqlSession.insert("RestaurantMapper.DateProduct",fdto);
		
	}



	public int foodInsert(FoodDTO fdto) {
		return sqlSession.insert("RestaurantMapper.foodInsert",fdto);
	}

}
