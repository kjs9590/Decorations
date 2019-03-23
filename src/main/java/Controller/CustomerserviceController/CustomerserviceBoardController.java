package Controller.CustomerserviceController;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Model.AnswerDTO;
import Model.CustomerserviceDTO;
import Service.CustomerServiceAnswerSerivce;
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
		public String noticedetail(Model model,@RequestParam("fno") int num) {
			CustomerserviceDTO detail = customerserviceboardservice.detail(num);
			AnswerDTO answerinfo = customerserviceboardservice.answerinfo(num);
			model.addAttribute("answerinfo", answerinfo);
			model.addAttribute("detail", detail); 
			
			return "Notice/NoticeDetail";
		}
		
		//문의답변
		@RequestMapping(value="Customer/Detail", method = RequestMethod.POST)
		public String noticedetail(Model model,AnswerDTO answerdto,@RequestParam("fno") int num) {
			System.out.println("내용"+answerdto.getAnswerContent());
			
			//답글쓰기
			Integer answer = customerserviceboardservice.answer(answerdto);
			//답글 빼오기
			/*AnswerDTO answerinfo = customerserviceboardservice.answerinfo(num);*/
			
			model.addAttribute("answer", answer);
			/*model.addAttribute("answerinfo", answerinfo);*/
			return "redirect:/Customer/Main";
		}
	
		
	}


