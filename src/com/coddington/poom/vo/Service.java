package com.coddington.poom.vo;

import java.sql.Date;

public class Service {
	public enum Category {

		EDUCATION(1) {
			@Override
			public String title() {			
				return "교육";
			}
			
		}, HOUSEKEEPING(2) {
			@Override
			public String title() {			
				return "가사";
			}
		}, DELIVERY(3) {
			@Override
			public String title() {			
				return "심부름";
			}
		};
		
		private int value;
		public abstract String title();
		
		private Category(int value) {
			this.value = value;
		}		
	}
	
	private int no, userNo, poom, category, role;
	private String title, area1, area2, detailAddress1, detailAddress2, latitude, longitude, content, photoUrl;
	private Date regdate;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getPoom() {
		return poom;
	}
	public void setPoom(int poom) {
		this.poom = poom;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getArea1() {
		return area1;
	}
	public void setArea1(String area1) {
		this.area1 = area1;
	}
	public String getArea2() {
		return area2;
	}
	public void setArea2(String area2) {
		this.area2 = area2;
	}
	public String getDetailAddress1() {
		return detailAddress1;
	}
	public void setDetailAddress1(String detailAddress1) {
		this.detailAddress1 = detailAddress1;
	}
	public String getDetailAddress2() {
		return detailAddress2;
	}
	public void setDetailAddress2(String detailAddress2) {
		this.detailAddress2 = detailAddress2;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPhotoUrl() {
		return photoUrl;
	}
	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
}
