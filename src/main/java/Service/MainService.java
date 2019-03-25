package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.AccomodationDTO;
import Model.RestaurantDTO;
import Repository.MainRepository;

public class MainService {

	@Autowired
	private MainRepository mainRepository;
	
	
	public void restaurantList(Model model) {
		List<RestaurantDTO> restaurantList = mainRepository.restaturantList();
		model.addAttribute("restaurantList",restaurantList );
	}


	public void accomodationList(Model model) {
		List<AccomodationDTO> accomodationList = mainRepository.accomodationList();
		model.addAttribute("accomodationList",accomodationList );
		
	}

}
