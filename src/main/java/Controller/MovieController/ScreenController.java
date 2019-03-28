package Controller.MovieController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Commend.MovieScreenCommand;
import Commend.ScreenCommand;
import Service.ScreenRegisterService;

@Controller
public class ScreenController {
    @Autowired
	private ScreenRegisterService screenRegisterService;
	
	
	@RequestMapping(value="/ScreenRagister" ,method=RequestMethod.POST)
	public String theaterList(Model model,ScreenCommand sCommand,HttpServletRequest request) {
	String path=screenRegisterService.screenInsert(sCommand,request);
		
		return path;
	}
	
	@RequestMapping(value="/MovieRegisterIntoScreen" ,method=RequestMethod.GET)
	public String intoScreen(Model model ,@RequestParam(value="no1") Long no1,@RequestParam(value="no2") Long no2) {
		screenRegisterService.intoScreen(model,no1,no2);
		
		return "Movie/MoviceScreenInsert";
	}
	@RequestMapping(value="/MovieScreen" ,method=RequestMethod.POST)
	public String movieScreen(Model model,MovieScreenCommand mScommand) {
		String path=screenRegisterService.movieScreenRegister(mScommand);
		
		return  path;
	}
	@RequestMapping(value="/MovieSeat" ,method=RequestMethod.GET)
	public String movieSeat(Model model,@RequestParam(value="num") Long no,@RequestParam(value="num1") Long no1) {
	
		
		return "Movie/MovieSeat";
	}
	
	
	
	
}
