package Controller.MovieController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Commend.ScreenCommand;
import Service.ScreenRegisterService;

@Controller
public class ScreenController {
    @Autowired
	private ScreenRegisterService screenRegisterService;
	
	
	@RequestMapping(value="/ScreenRagister" ,method=RequestMethod.POST)
	public String theaterList(Model model,ScreenCommand sCommand,HttpServletRequest request) {
		screenRegisterService.screenInsert(sCommand,request);
		return "redirect:TheaterMain";
	}
}
