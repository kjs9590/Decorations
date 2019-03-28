package Commend;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class OptionCommand {
	
	private String productType;   //데이트상품 타입
	private String productName;  // 데이트 상품이름
	private int productNum; //데이트번호
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date optionDate; // 데이트 날짜
	private int optionTime; // 데이트시간 
	private int optionPrice; //입장요금
	private String optionimg; // 이미지
	private String optionSeat; //좌석 null
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date optionCheckin; //체크인 null
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date optionCheckout;
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Date getOptionDate() {
		return optionDate;
	}
	public void setOptionDate(Date optionDate) {
		this.optionDate = optionDate;
	}
	public int getOptionTime() {
		return optionTime;
	}
	public void setOptionTime(int optionTime) {
		this.optionTime = optionTime;
	}
	
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public int getOptionPrice() {
		return optionPrice;
	}
	public void setOptionPrice(int optionPrice) {
		this.optionPrice = optionPrice;
	}
	public String getOptionimg() {
		return optionimg;
	}
	public void setOptionimg(String optionimg) {
		this.optionimg = optionimg;
	}
	public String getOptionSeat() {
		return optionSeat;
	}
	public void setOptionSeat(String optionSeat) {
		this.optionSeat = optionSeat;
	}
	public Date getOptionCheckin() {
		return optionCheckin;
	}
	public void setOptionCheckin(Date optionCheckin) {
		this.optionCheckin = optionCheckin;
	}
	public Date getOptionCheckout() {
		return optionCheckout;
	}
	public void setOptionCheckout(Date optionCheckout) {
		this.optionCheckout = optionCheckout;
	} //체크아웃 null
	
}
	