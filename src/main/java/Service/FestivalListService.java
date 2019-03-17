package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Model.FestivalDTO;
import Repository.FestivalRepository;
import other.AutoPaging;
@Service
public class FestivalListService {

	@Autowired
	private FestivalRepository festivalRepository;
	
	public List<FestivalDTO> festivallist(FestivalDTO dto) {
		// TODO Auto-generated method stub
		List<FestivalDTO> result = festivalRepository.festivallist(dto);
		System.out.println("서비스축제명" + dto.getFESTIVALNAME());
		return result;
	}

}
