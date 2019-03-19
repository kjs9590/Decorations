package Controller.AccomodationController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Commend.AccomodationRegisterCommend;
import Commend.AccomodationRoomRegisterCommend;
import Service.AccomodationService;

@Controller
public class AccomodationController {
    
	@Autowired
	private AccomodationService accomodationService;
	
	//숙박 메인 페이지
	@RequestMapping(value="/Accomodation/AccomodationMain" ,method=RequestMethod.GET)
	public String main(Model model) {
		
		accomodationService.AccomodationList(model);
		return "Accomodation/AccomodationMain";
	}
	
	
	//숙박 등록 메소드
	@RequestMapping(value="/Accomodation/AccomodationForm" ,method=RequestMethod.GET)
	public String form() {
		
		return "Accomodation/AccomodationForm";
	}
	
	@RequestMapping(value="/Accomodation/AccomodationRegister" ,method=RequestMethod.POST)
	public String submit( AccomodationRegisterCommend aCommend,HttpServletRequest request) {
		
		accomodationService.Accomodationinsert(aCommend,request);
		return "redirect:AccomodationMain";
	}
	
	@RequestMapping(value="/Accomodation/AccomodationListEach" ,method=RequestMethod.GET)
	public String detail(Model model,@RequestParam(value="kind") String kind) {
		
		accomodationService.AccomodationEachList(model,kind);
		
		return "Accomodation/AccomodationList";
	}
	
	@RequestMapping(value="/Accomodation/RoomForm",method=RequestMethod.GET)
	public String roomForm(Model model,@RequestParam(value="num") int num) {
		
		model.addAttribute("num", num);
		return "Accomodation/RoomForm";
	}
	@RequestMapping(value="/Accomodation/RoomRegister",method=RequestMethod.POST)
	public String roomRegister(Model model,AccomodationRoomRegisterCommend aRcommend,HttpServletRequest request ) {
		
		String path=accomodationService.AccomodationRegister(model,aRcommend,request);
		return path;
	}
	
	@RequestMapping(value="/Accomodation/RoomList" ,method=RequestMethod.GET)
	public String roomList(Model model,@RequestParam(value="num") int num ) {
		
		accomodationService.AccomodationRoom(model,num);
		
		return "Accomodation/AccomodationDetail";
	}
	
}
