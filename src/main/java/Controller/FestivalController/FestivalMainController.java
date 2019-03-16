package Controller.FestivalController;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/Festival/Main")
public class FestivalMainController {
// 축제 메인 컨트롤러
	
	@RequestMapping(method=RequestMethod.GET)
	public String form(Model model) {
	
		return "Festival/FestivalMain";
	}
	
}
