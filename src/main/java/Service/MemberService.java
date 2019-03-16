package Service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Commend.MemberRegisterCommend;
import Model.MemberDTO;
import Repository.MemberSessionRepository;



public class MemberService {
//	String memberId, String memberPw, String memberTell, String memberGender, String memberMail,
//	String memberAdd, String memberArea, Date memberDate, Date passChangeDate, Date memberLastDate,
//	String mailConfrim) {
	
//	private String id;
//	private String passward;
//	private String email;
//	private String gender;
//	private int [] tell;
//	private String addredd;
//	private String detailAddress;
//	private String checkbox;
	
	@Autowired
	private MemberSessionRepository memberSessionRepository;	
	
	//MemberInsert 메소드
	public Integer Memberinsert(MemberRegisterCommend mCommend,Model model) {
		Integer result = 0;
        String tell;
        String area=mCommend.getAddress().substring(0, 2);
        
        tell=mCommend.getTell()[0]+mCommend.getTell()[1]+mCommend.getTell()[2];
		MemberDTO mDto = new MemberDTO(mCommend.getId(),mCommend.getPassward(),tell,mCommend.getGender(),
				                       mCommend.getEmail(),mCommend.getAddress(),area,mCommend.getCheckbox(),mCommend.getName());
		
		result =memberSessionRepository.insertMember(mDto);

		model.addAttribute("mDto",mDto);
		return result;
	}
}
