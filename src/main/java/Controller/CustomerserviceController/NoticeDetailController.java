package Controller.CustomerserviceController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoticeDetailController {
	// 공지사항 상세정보
	@RequestMapping(value="Customer/NoticeDetail", method = RequestMethod.GET)
	public String form() {
		
		return "Notice/NoticeDetail";
	}
}