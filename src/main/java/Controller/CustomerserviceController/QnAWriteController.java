package Controller.CustomerserviceController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class QnAWriteController {
	// 일대일 글쓰기
	@RequestMapping(value="Customer/QnAWrite", method = RequestMethod.GET)
	public String form() {
		
		return "QnA/QnAWrite";
	}
}
