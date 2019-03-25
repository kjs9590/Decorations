package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Commend.ScreenCommand;
import Model.ScreenDTO;
import Repository.ScreenRegisterRepository;

public class ScreenRegisterService {
    @Autowired
	private ScreenRegisterRepository screenRegisterRepository;
	
	public void screenInsert(ScreenCommand sCommand) {
		ScreenDTO sDto =new ScreenDTO(sCommand.getTheaterNum(),sCommand.getScreenKind(),
				sCommand.getScreenRow(),sCommand.getScreenColum(),sCommand.getScreenName());
		screenRegisterRepository.screenInsert(sDto);
		}

	
}
