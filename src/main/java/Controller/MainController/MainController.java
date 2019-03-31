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
		
		mainService.restaurantList(model);		//레스토랑 리스트 부르는 거 
		mainService.accomodationList(model); 	// 숙박 리스트 부르는 거 
		mainService.movieList(model); 			//영화 리스트 부르기
	//	mainService.festivalList(model); 		//축제 리스트
		return "Main/Main";
	}
	
	
	//담당자가 상품등록할 떄 메인
	@RequestMapping(value="/Reg_Link",method=RequestMethod.GET)
	public String link() {
		return "Main/Reg_Link";
	}
	
	//일정표 누르면 나오는 화면
	@RequestMapping(value="/Schedule",method=RequestMethod.GET)
	public String sc() {
		return "Main/Schedule";
	}
	//일정표에서 선택하기 화면
	@RequestMapping(value="/ScheduleSelect",method=RequestMethod.GET)
	public String scselect() {
		return "Main/ScheduleSelect";
	}
	
	
	
	
}
