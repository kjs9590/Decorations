package Service;

import org.springframework.beans.factory.annotation.Autowired;

import Model.CustomerserviceDTO;
import Repository.CustomerServiceRepository;

public class CustomerServiceBoardService {

	@Autowired
	private CustomerServiceRepository customerserviceRepository;
	
	public Integer insert(CustomerserviceDTO dto) {
		// TODO Auto-generated method stub
		return customerserviceRepository.insert(dto);
	}

}