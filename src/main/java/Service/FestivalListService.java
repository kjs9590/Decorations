package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Model.FestivalDTO;
import Repository.FestivalRepository;
@Service
public class FestivalListService {

	@Autowired
	private FestivalRepository festivalRepository;
	
	public List<FestivalDTO> festivallist() {
		// TODO Auto-generated method stub
		List<FestivalDTO> result = festivalRepository.festivallist();
		return result;
	}

}
