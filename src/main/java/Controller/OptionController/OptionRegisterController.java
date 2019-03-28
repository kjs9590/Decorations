package Controller.OptionController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Commend.OptionRegisterCommand;
import Service.OptionService;

@Controller
public class OptionRegisterController {
	
	@Autowired
	OptionService optionService;
	
	//옵션등록
	
	@RequestMapping(value="/OptionRegister", method=RequestMethod.GET)
	public String optionForm() {
		return "Option/OptionRegister";
	}
	
	@RequestMapping(value="/OptionRegister", method=RequestMethod.POST)
	public String optionInsert(OptionRegisterCommand command, Model model) {
		
		optionService.optionInsert(command,model);
		
		
		return "redirect:/Main";
	}
		
	
}
