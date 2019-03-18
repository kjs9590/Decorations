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
		return result;
	}

	public List<FestivalDTO> paging(AutoPaging paging) {
		// TODO Auto-generated method stub
		List<FestivalDTO> result = festivalRepository.paging(paging);
		return result;
	}

	public Integer listcount(int count) {
		return festivalRepository.listcount(count);
	}


}
