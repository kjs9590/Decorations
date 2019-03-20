package Controller.CustomerserviceController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoticeWriteController {
	//공지사항 글쓰기
	
	@RequestMapping(value="Customer/NoticeWrite", method = RequestMethod.GET)
	public String form() {
		
		return "Notice/NoticeWrite";
	}
}
