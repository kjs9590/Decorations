package Controller.RestaurantController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Commend.RestaurantRegisterCommand;
import Service.RestaurantService;

@Controller
public class RestaurantRegisterController {

	@Autowired
	RestaurantService restaurantService;
	
	//메인페이지
	@RequestMapping(value="/RestaurantMain" ,method=RequestMethod.GET)
	public String main(Model model) {
		/*
		restaurantService.restaurantList(model);*/
		return "Restaurant/RestaurantMain";
	}

	
	
	@RequestMapping(value="/RestaurantRegister", method=RequestMethod.GET)
	public String regist() {
		
		return "Restaurant/RestaurantRegister";
	}
	
	@RequestMapping(value="/RestaurantRegister", method=RequestMethod.POST)
	public String submit(RestaurantRegisterCommand reCommand ,HttpServletRequest request, Model model) {
		
		restaurantService.restaurantRegist(reCommand, request, model);
		return "redirect:RestaurantMain";
	}
	
}
