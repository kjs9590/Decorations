package Repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.FestivalDTO;
@Repository
public class FestivalRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "FestivalMapper";
	
	
	public List<FestivalDTO> festivallist() {
		
		return sqlSession.selectList("FestivalMapper.selectlist");
	}

}
