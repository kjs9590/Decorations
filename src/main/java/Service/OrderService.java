package Service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Commend.OrderCommand;
import Model.MemberDTO;
import Model.OptionDTO;
import Model.OrderDTO;
import Model.PaymentDTO;
import Repository.OrderRepository;

public class OrderService {
     private int orderNum;
     private String cardNum;
     private String []optionNm;
     private int optionNum;
	
	@Autowired
	private OrderRepository orderRepository;
	
	
	public Integer addOption(Model model, OrderCommand command,HttpSession session) {
		// TODO Auto-generated method stub
		Integer result = 0;
		 orderNum=orderRepository.orderNum();
		 optionNm=command.getOption().split("\\+");
		 optionNum=Integer.parseInt(optionNm[0]);
		 cardNum=command.getCardNum()[0]+"-"+command.getCardNum()[1]+"-"+command.getCardNum()[2];
		MemberDTO mDto=(MemberDTO) session.getAttribute("memberDTO");

		OrderDTO odto = new OrderDTO(command.getProductNum(), command.getCategoryNum(),
							command.getOptionTime(), command.getOptionCheckin(), command.getOptionCheckout(),command.getOptionSeat(),
							command.getName(), command.getTell(),mDto.getMemberId(),command.getOptionDate());
		odto.setOrderNum(orderNum);
		PaymentDTO pdto= new PaymentDTO(orderNum,cardNum,command.getOptionPrice(),command.getCardTerm(),command.getCardName());
		OptionDTO opto=new OptionDTO();
		opto.setOrderNum(orderNum);
		opto.setOptionNum(optionNum);
		System.out.println(odto.getProductNum()+"이거안돼");
		result = orderRepository.orderInsert(odto);
		orderRepository.orderListInsert(odto);
		orderRepository.option(opto);
		orderRepository.payMentInsert(pdto);
		
		
		return result;
	}


	public Integer orderDetail(HttpSession session) {
		Integer result = 0;

		MemberDTO member = (MemberDTO)session.getAttribute("memberDTO");
		
		result = orderRepository.searchOrder(member);
		System.out.println(result+"나와와와와와와와와ㅗ아ㅗ아ㅗ와와와");
		
		return result;
	}

}
