package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.MovieRegisterDTO;
import Model.TheaterRegisterDTO;
import Repository.MovieRegistRepository;
import Repository.TheaterRegisterRepository;

public class TheaterMainService {

	@Autowired
	private TheaterRegisterRepository theaterRegisterRepository;
	@Autowired
	private MovieRegistRepository movieRegistRepository;
	
	public void theaterList(Model model,String area,String kind) {

	List<TheaterRegisterDTO> list=theaterRegisterRepository.listTheater(area, kind);
	System.out.println(list.size()+"몇이야");
	model.addAttribute("list",list);
	}
	public void theaterScreenList(Model model,Long num) {

	TheaterRegisterDTO tRdto=theaterRegisterRepository.screenList(num);
	
	model.addAttribute("tRdto",tRdto);
	}
	public void movieList(Model model) {

		List<MovieRegisterDTO> Mrdto=movieRegistRepository.movieList();
		
		model.addAttribute("Mrdto",Mrdto);
		}
	
	
}
