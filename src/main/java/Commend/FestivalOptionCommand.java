package Commend;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class FestivalOptionCommand {
	// 축제 예약 옵션 사용
	private String festivalType;   //축제 타입
	private String festivalName;  // 축제이름
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date festivalDate; // 축제날짜
	@DateTimeFormat(pattern="HH:mm")
	private Date festivalTime; // 축제시간
	private String festivalOption; // 축제 옵션
	private int PRODUCTNUM; //상품번호
	private int CATEGORYNUM; //카테고리번호
	private int festivalPrice; //입장요금
	private String festivalimg; // 이미지
	/*private int optionNum; //옵션번호
	private String optionProduct; //옵션명
	private int optionPrice; // 옵션가격
	private String optionSortation; // 옵션종류 영화/숙박/레스토랑/축제
*/	
	
	

	public String getFestivalimg() {
		return festivalimg;
	}
	public void setFestivalimg(String festivalimg) {
		this.festivalimg = festivalimg;
	}
	public int getFestivalPrice() {
		return festivalPrice;
	}
	public void setFestivalPrice(int festivalPrice) {
		this.festivalPrice = festivalPrice;
	}
	public String getFestivalType() {
		return festivalType;
	}
	public void setFestivalType(String festivalType) {
		this.festivalType = festivalType;
	}
	public String getFestivalName() {
		return festivalName;
	}
	public void setFestivalName(String festivalName) {
		this.festivalName = festivalName;
	}
	public Date getFestivalDate() {
		return festivalDate;
	}
	public void setFestivalDate(Date festivalDate) {
		this.festivalDate = festivalDate;
	}
	public Date getFestivalTime() {
		return festivalTime;
	}
	public void setFestivalTime(Date festivalTime) {
		this.festivalTime = festivalTime;
	}
	public String getFestivalOption() {
		return festivalOption;
	}
	public void setFestivalOption(String festivalOption) {
		this.festivalOption = festivalOption;
	}
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
	
	
	
	
}
