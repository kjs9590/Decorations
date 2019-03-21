package Controller.CustomerserviceController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Model.CustomerserviceDTO;
import Service.CustomerServiceBoardService;

@Controller
public class CustomerserviceBoardController {
		// 공지사항,일대일 문의
		
		@Autowired
		private CustomerServiceBoardService customerserviceboardservice;
		public CustomerserviceBoardController(CustomerServiceBoardService customerserviceboardservice) {
			this.customerserviceboardservice = customerserviceboardservice;
		}
		
		//공지사항 글쓰기
		@RequestMapping(value="Customer/NoticeWrite", method = RequestMethod.GET)
		public String notice(CustomerserviceDTO dto, Model model) {
			Integer result = customerserviceboardservice.insert(dto);
			model.addAttribute("result", result);
			return "Notice/NoticeWrite";

		}
		
		//공지사항 상세정보
		@RequestMapping(value="Customer/NoticeDetail", method = RequestMethod.GET)
		public String noticedetail() {
			
			return "Notice/NoticeDetail";
		}
		
		//일대일 문의 글쓰기
		@RequestMapping(value="Customer/QnAWrite", method = RequestMethod.GET)
		public String qna() {
			
			return "QnA/QnAWrite";
		}
		
		//일대일 문의 상세정보
		@RequestMapping(value="Customer/QnADetail", method = RequestMethod.GET)
		public String qnadetail() {
			
			return "QnA/QnADetail";
		}
		
		
		
		
		
		
	}


