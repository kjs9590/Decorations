package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Commend.OptionRegisterCommand;
import Repository.OptionRepository;

public class OptionService {

	@Autowired
	private OptionRepository optionRepository;
	public void optionInsert(OptionRegisterCommand command, Model model) {
		// TODO Auto-generated method stub
		
	}

}
