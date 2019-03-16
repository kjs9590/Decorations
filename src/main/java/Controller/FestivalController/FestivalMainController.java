package Controller.FestivalController;

import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.opencsv.CSVReader;
import Model.FestivalDTO;





@Controller
@RequestMapping("/Festival/Main")
public class FestivalMainController {
// 축제 메인 컨트롤러
	
	@RequestMapping(method=RequestMethod.GET)
	public String form(Model model) {
		
		return "Festival/FestivalMain";
	}
	
}
