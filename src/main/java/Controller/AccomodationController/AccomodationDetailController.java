package Controller.AccomodationController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Commend.AccomodationRoomRegisterCommend;
import Service.AccomodationDetailService;
import Service.AccomodationService;


@Controller
public class AccomodationDetailController {
	@Autowired
	private AccomodationDetailService accomodationDetailServiceService;
	
	@RequestMapping(value="/Accomodation/RoomForm",method=RequestMethod.GET)
	public String roomForm(Model model,@RequestParam(value="num") int num) {
		
		model.addAttribute("num", num);
		return "Accomodation/RoomForm";
	}
	@RequestMapping(value="/Accomodation/RoomRegister",method=RequestMethod.POST)
	public String roomRegister(Model model,AccomodationRoomRegisterCommend aRcommend,HttpServletRequest request ) {
		
		String path=accomodationDetailServiceService.accomodationRegister(model,aRcommend,request);
		return path;
	}
	
	@RequestMapping(value="/Accomodation/RoomList" ,method=RequestMethod.GET)
	public String roomList(Model model,@RequestParam(value="num") Long num ) {
		
		accomodationDetailServiceService.accomodationRoom(model,num);
		
		return "Accomodation/AccomodationDetail";
	}
}
