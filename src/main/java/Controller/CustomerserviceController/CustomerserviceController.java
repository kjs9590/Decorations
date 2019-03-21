package Controller.CustomerserviceController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Service.CustomerserviceService;

@Controller
public class CustomerserviceController {
	//고객센터 메인 컨트롤러
	
	@Autowired
	private CustomerserviceService customerserviceservice;
	public CustomerserviceController(CustomerserviceService customerserviceservice) {
		this.customerserviceservice = customerserviceservice;
	}


	@RequestMapping(value="Customer/Main", method = RequestMethod.GET)
	public String form() {
		
		return "Customerservice/Customerservice";
	}
}
