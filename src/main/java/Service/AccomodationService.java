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
import Model.AccomodationRegisterDTO;
import Model.MemberDTO;
import Repository.AccomodationRepository;
import Repository.MemberSessionRepository;

public class AccomodationService {
    private File file = null;
	private String originalFile = null;
	private String originalFileExtension = null;
	private String storeFile = null;
	private String time1;
	private String time2;
	private String originalFiles = "";
	private String storeFiles = "";
	private String filesSize = "";
	
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
		List<AccomodationRegisterDTO> list=accomodationRepository.AccomodationRoomList(nume);
        System.out.println(list.get(1).getRoomCount()+"뭐야");
		model.addAttribute("aDto",aDto);	
        model.addAttribute("list",list);	
	}
	public String AccomodationRegister(Model model,AccomodationRoomRegisterCommend aRcommend,HttpServletRequest request) {
		
	
		String path = null;
		
	
		
		String filePath = request.getRealPath("/WEB-INF/view/")+"Accomodation\\upfile1\\";
		MultipartFile[] reports = aRcommend.getBoardFile();
		

		int i = 1;
		for(MultipartFile report : reports) {
			originalFile = report.getOriginalFilename();
			  System.out.println(originalFile+" originalFile");
			originalFileExtension = originalFile.substring(originalFile.lastIndexOf("."));
			System.out.println(originalFileExtension+" originalFileExtension ");
			storeFile = UUID.randomUUID().toString().replaceAll("-", "");
			System.out.println(storeFile+" storeFile");
			storeFile = storeFile + originalFileExtension;
			System.out.println(storeFile+" storeFile");
			file = new File(filePath+storeFile); 
			System.out.println(filePath+storeFile+" filePath+storeFile");
			try {
				report.transferTo(file);
				System.out.println(originalFile +" originalFile");
				originalFiles += originalFile +"-";
				storeFiles += storeFile + "-";
	
			}catch(Exception e) {	
				e.printStackTrace();
			}
			
		}
		time1=aRcommend.getProAdTime1()+" "+aRcommend.getProAdTime2()+":"+aRcommend.getProAdTime3();
        time2=aRcommend.getProExTime1()+" "+aRcommend.getProExTime2()+":"+aRcommend.getProExTime3();

		System.out.println(originalFiles+"originalFiles 끝");
		
		AccomodationRegisterDTO aRDTO =new AccomodationRegisterDTO(aRcommend.getNum(),aRcommend.getaProPrice(),time1,time2,aRcommend.getaProKind(),aRcommend.getCount(),originalFiles,storeFiles);
		Integer i1;
		
		aRDTO.setRoomNum(accomodationRepository.DateProductNum());
		accomodationRepository.DateProduct(aRDTO);
		i1=accomodationRepository.RoomRegister(aRDTO);
		originalFiles="";
		storeFiles="";
		if(i1 > 0) {  
		return	path ="redirect:Accomodation/RoomList?num=2";
		}else {
			String[] fileNames = storeFiles.split("-");
			for(String fileName : fileNames) {
				File f = new File(filePath+fileName);
				if(f.exists()) 
					{	
						f.delete(); 
					}
			}
		return path = "report/submissionForm";
		}
		
		
	}
		
	
	}
