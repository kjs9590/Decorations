package Controller.MovieController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TheaterMainController {

	
	@RequestMapping(value="/TheaterMain" ,method=RequestMethod.GET)
	public String main() {
		return "Movie/MovieMain";
	}
	
}
