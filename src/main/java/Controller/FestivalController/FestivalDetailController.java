package Controller.FestivalController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Commend.OptionCommand;
import Model.FestivalDTO;
import Model.OptionDTO;
import Service.FestivalDetailService;


@Controller
public class FestivalDetailController {
	// 축제 디테일 컨트롤러
		@Autowired
		private FestivalDetailService festivalDetailService;
	
		public FestivalDetailController(FestivalDetailService festivalDetailService) {
			this.festivalDetailService = festivalDetailService;
		}

		@RequestMapping(value="/FestivalDetail", method = RequestMethod.GET )
		public String form(Model model,@RequestParam("fno") int num) {
			FestivalDTO Festivaldetail = festivalDetailService.detail(num);
			model.addAttribute("Festivaldetail", Festivaldetail);
			return "Festival/FestivalDetail";
		}
		
		//예약옵션 가기
		@RequestMapping(value="/FestivalOrder", method = RequestMethod.GET )
		public String form(Model model,@ModelAttribute OptionCommand command ) {
			String kind="축제";
			List<OptionDTO> option = festivalDetailService.option(kind);
			model.addAttribute("option", option);
			model.addAttribute("command",command);
			return "Festival/FestivalOption";
		}
		
}
