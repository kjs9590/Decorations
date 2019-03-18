package Service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Commend.LoginCommand;
import Model.MemberDTO;
import Repository.LoginRepository;

public class LoginService {
	
	@Autowired
	private LoginRepository loginRepository;
	

	
	

	public void chkLogin(LoginCommand loginCommand, Model model,HttpSession session) {

		Integer result = 0;
		MemberDTO logindto = loginRepository.login(loginCommand.getId());
		if(logindto == null	) {
			System.out.println("아이디가 존재하지 않습니다.");
			result=0;
		} 
		else if(!logindto.getMemberPw().equals(loginCommand.getPassword())) {
			System.out.println(logindto.getMemberPw()+"비밀번호가 일치하지 않습니다."+loginCommand.getPassword());
			result=1;
			
		}
		else {
			result=2;	
			MemberDTO memberDTO = new MemberDTO();
			memberDTO.setMemberId(loginCommand.getId());
			memberDTO.setMemberPw(loginCommand.getPassword());
			System.out.println("loginCommand"+loginCommand.getId());
			
			session.setAttribute("memberDTO", memberDTO);
		
		}
		model.addAttribute("result",result );
		
		System.out.println("여기까지오긴하니"+result);
		
	}




//ㅠㅠㅠ담당자로그인해야한다,,,,,흑흐그흑흑흐가헉ㅁ휴ㅣ언 리ㅓ몽ㄴ리;ㅏ 
	public void c_chkLogin(LoginCommand loginCommand, Model model, HttpSession session) {
		// TODO Auto-generated method stub
		Integer result = 0;
		MemberDTO logindto = loginRepository.login(loginCommand.getId());
		if(logindto == null	) {
			System.out.println("아이디가 존재하지 않습니다.");
			result=0;
		} 
		else if(!logindto.getMemberPw().equals(loginCommand.getPassword())) {
			System.out.println(logindto.getMemberPw()+"비밀번호가 일치하지 않습니다."+loginCommand.getPassword());
			result=1;
			
		}
		else {
			result=2;	
			MemberDTO memberDTO = new MemberDTO();
			memberDTO.setMemberId(loginCommand.getId());
			memberDTO.setMemberPw(loginCommand.getPassword());
			System.out.println("loginCommand"+loginCommand.getId());
			
			session.setAttribute("memberDTO", memberDTO);
		
		}
		model.addAttribute("result",result );
		
		System.out.println("여기까지오긴하니"+result);
	}


}
