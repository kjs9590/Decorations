package Repository;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Model.MemberDTO;

@Repository
public class MemberSessionRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "CommentMapper";

	
	public Integer insertMember(MemberDTO mDto) {
		
		return sqlSession.insert("CommentMapper.insertMember", mDto);
	}
	
}
