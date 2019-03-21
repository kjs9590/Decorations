package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import Model.CustomerserviceDTO;
import Repository.CustomerServiceRepository;

public class CustomerserviceService {
	@Autowired
	private CustomerServiceRepository customerserviceRepository;
	public List<CustomerserviceDTO> alllist(CustomerserviceDTO dto) {
		// TODO Auto-generated method stub
		return customerserviceRepository.alllist(dto);
	}

}
