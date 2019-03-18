package Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import Model.FestivalDTO;
import other.AutoPaging;
@Repository
public class FestivalRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "FestivalMapper";
	
	
	public List<FestivalDTO> festivallist(FestivalDTO dto) {
		return sqlSession.selectList("FestivalMapper.selectlist",dto);
		
	}


	public FestivalDTO detail(@RequestParam("fno") int num) {
		return sqlSession.selectOne("FestivalMapper.detail",num);
	}


	public List<FestivalDTO> paging(AutoPaging paging) {
		// TODO Auto-generated method stub
		int minNum = ((paging.getPage()-1)*paging.getLimit())+1;
		int maxNum = minNum+paging.getLimit()-1;
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("minNum", minNum);
		params.put("maxNum", maxNum);
		return sqlSession.selectOne("FestivalMapper.paging",params);
	}


	public Integer listcount(int count) {
		return sqlSession.selectOne("FestivalMapper.listcount",count);
	}



}
