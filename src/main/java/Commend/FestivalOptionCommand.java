package Commend;

import java.util.Date;

public class FestivalOptionCommand {
	// 축제 예약 옵션 사용
	private String FestivalType;   //축제 타입
	private String Festivalname;  // 축제이름
	private Date FestivalDate; // 축제날짜
	private Date FestivalTime; // 축제시간
	private String FestivalOption; // 축제 옵션
	
	
	public String getFestivalType() {
		return FestivalType;
	}
	public void setFestivalType(String festivalType) {
		FestivalType = festivalType;
	}
	public String getFestivalname() {
		return Festivalname;
	}
	public void setFestivalname(String festivalname) {
		Festivalname = festivalname;
	}
	public Date getFestivalDate() {
		return FestivalDate;
	}
	public void setFestivalDate(Date festivalDate) {
		FestivalDate = festivalDate;
	}
	public Date getFestivalTime() {
		return FestivalTime;
	}
	public void setFestivalTime(Date festivalTime) {
		FestivalTime = festivalTime;
	}
	public String getFestivalOption() {
		return FestivalOption;
	}
	public void setFestivalOption(String festivalOption) {
		FestivalOption = festivalOption;
	}
	
	
	
}
