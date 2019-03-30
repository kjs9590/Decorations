package Controller.OrderController;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Commend.OrderCommand;
import Service.OrderService;

@Controller
public class OrderController {
	
	
	@Autowired
	OrderService orderService;
	
	//옵션추가............주문페이지로..
	
	@RequestMapping(value="/OrderMain", method=RequestMethod.POST)
	public String order(Model model, OrderCommand command,HttpSession session) {
		if(command.getOptionCheckin() ==null ) {
			System.out.println("안돼");
			command.setOptionCheckin("--");
		}
		if(command.getOptionCheckout() ==null ) {
			command.setOptionCheckout("--");;
		}
				orderService.addOption(model,command,session);
		
		return "Order/Order";
	}
	
}
