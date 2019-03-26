package Service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import Commend.MovieScreenCommand;
import Commend.ScreenCommand;
import Model.DateProductMovieDTO;
import Model.MovieRegisterDTO;
import Model.ScreenDTO;
import Repository.DateProductRepository;
import Repository.MovieRegistRepository;
import Repository.ScreenRegisterRepository;

public class ScreenRegisterService {
    @Autowired
	private ScreenRegisterRepository screenRegisterRepository;
    @Autowired
    private MovieRegistRepository movieRegistRepository;
    @Autowired
    private DateProductRepository dateProductRepository;
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
	public void intoScreen(Model model,Long no1,Long no2) {
		List<MovieRegisterDTO> Mrdto=movieRegistRepository.movieList();
		model.addAttribute("Mrdto",Mrdto);
		model.addAttribute("no1",no1);
		model.addAttribute("no2",no2);
	}
	public void movieScreenRegister(MovieScreenCommand mScommand) {
		int movie[]=mScommand.getTime();
		String movieStart=movie[0]+"시"+movie[1];
		Long num=dateProductRepository.dateProductNum();
		dateProductRepository.dateProduct(num,2);
		DateProductMovieDTO dPdtod= new DateProductMovieDTO(num,mScommand.getScreenNum()
			,mScommand.getTheaterNum(),2,movieStart,mScommand.getMovieNum());
		screenRegisterRepository.screenMovieInsert(dPdtod);
	}
	
	
}
