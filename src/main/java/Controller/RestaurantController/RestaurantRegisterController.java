package Controller.RestaurantController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Commend.FoodCommand;
import Commend.RestaurantRegisterCommand;
import Service.RestaurantService;

@Controller
public class RestaurantRegisterController {

	@Autowired
	RestaurantService restaurantService;
	
	//메인페이지
	@RequestMapping(value="/RestaurantMain" ,method=RequestMethod.GET)
	public String main(Model model) {
		
		restaurantService.restaurantList(model);
		return "Restaurant/RestaurantMain";
	}

	
	//등록
	@RequestMapping(value="/RestaurantRegister", method=RequestMethod.GET)
	public String regist() {
		
		return "Restaurant/RestaurantRegister";
	}
	
	@RequestMapping(value="/RestaurantRegister", method=RequestMethod.POST)
	public String submit(RestaurantRegisterCommand reCommand ,HttpServletRequest request, Model model) {
		
		restaurantService.restaurantRegist(reCommand, request, model);
		return "Restaurant/FoodRegister";
	}
	
	//레스토랑 디테일
	
	@RequestMapping(value="/RestaurantDetail", method=RequestMethod.GET)
	public String detailrest(Model model, @RequestParam(value="num") Long num) {
		
		restaurantService.restaurantDetail(model, num);
		return "Restaurant/RestaurantDetail";
	}
	
	
	//레스토랑 종류별  RestaurantList?kind=디저트카페
	
	@RequestMapping(value="/RestaurantList" ,method=RequestMethod.GET)
	public String restaurantList(Model model,@RequestParam(value="kind") String kind
			) {
		restaurantService.restaurantList(model,kind);
		
		return "Restaurant/RestaurantList";
	}
	
	
	
	
	
/*	
	
	//음식(세트) 등록
	@RequestMapping(value="FoodRegister", method=RequestMethod.POST)
	public String insert(FoodCommand fCommand, HttpServletRequest request, Model model ) {
		
		restaurantService.foodRegist(fCommand, request, model);	
		return "redirect:RestaurantMain";
	}
	RoomList?num=10
	*/
	
	
}
