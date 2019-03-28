package Repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.OptionDTO;

public class OptionRepository {

	@Autowired
	private SqlSession sqlSession;
	
	public Integer optionInsert(OptionDTO odto) {
		// TODO Auto-generated method stub
		return sqlSession.insert("OptionMapper.optionInsert",odto);
	}

	public List<OptionDTO> optionList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("OptionMapper.optionList");
	}

}
