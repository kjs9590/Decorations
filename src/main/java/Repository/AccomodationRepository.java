package Repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import Model.AccomodationDTO;
import Model.AccomodationRegisterDTO;
import Model.MemberDTO;

public class AccomodationRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "AccomodationMapper";
   
	//숙박을 등록하기위한 
	public Integer insertAccomodation(AccomodationDTO aDto) {
		return sqlSession.insert("AccomodationMapper.insertAccomodation", aDto);
	}
    //등록된 숙박을 리스트로 출력하기위한
	public List<AccomodationDTO> listAccomodation() {
		return sqlSession.selectList("AccomodationMapper.listAccomodation");
    }
    //종류별로 등록된 숙박수를 메인에서 확인하기위한
	public List<AccomodationDTO> listAccomodationCount() {
		return sqlSession.selectList("AccomodationMapper.listAccomodationCount");

	}
	//종류별로 숙박 리스트를 출력하기위한
	public List<AccomodationDTO> listEachAccomodation(String kind) {
		return sqlSession.selectList("AccomodationMapper.listEachAccomodationCount",kind);

	}
	//종류별로 등록된 숙박수를 디테일 페이지에서 확인하기위한
	public AccomodationDTO accomodationCount(String kind) {
		return sqlSession.selectOne("AccomodationMapper.AccomodationCount",kind);

	}
    //각각의 숙소의 평균 객실 가격을 가져오기위한
	public int accomodationAvg(Long nume) {
		return sqlSession.selectOne("AccomodationMapper.AccomodationAvg",nume);

	}




}