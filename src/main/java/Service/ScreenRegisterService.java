package Service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import Commend.ScreenCommand;
import Model.ScreenDTO;
import Repository.ScreenRegisterRepository;

public class ScreenRegisterService {
    @Autowired
	private ScreenRegisterRepository screenRegisterRepository;
    private File file = null;
	private String originalFile = null;
	private String originalFileExtension = null;
	private String storeFile = null;
	public void screenInsert(ScreenCommand sCommand,HttpServletRequest request) {
		
		String filePath = request.getRealPath("/WEB-INF/view/")+"Movie\\upfile2\\";
		MultipartFile report = sCommand.getScreenFile();
		originalFile = report.getOriginalFilename();
		originalFileExtension =originalFile.substring(originalFile.lastIndexOf(".")); 
		storeFile = UUID.randomUUID().toString().replaceAll("-", "");
		storeFile = storeFile + originalFileExtension;

		file = new File(filePath+storeFile); 
		try {
			report.transferTo(file);

		} catch (IllegalStateException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		
		
		ScreenDTO sDto =new ScreenDTO(sCommand.getTheaterNum(),sCommand.getScreenKind(),
				sCommand.getScreenRow(),sCommand.getScreenColum(),sCommand.getScreenName(),
				originalFile,storeFile,sCommand.getScreenPlus());
		screenRegisterRepository.screenInsert(sDto);
		}

	
}
