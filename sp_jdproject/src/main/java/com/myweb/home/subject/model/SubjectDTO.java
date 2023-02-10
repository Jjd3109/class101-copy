package com.myweb.home.subject.model;

public class SubjectDTO {

	private int sell_number;
	private int sell_idNumber;
	private String sell_field;
	private String sell_title;
	private String sell_content;
	private String sell_writeday; 
	private int sell_price;
	
	//사진 정보를 가져오기 위한 것 !!
	private String uuidName; //
	private String location; //실제저장된위치
	private String url; //불러올값
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getSell_number() {
		return sell_number;
	}
	public void setSell_number(int sell_number) {
		this.sell_number = sell_number;
	}
	public int getSell_idNumber() {
		return sell_idNumber;
	}
	public void setSell_idNumber(int sell_idNumber) {
		this.sell_idNumber = sell_idNumber;
	}
	public String getSell_field() {
		return sell_field;
	}
	public void setSell_field(String sell_field) {
		this.sell_field = sell_field;
	}
	public String getSell_title() {
		return sell_title;
	}
	public void setSell_title(String sell_title) {
		this.sell_title = sell_title;
	}
	public String getSell_content() {
		return sell_content;
	}
	public void setSell_content(String sell_content) {
		this.sell_content = sell_content;
	}
	public String getSell_writeday() {
		return sell_writeday;
	}
	public void setSell_writeday(String sell_writeday) {
		this.sell_writeday = sell_writeday;
	}
	public int getSell_price() {
		return sell_price;
	}
	public void setSell_price(int sell_price) {
		this.sell_price = sell_price;
	}
	
	@Override
	public String toString() {
		return "SubjectDTO [sell_number=" + sell_number + ", sell_idNumber=" + sell_idNumber + ", sell_field="
				+ sell_field + ", sell_title=" + sell_title + ", sell_content=" + sell_content + ", sell_writeday="
				+ sell_writeday + ", sell_price=" + sell_price + ", uuidName=" + uuidName + ", location=" + location
				+ ", url=" + url + "]";
	}
	
}
