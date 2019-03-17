package Controller.FestivalController;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Model.FestivalDTO;
import Service.FestivalListService;



@Controller
@RequestMapping("/Festival/Main")
public class FestivalMainController {
// 축제 메인 컨트롤러
	@Autowired
	private FestivalListService festivallistservice;
	public FestivalMainController(FestivalListService festivallistservice) {
	this.festivallistservice = festivallistservice;
}





	@RequestMapping(method=RequestMethod.GET)
	public String form(Model model,FestivalDTO dto) {
		List<FestivalDTO> Festivallist = festivallistservice.festivallist();
	model.addAttribute("dto", dto);
		return "Festival/FestivalMain";
	}
	
}
