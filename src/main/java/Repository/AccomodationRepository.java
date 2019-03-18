package Repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.AccomodationDTO;
import Model.MemberDTO;

public class AccomodationRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "AccomodationMapper";

	
	public Integer insertAccomodation(AccomodationDTO aDto) {
		
		return sqlSession.insert("AccomodationMapper.insertAccomodation", aDto);
	}
public List<AccomodationDTO> listAccomodation() {
		
		
	return sqlSession.selectList("AccomodationMapper.listAccomodation");
	
}
public List<AccomodationDTO> listAccomodationCount() {
	
	
	return sqlSession.selectList("AccomodationMapper.listAccomodationCount");
	
}
}