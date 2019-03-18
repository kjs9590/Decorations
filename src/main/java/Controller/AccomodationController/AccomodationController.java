package Controller.AccomodationController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AccomodationController {

	@RequestMapping(value="/Accomodation/AccomodationMain" ,method=RequestMethod.GET)
	public String form() {
		
		return "Accomodation/AccomodationMain";
	}
}
