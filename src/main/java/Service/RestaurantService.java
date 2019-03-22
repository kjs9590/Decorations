package Service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import Commend.FoodCommand;
import Commend.RestaurantRegisterCommand;
import Model.FoodDTO;
import Model.RestaurantDTO;
import Repository.RestaurantRepository;

public class RestaurantService {

	@Autowired
	private RestaurantRepository restaurantRepository;

	private File file = null;
	private String originalFile = null;
	private String originalFileExtension = null;
	private String storeFile = null;


	public Integer restaurantRegist(RestaurantRegisterCommand reCommand, HttpServletRequest request, Model model) {
		Integer result = 0;
		String area=reCommand.getAddress().substring(0,2);
		String address=reCommand.getAddress()+" "+reCommand.getDetailAddress();
		String tell = reCommand.getRestaurantTell()[0]+reCommand.getRestaurantTell()[1]+reCommand.getRestaurantTell()[2];

		String filePath = request.getRealPath("/WEB-INF/view/")+"Restaurant\\upfile\\";
		MultipartFile report = reCommand.getRestaurantImage();
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

		RestaurantDTO redto = new RestaurantDTO (reCommand.getRestaurantName(),reCommand.getRestaurantKind(),address,area,originalFile,storeFile,tell,reCommand.getRestaurantInfo(),reCommand.getTableCount());

		result=restaurantRepository.insertRestaurant(redto);

		model.addAttribute("redto", redto);
		return result;

	}


	public void restaurantList(Model model) {
		List<RestaurantDTO> list = restaurantRepository.restaurantList();
		model.addAttribute("list",list);

	}
/*
	//음식 등록
	public Integer foodInsert(FoodCommand fCommand, HttpServletRequest request, Model model) {
		Integer result = 0;

		String filePath = request.getRealPath("/WEB-INF/view/")+"Restaurant\\upfile\\";
		MultipartFile report = fCommand.getFoodImage();
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

		FoodDTO fdto = new FoodDTO(fCommand.getFoodName(), fCommand.getFoodType(), fCommand.getFoodPrice(),fCommand.getFoodInform(),originalFile,storeFile);



		return result; 
	}*/

	//디테일...럼홍ㄴ;ㅏㅓ로마언
	public void restaurantDetail(Model model, Long num) {
		RestaurantDTO rdto = restaurantRepository.restaurantDedail(num);
		model.addAttribute("rdto",rdto);


	}


	public void restaurantList(Model model, String kind) {
		List<RestaurantDTO> list = restaurantRepository.restaurantList(kind);
		model.addAttribute("list",list);
		model.addAttribute("kind",kind);
	}


	public void restaurantArea(Model model, String area, String kind) {
		List<RestaurantDTO> list = restaurantRepository.restaurantArea(area, kind);

		model.addAttribute("list",list);

	}


	public void newRestaurant(Model model, String kind) {
		List<RestaurantDTO> list = restaurantRepository.newRestaurant(kind);

		model.addAttribute("list",list);

	}



}






