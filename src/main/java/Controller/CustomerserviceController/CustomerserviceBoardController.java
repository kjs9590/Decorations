package Controller.CustomerserviceController;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
		
		//일대일 문의 글쓰기
		@RequestMapping(value="Customer/Write", method = RequestMethod.GET)
		public String notice() {
			return "Notice/NoticeWrite";

		}
		@RequestMapping(value="Customer/Write", method = RequestMethod.POST)
		public String notice(CustomerserviceDTO dto) {
			Integer result = customerserviceboardservice.insert(dto);
			return "redirect:/Customer/Main";

		}
		
		//일대일 문의 상세정보
		@RequestMapping(value="Customer/Detail", method = RequestMethod.GET)
		public String noticedetail(Model model,@RequestParam("fno") int num,HttpSession session) {
			CustomerserviceDTO detail = customerserviceboardservice.detail(num);
			System.out.println("아이디"+detail.getMemberId());
			
		
			
			
			
	/*		if(detail.getMemberId() == )*/
			model.addAttribute("detail", detail);
			return "Notice/NoticeDetail";
		}
		
		/*//일대일 문의 글쓰기
		@RequestMapping(value="Customer/QnAWrite", method = RequestMethod.GET)
		public String qna() {
			
			return "QnA/QnAWrite";
		}
		
		//일대일 문의 상세정보
		@RequestMapping(value="Customer/QnADetail", method = RequestMethod.GET)
		public String qnadetail() {
			
			return "QnA/QnADetail";
		}
		*/
		
		
		
		
		
	}


