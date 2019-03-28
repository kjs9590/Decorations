package Controller.OptionController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Service.OptionService;

public class OptionListController {
	
	@Autowired
	OptionService optionService;
	
	
	
	public void setOptionService(OptionService optionService) {
		this.optionService = optionService;
	}



	//옵션 리스트
	@RequestMapping(value="/OptionList", method=RequestMethod.GET)
	public String optionList(Model model) {
		optionService.optionList(model);
		return "Option/OptionList";
	}
	
		
}
