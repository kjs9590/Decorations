package Service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Commend.OrderCommand;
import Model.MemberDTO;
import Model.OrderDTO;
import Repository.OrderRepository;

public class OrderService {

	
	@Autowired
	private OrderRepository orderRepository;
	
	
	public Integer addOption(Model model, OrderCommand command,HttpSession session) {
		// TODO Auto-generated method stub
		MemberDTO mDto=(MemberDTO) session.getAttribute("memberDTO");
		Integer result = 0;
		OrderDTO odto = new OrderDTO(command.getProductNum(), command.getCategoryNum(),
							command.getOptionTime(), command.getOptionCheckin(), command.getOptionCheckout(),command.getOptionSeat(),
							command.getName(), command.getTell(),mDto.getMemberId());
		System.out.println("선택된 옵션 = = = "+command.getOption());
		System.out.println("선택된 옵션 가격가격가격 = = = "+command.getOptionPrice());
		odto.setOrderNum(orderRepository.orderNum());
		result = orderRepository.orderInsert(odto);
		
		
		return result;
	}

}
