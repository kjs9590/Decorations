package Controller.CustomerserviceController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QnADetailController {
	//일대일 게시글 상세정보
	
	@RequestMapping(value="Customer/QnADetail", method = RequestMethod.GET)
	public String form() {
		
		return "QnA/QnADetail";
	}
}
