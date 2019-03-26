package Commend;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class FestivalOptionCommand {
	// 축제 예약 옵션 사용
	private String festivalType;   //축제 타입
	private String Festivalname;  // 축제이름
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date festivalDate; // 축제날짜
	@DateTimeFormat(pattern="HH:mm")
	private Date FestivalTime; // 축제시간
	private String FestivalOption; // 축제 옵션
	private int PRODUCTNUM; //상품번호
	private int CATEGORYNUM; //카테고리번호
	
	public int getPRODUCTNUM() {
		return PRODUCTNUM;
	}
	public void setPRODUCTNUM(int pRODUCTNUM) {
		PRODUCTNUM = pRODUCTNUM;
	}
	public int getCATEGORYNUM() {
		return CATEGORYNUM;
	}
	public void setCATEGORYNUM(int cATEGORYNUM) {
		CATEGORYNUM = cATEGORYNUM;
	}
	public String getFestivalType() {
		return festivalType;
	}
	public void setFestivalType(String festivalType) {
		this.festivalType = festivalType;
	}
	public String getFestivalname() {
		return Festivalname;
	}
	public void setFestivalname(String festivalname) {
		Festivalname = festivalname;
	}
	public Date getFestivalDate() {
		return festivalDate;
	}
	public void setFestivalDate(Date festivalDate) {
		this.festivalDate = festivalDate;
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
