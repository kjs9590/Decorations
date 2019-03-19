package Model;

public class AccomodationRegisterDTO {
// 데이터베이스	
	/*ROOM_NUM --객실번호
	ACCOMODATION_NUM --숙박번호
	ROOM_PRICE --객실가격
	ROOM_AD	--입실
	ROOM_EX	--퇴실
	ROOM_KIND --객실종류
	ROOM_COUNT --객실인원
	ROOM_IMG --객실 이미지
	ROOM_IMGSTORE --객실 스토어 이미지
	*
	*/
	
	private Long roomNum;
	private int accomodationNum;
	private int roomPrice;
	private String roomAd;
	private String roomEx;
	private String roomKind;
	private int roomCount;
	private String roomImg;
	private String roomImgstore;
	
	public AccomodationRegisterDTO() {}

	
	
	public AccomodationRegisterDTO(int accomodationNum, int roomPrice, String roomAd, String roomEx, String roomKind,
			int roomCount, String roomImg, String roomImgstore) {
		super();
		this.accomodationNum = accomodationNum;
		this.roomPrice = roomPrice;
		this.roomAd = roomAd;
		this.roomEx = roomEx;
		this.roomKind = roomKind;
		this.roomCount = roomCount;
		this.roomImg = roomImg;
		this.roomImgstore = roomImgstore;
	}



	public Long getRoomNum() {
		return roomNum;
	}

	public void setRoomNum(Long roomNum) {
		this.roomNum = roomNum;
	}

	public int getAccomodationNum() {
		return accomodationNum;
	}

	public void setAccomodationNum(int accomodationNum) {
		this.accomodationNum = accomodationNum;
	}

	public int getRoomPrice() {
		return roomPrice;
	}

	public void setRoomPrice(int roomPrice) {
		this.roomPrice = roomPrice;
	}

	public String getRoomAd() {
		return roomAd;
	}

	public void setRoomAd(String roomAd) {
		this.roomAd = roomAd;
	}

	public String getRoomEx() {
		return roomEx;
	}

	public void setRoomEx(String roomEx) {
		this.roomEx = roomEx;
	}

	public String getRoomKind() {
		return roomKind;
	}

	public void setRoomKind(String roomKind) {
		this.roomKind = roomKind;
	}

	public int getRoomCount() {
		return roomCount;
	}

	public void setRoomCount(int roomCount) {
		this.roomCount = roomCount;
	}

	public String getRoomImg() {
		return roomImg;
	}

	public void setRoomImg(String roomImg) {
		this.roomImg = roomImg;
	}

	public String getRoomImgstore() {
		return roomImgstore;
	}

	public void setRoomImgstore(String roomImgstore) {
		this.roomImgstore = roomImgstore;
	}

	
	
	
	
}
