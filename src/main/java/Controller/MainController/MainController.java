package Controller.MainController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Service.MainService;

@Controller
public class MainController {
	
	
	@Autowired
	MainService mainService;
	//메인
	@RequestMapping(value="/Main",method=RequestMethod.GET)
	public String main(Model model) {
		
		mainService.restaurantList(model);
		mainService.accomodationList(model);
		return "Main/Main";
	}
	
	
	//담당자가 상품등록할 떄 메인
	@RequestMapping(value="/Reg_Link",method=RequestMethod.GET)
	public String link() {
		return "Main/Reg_Link";
	}
	
	
	
	
	
}
