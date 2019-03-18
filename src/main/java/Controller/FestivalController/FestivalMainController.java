package Controller.FestivalController;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Model.FestivalDTO;
import Service.FestivalListService;
import other.AutoPaging;



@Controller
public class FestivalMainController {
// 축제 메인 컨트롤러
	@Autowired
	private FestivalListService festivallistservice;
	public FestivalMainController(FestivalListService festivallistservice) {
	this.festivallistservice = festivallistservice;
}




	@RequestMapping(value="/Festival/Main", method = RequestMethod.GET )
	public String form(Model model,FestivalDTO dto) {
		AutoPaging paging = new AutoPaging(3,1,1);
		Integer count = 0;
		
		paging.setListCount(festivallistservice.listcount(count));

		List<FestivalDTO> Festivallist = festivallistservice.festivallist(dto);
		
		List<FestivalDTO> Festivalpaging = festivallistservice.paging(paging);
		
		model.addAttribute("Festivallist", Festivallist);
		model.addAttribute("paging", paging);
		model.addAttribute("Festivalpaging",Festivalpaging);
	
		return "Festival/FestivalMain";
	}
	
}
