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
public class FestivalDetailController {
	// 축제 디테일 컨트롤러
		@Autowired
		private FestivalListService festivallistservice;
		public FestivalDetailController(FestivalListService festivallistservice) {
		this.festivallistservice = festivallistservice;
	}
		@RequestMapping(value="/Festival/Detail", method = RequestMethod.GET )
		public String form(Model model,FestivalDTO dto) {
			List<FestivalDTO> Festivallist = festivallistservice.festivallist(dto);
			model.addAttribute("Festivallist", Festivallist);
			System.out.println("축제명" + dto.getFESTIVALNAME());
			return "Festival/FestivalDetail";
		}
}
