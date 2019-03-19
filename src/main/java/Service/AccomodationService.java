package Service;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import Commend.AccomodationRegisterCommend;
import Commend.AccomodationRoomRegisterCommend;
import Commend.MemberRegisterCommend;
import Model.AccomodationDTO;
import Model.MemberDTO;
import Repository.AccomodationRepository;
import Repository.MemberSessionRepository;

public class AccomodationService {
    private File file = null;
	private String originalFile = null;
	private String originalFileExtension = null;
	private String storeFile = null;
	private String fileSize = null;
	
	@Autowired
	private AccomodationRepository accomodationRepository;	
	//AccomodationInsert 메소드
	public Integer Accomodationinsert(AccomodationRegisterCommend aCommend,HttpServletRequest request) {
		
		Integer result = 0;
		String area=aCommend.getAddress().substring(0,2);
		String address=aCommend.getAddress()+" "+aCommend.getAddressDetail();
		String tell=tell=aCommend.getTell()[0]+aCommend.getTell()[1]+aCommend.getTell()[2];
		System.out.println(request.getRealPath("/WEB-INF/view/")+"Accomodation\\upfile\\");
		String filePath = request.getRealPath("/WEB-INF/view/")+"Accomodation\\upfile\\";
		MultipartFile report = aCommend.getBoardFile();
        originalFile = report.getOriginalFilename();
		System.out.println(originalFile);
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
        System.out.println(aCommend.getbFacilityImform()+"정보");
		AccomodationDTO aDto = new AccomodationDTO(aCommend.getbFacilityName(),address,area,aCommend.getAccomodationKind(),tell,originalFile,storeFile,aCommend.getbFacilityImform());
	     
		result=accomodationRepository.insertAccomodation(aDto);
		return result;
	}
	public void AccomodationList(Model model) {
		
		List<AccomodationDTO> list=accomodationRepository.listAccomodation();
		List<AccomodationDTO> listCount=accomodationRepository.listAccomodationCount();
		System.out.println(listCount.get(0).getCount()+listCount.get(1).getAccmodationKind());
		model.addAttribute("list",list);
		model.addAttribute("AccomodationCount",listCount);
	}
	
	public void AccomodationEachList(Model model,String kind) {
		
		List<AccomodationDTO> list=accomodationRepository.listEachAccomodation(kind);
		AccomodationDTO aDto=accomodationRepository.AccomodationCount(kind);
		
		Integer count=aDto.getCount();
		model.addAttribute("list",list);
		model.addAttribute("kind",kind);
		model.addAttribute("count",count);
		
	}
	public void AccomodationRoom(Model model,int nume) {
		
	
		AccomodationDTO aDto=accomodationRepository.AccomodationRoom(nume);
		
        model.addAttribute("aDto",aDto);	
	
	}
	public void AccomodationRegister(Model model,AccomodationRoomRegisterCommend aRcommend) {
		
		
		AccomodationDTO aDto=accomodationRepository.AccomodationRoom(nume);
		
        model.addAttribute("aDto",aDto);	
	
	}
}