package Controller.RestaurantController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Service.RestaurantService;

@Controller
public class RestaurantRegisterController {

	@Autowired
	RestaurantService restaurantService;
	
	@RequestMapping(value="/RestaurantRegister", method=RequestMethod.GET)
	public String regist() {
		
		return "Restaurant/RestaurantRegister";
	}
	
	@RequestMapping(value="/RestaurantRegister", method=RequestMethod.POST)
	public String submit() {
		
		
		return "redirect:RestaurantMain";
	}
	
}
