package Controller.FestivalController;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Commend.PagingCommand;
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
	public String form(Model model,FestivalDTO dto,@ModelAttribute PagingCommand command) {
		 if(command.getPage()==0) {
             command.setPage(1);
           }
		AutoPaging paging = new AutoPaging(command.getPage(),2,3);
		paging.setListCount(festivallistservice.listCount());
		System.out.println(command.getPage());
	/*	List<FestivalDTO> Festivallist = festivallistservice.festivallist(dto);*/
		List<FestivalDTO> listpaging = festivallistservice.listpaging(paging);
		model.addAttribute("Festivallist", listpaging);
		model.addAttribute("paging", paging);
		return "Festival/FestivalMain";
	}
	
}
