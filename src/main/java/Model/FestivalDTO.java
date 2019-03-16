package Model;

public class FestivalDTO {
	private String FestivalName; 	//축제이름
	private String FestivalDate;	//축제날짜
	private String FestivalPlace;	//축제장소
	private String FestivalNumber;	//축제번호
	
	public String getFestivalName() {
		return FestivalName;
	}
	public void setFestivalName(String festivalName) {
		FestivalName = festivalName;
	}
	public String getFestivalDate() {
		return FestivalDate;
	}
	public void setFestivalDate(String festivalDate) {
		FestivalDate = festivalDate;
	}
	public String getFestivalPlace() {
		return FestivalPlace;
	}
	public void setFestivalPlace(String festivalPlace) {
		FestivalPlace = festivalPlace;
	}
	public String getFestivalNumber() {
		return FestivalNumber;
	}
	public void setFestivalNumber(String festivalNumber) {
		FestivalNumber = festivalNumber;
	}
}
