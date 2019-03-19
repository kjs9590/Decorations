package Controller.MainController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@RequestMapping(value="/Main",method=RequestMethod.GET)
	public String main() {
		return "Main/Main";
	}
	
	@RequestMapping(value="/Reg_Link",method=RequestMethod.GET)
	public String link() {
		return "Main/Reg_Link";
	}
}
