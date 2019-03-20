package Controller.CustomerserviceController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CustomerserviceController {
	//고객센터 메인 컨트롤러
	
	@RequestMapping(value="Customer/Main", method = RequestMethod.GET)
	public String form() {
		
		return "Customerservice/Customerservice";
	}
}
