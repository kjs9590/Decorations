package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Model.MemberDTO;
import Repository.MemberInfoRepository;
@Service
public class MemberInfoService {
	@Autowired
	private MemberInfoRepository memberInfoRepository;
	
	public MemberDTO info(String id) {
		// TODO Auto-generated method stub
		return memberInfoRepository.info(id);
		
	}

}
