package Commend;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class OptionCommand {
	// 축제
	private String festivalType;   //축제 타입
	private String festivalName;  // 축제이름
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date festivalDate; // 축제날짜
	@DateTimeFormat(pattern="HH:mm")
	private Date festivalTime; // 축제시간 null
	private String festivalOption; // 축제 옵션
	private int PRODUCTNUM; //상품번호
	private int CATEGORYNUM; //카테고리번호
	private int festivalPrice; //입장요금
	private String festivalimg; // 이미지
	private String festivalSeat; //좌석 null
	private String festivalCheckin; //체크인 null
	private String festivalCheckout; //체크아웃 null
	//영화
	private String movieType;   
	private String movieName;  
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date movieDate; 
	@DateTimeFormat(pattern="HH:mm")
	private Date movieTime;
	private String movieOption; 
	private int movieProductNum; 
	private int movieCategoryNum; 
	private int moviePrice;
	private String movieimg; 
	private String movieSeat; 
	private String movieCheckin; 
	private String movieCheckout; 
	//레스토랑
	private String restaurantType;   
	private String restaurantName;  
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date restaurantrestaurantDate; 
	@DateTimeFormat(pattern="HH:mm")
	private Date restaurantTime;
	private String restaurantOption; 
	private int restaurantProductNum; 
	private int restaurantCategoryNum; 
	private int restaurantPrice;
	private String restaurantimg; 
	private String restaurantSeat; 
	private String restaurantCheckin; 
	private String restaurantCheckout; 
	//숙박
	private String lodgmentType;   
	private String lodgmentName;  
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date lodgmentDate; 
	@DateTimeFormat(pattern="HH:mm")
	private Date lodgmentTime;
	private String lodgmentOption; 
	private int lodgmentProductNum; 
	private int lodgmentCategoryNum; 
	private int lodgmentPrice;
	private String lodgmentimg; 
	private String lodgmentSeat; 
	private String lodgmentCheckin; 
	private String lodgmentCheckout; 
	
	
	
	
	
	public String getLodgmentType() {
		return lodgmentType;
	}
	public void setLodgmentType(String lodgmentType) {
		this.lodgmentType = lodgmentType;
	}
	public String getLodgmentName() {
		return lodgmentName;
	}
	public void setLodgmentName(String lodgmentName) {
		this.lodgmentName = lodgmentName;
	}
	public Date getLodgmentDate() {
		return lodgmentDate;
	}
	public void setLodgmentDate(Date lodgmentDate) {
		this.lodgmentDate = lodgmentDate;
	}
	public Date getLodgmentTime() {
		return lodgmentTime;
	}
	public void setLodgmentTime(Date lodgmentTime) {
		this.lodgmentTime = lodgmentTime;
	}
	public String getLodgmentOption() {
		return lodgmentOption;
	}
	public void setLodgmentOption(String lodgmentOption) {
		this.lodgmentOption = lodgmentOption;
	}
	public int getLodgmentProductNum() {
		return lodgmentProductNum;
	}
	public void setLodgmentProductNum(int lodgmentProductNum) {
		this.lodgmentProductNum = lodgmentProductNum;
	}
	public int getLodgmentCategoryNum() {
		return lodgmentCategoryNum;
	}
	public void setLodgmentCategoryNum(int lodgmentCategoryNum) {
		this.lodgmentCategoryNum = lodgmentCategoryNum;
	}
	public int getLodgmentPrice() {
		return lodgmentPrice;
	}
	public void setLodgmentPrice(int lodgmentPrice) {
		this.lodgmentPrice = lodgmentPrice;
	}
	public String getLodgmentimg() {
		return lodgmentimg;
	}
	public void setLodgmentimg(String lodgmentimg) {
		this.lodgmentimg = lodgmentimg;
	}
	public String getLodgmentSeat() {
		return lodgmentSeat;
	}
	public void setLodgmentSeat(String lodgmentSeat) {
		this.lodgmentSeat = lodgmentSeat;
	}
	public String getLodgmentCheckin() {
		return lodgmentCheckin;
	}
	public void setLodgmentCheckin(String lodgmentCheckin) {
		this.lodgmentCheckin = lodgmentCheckin;
	}
	public String getLodgmentCheckout() {
		return lodgmentCheckout;
	}
	public void setLodgmentCheckout(String lodgmentCheckout) {
		this.lodgmentCheckout = lodgmentCheckout;
	}
	public String getRestaurantType() {
		return restaurantType;
	}
	public void setRestaurantType(String restaurantType) {
		this.restaurantType = restaurantType;
	}
	public String getRestaurantName() {
		return restaurantName;
	}
	public void setRestaurantName(String restaurantName) {
		this.restaurantName = restaurantName;
	}
	public Date getRestaurantrestaurantDate() {
		return restaurantrestaurantDate;
	}
	public void setRestaurantrestaurantDate(Date restaurantrestaurantDate) {
		this.restaurantrestaurantDate = restaurantrestaurantDate;
	}
	public Date getRestaurantTime() {
		return restaurantTime;
	}
	public void setRestaurantTime(Date restaurantTime) {
		this.restaurantTime = restaurantTime;
	}
	public String getRestaurantOption() {
		return restaurantOption;
	}
	public void setRestaurantOption(String restaurantOption) {
		this.restaurantOption = restaurantOption;
	}
	public int getRestaurantProductNum() {
		return restaurantProductNum;
	}
	public void setRestaurantProductNum(int restaurantProductNum) {
		this.restaurantProductNum = restaurantProductNum;
	}
	public int getRestaurantCategoryNum() {
		return restaurantCategoryNum;
	}
	public void setRestaurantCategoryNum(int restaurantCategoryNum) {
		this.restaurantCategoryNum = restaurantCategoryNum;
	}
	public int getRestaurantPrice() {
		return restaurantPrice;
	}
	public void setRestaurantPrice(int restaurantPrice) {
		this.restaurantPrice = restaurantPrice;
	}
	public String getRestaurantimg() {
		return restaurantimg;
	}
	public void setRestaurantimg(String restaurantimg) {
		this.restaurantimg = restaurantimg;
	}
	public String getRestaurantSeat() {
		return restaurantSeat;
	}
	public void setRestaurantSeat(String restaurantSeat) {
		this.restaurantSeat = restaurantSeat;
	}
	public String getRestaurantCheckin() {
		return restaurantCheckin;
	}
	public void setRestaurantCheckin(String restaurantCheckin) {
		this.restaurantCheckin = restaurantCheckin;
	}
	public String getRestaurantCheckout() {
		return restaurantCheckout;
	}
	public void setRestaurantCheckout(String restaurantCheckout) {
		this.restaurantCheckout = restaurantCheckout;
	}
	public String getMovieType() {
		return movieType;
	}
	public void setMovieType(String movieType) {
		this.movieType = movieType;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public Date getMovieDate() {
		return movieDate;
	}
	public void setMovieDate(Date movieDate) {
		this.movieDate = movieDate;
	}
	public Date getMovieTime() {
		return movieTime;
	}
	public void setMovieTime(Date movieTime) {
		this.movieTime = movieTime;
	}
	public String getMovieOption() {
		return movieOption;
	}
	public void setMovieOption(String movieOption) {
		this.movieOption = movieOption;
	}
	public int getMovieProductNum() {
		return movieProductNum;
	}
	public void setMovieProductNum(int movieProductNum) {
		this.movieProductNum = movieProductNum;
	}
	public int getMovieCategoryNum() {
		return movieCategoryNum;
	}
	public void setMovieCategoryNum(int movieCategoryNum) {
		this.movieCategoryNum = movieCategoryNum;
	}
	public int getMoviePrice() {
		return moviePrice;
	}
	public void setMoviePrice(int moviePrice) {
		this.moviePrice = moviePrice;
	}
	public String getMovieimg() {
		return movieimg;
	}
	public void setMovieimg(String movieimg) {
		this.movieimg = movieimg;
	}
	public String getMovieSeat() {
		return movieSeat;
	}
	public void setMovieSeat(String movieSeat) {
		this.movieSeat = movieSeat;
	}
	public String getMovieCheckin() {
		return movieCheckin;
	}
	public void setMovieCheckin(String movieCheckin) {
		this.movieCheckin = movieCheckin;
	}
	public String getMovieCheckout() {
		return movieCheckout;
	}
	public void setMovieCheckout(String movieCheckout) {
		this.movieCheckout = movieCheckout;
	}
	public String getFestivalSeat() {
		return festivalSeat;
	}
	public void setFestivalSeat(String festivalSeat) {
		this.festivalSeat = festivalSeat;
	}
	public String getFestivalCheckin() {
		return festivalCheckin;
	}
	public void setFestivalCheckin(String festivalCheckin) {
		this.festivalCheckin = festivalCheckin;
	}
	public String getFestivalCheckout() {
		return festivalCheckout;
	}
	public void setFestivalCheckout(String festivalCheckout) {
		this.festivalCheckout = festivalCheckout;
	}

	
	
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
