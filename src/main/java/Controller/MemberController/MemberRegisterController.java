package Controller.MemberController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Commend.MemberRegisterCommend;
import Service.MemberService;


//회원 등록 컨트롤러

@Controller
@RequestMapping("/Member/MemberRegister")
public class MemberRegisterController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping(method=RequestMethod.GET)
	public String form() {
		
		return "Member/MemberRegister";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String submit(Model model,MemberRegisterCommend mCommend) { 

		memberService.Memberinsert(mCommend,model);
		return "survey/submitted";
	}
}
