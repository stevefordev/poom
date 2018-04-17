package com.coddington.poom.vo;

import java.sql.Date;
import com.coddington.poom.util.FieldUtil;

public class Schedule {
  private int no, serviceNo;
  private String type;// 실제 디비에서는 필요 없음, js 객체를 위해 사용

  private String serviceDay;
  private Date serviceStartdate, serviceDate, regdate;

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
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
