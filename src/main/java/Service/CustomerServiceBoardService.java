package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;

import Model.CustomerserviceDTO;
import Repository.CustomerServiceRepository;

public class CustomerServiceBoardService {

	@Autowired
	private CustomerServiceRepository customerserviceRepository;
	
	public Integer insert(CustomerserviceDTO dto) {
		return customerserviceRepository.insert(dto);
	}

	public CustomerserviceDTO detail(@RequestParam("fno") int num) {
		
		return customerserviceRepository.detail(num);
	}

}
