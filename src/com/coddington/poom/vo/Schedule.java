package com.coddington.poom.vo;

import java.sql.Date;

import com.coddington.poom.util.FieldUtil;

public class Schedule {
	private int no,serviceNo;
	private String serviceDay;
	private Date serviceStartdate,serviceDate,regdate;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getServiceNo() {
		return serviceNo;
	}
	public void setServiceNo(int serviceNo) {
		this.serviceNo = serviceNo;
	}
	public String getServiceDay() {
		return serviceDay;
	}
	public void setServiceDay(String serviceDay) {
		this.serviceDay = serviceDay;
	}
	public Date getServiceStartdate() {
		return serviceStartdate;
	}
	public void setServiceStartdate(Date serviceStartdate) {
		this.serviceStartdate = serviceStartdate;
	}
	public Date getServiceDate() {
		return serviceDate;
	}
	public void setServiceDate(Date serviceDate) {
		this.serviceDate = serviceDate;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return FieldUtil.getAllFields(this).toString();
	} 
}
