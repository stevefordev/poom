package com.coddington.poom.vo;

import java.util.HashMap;
import java.util.List;

/**
 * 카드 정보 호출을 위한 VO
 * @author Administrator
 *
 */
public class Card {

  private String userName, title, tags, area1, area2;
  private int countLike, scoreTotal, countScore, poom;
  private List<String> photos;
 
  public List<String> getPhotos() {
    return photos;
  }
  public void setPhotos(List<String> photos) {
    this.photos = photos;
  }
  public int getPoom() {
    return poom;
  }
  public void setPoom(int poom) {
    this.poom = poom;
  }
  public String getUserName() {
    return userName;
  }
  public void setUserName(String userName) {
    this.userName = userName;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }
  public String getTags() {
    return tags;
  }
  public void setTags(String tags) {
    this.tags = tags;
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
  public int getCountLike() {
    return countLike;
  }
  public void setCountLike(int countLike) {
    this.countLike = countLike;
  }
  public int getScoreTotal() {
    return scoreTotal;
  }
  public void setScoreTotal(int scoreTotal) {
    this.scoreTotal = scoreTotal;
  }
  public int getCountScore() {
    return countScore;
  }
  public void setCountScore(int countScore) {
    this.countScore = countScore;
  }  
  
}
