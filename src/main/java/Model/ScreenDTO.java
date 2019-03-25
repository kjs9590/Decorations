package Model;

import java.io.Serializable;

public class ScreenDTO implements Serializable{
/*	SCREEN_NUM--상영관번호
	THEATER_NUM	--영화관번호
	SCREEN_KIND	--상영관종류
	SCREEN_ROW	--상영관행
	SCREEN_COLUMN--상영관열
	SCREEN_NAME	--상영관이름*/

 private Long screenNum;
 private Long theaterNum;
 private String screenKind;
 private int screenRow;
 private int screenColumn;
 private String screenName;

 
 
 public ScreenDTO() {
	
}
public ScreenDTO(Long theaterNum, String screenKind, int screenRow, int screenColumn, String screenName) {
	super();
	this.theaterNum = theaterNum;
	this.screenKind = screenKind;
	this.screenRow = screenRow;
	this.screenColumn = screenColumn;
	this.screenName = screenName;
}
public Long getScreenNum() {
	return screenNum;
}
public void setScreenNum(Long screenNum) {
	this.screenNum = screenNum;
}
public Long getTheaterNum() {
	return theaterNum;
}
public void setTheaterNum(Long theaterNum) {
	this.theaterNum = theaterNum;
}
public String getScreenKind() {
	return screenKind;
}
public void setScreenKind(String screenKind) {
	this.screenKind = screenKind;
}
public int getScreenRow() {
	return screenRow;
}
public void setScreenRow(int screenRow) {
	this.screenRow = screenRow;
}
public int getScreenColumn() {
	return screenColumn;
}
public void setScreenColumn(int screenColumn) {
	this.screenColumn = screenColumn;
}
public String getScreenName() {
	return screenName;
}
public void setScreenName(String screenName) {
	this.screenName = screenName;
}
 
 
}
