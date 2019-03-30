package Service;

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
		
		
		orderRepository.payMentInsert(pdto);
		orderRepository.orderListInsert(odto);
		orderRepository.option(opto);
		result = orderRepository.orderInsert(odto);
		
		
		return result;
	}

}
