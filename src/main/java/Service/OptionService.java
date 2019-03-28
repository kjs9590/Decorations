package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Commend.OptionRegisterCommand;
import Model.OptionDTO;
import Repository.OptionRepository;

public class OptionService {

	@Autowired
	private OptionRepository optionRepository;
	
	
	public Integer optionInsert(OptionRegisterCommand command, Model model) {
		// TODO Auto-generated method stub
		Integer result = 0;
		
		OptionDTO odto = new OptionDTO(command.getOptionProduct(),command.getOptionPrice(),command.getOptionSoration());
		
		result = optionRepository.optionInsert(odto);
		
		
		return result;
		
	}


	public void optionList(Model model) {
		List<OptionDTO> options = optionRepository.optionList();
		model.addAttribute("options",options);
		
	}



}
