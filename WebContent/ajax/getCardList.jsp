<%@page import="java.util.Random"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.HashSet"%>
<%@page import="com.coddington.poom.vo.Photo"%>
<%@page import="com.coddington.poom.dao.PhotosDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.coddington.poom.vo.Card"%>
<%@page import="com.coddington.poom.dao.ServicesDAO"%>
<%@page import="com.coddington.poom.vo.Service"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="com.coddington.poom.dao.TagsDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.coddington.poom.vo.Tag"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");
  String step = request.getParameter("step");

  ObjectMapper om = new ObjectMapper();
  String json = "";

  List<Card> cards = new ArrayList<Card>();
  List<Service> services = ServicesDAO.selectListAll();

  for (Service s : services) {

  }

  for (int i = 0; i < 6; i++) {
    List<Tag> tags = TagsDAO.selectListByServiceNo(services.get(i).getNo());


    List<String> tagNames = new ArrayList();
    for (int j = 0; j < 3 && j < tags.size(); j++) {
      //1단 카드에서는 세개만
      tagNames.add("#" + tags.get(j).getName());

    }

    //PhotosDAO.selectList
    List<String> photos = new ArrayList<String>();
    photos.add("img/heroimage/heroImage.jpg");
    photos.add("img/serviceimg/work2.jpg");
    photos.add("img/serviceimg/work3.jpg");
    
    Random random = new Random();

    int score =  random.nextInt(89) + 10;
    int countScore =  random.nextInt(500) + 50;
    int countLike =  random.nextInt(500) + 50;
    Card card = new Card();
    card.setTitle(services.get(i).getTitle());
    card.setArea1(services.get(i).getArea1());
    card.setArea2(services.get(i).getArea2());
    card.setPoom(services.get(i).getPoom());
    card.setScoreTotal(score);
    card.setCountScore(countScore);
    card.setCountLike(countLike);
    card.setTags(String.join(" ", tagNames).replace("[", "").replace("]", ""));
    card.setPhotos(photos);
    cards.add(card);
  }


  json = om.writeValueAsString(cards);
%>

<%=json%>