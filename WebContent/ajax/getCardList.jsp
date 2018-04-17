<%@page import="java.util.ArrayList"%>
<%@page import="com.coddington.poom.vo.Card"%>
<%@page import="com.coddington.poom.dao.ServicesDAO"%>
<%@page import="com.coddington.poom.vo.Service"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="com.coddington.poom.dao.TagsDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.coddington.poom.vo.Tag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");
  String step = request.getParameter("step");

  ObjectMapper om = new ObjectMapper();
  String json = "";

  List<Card> cards = new ArrayList<Card>();
  List<Service> services = ServicesDAO.selectListAll();

  for (int i = 0; i < 6; i++) {
    List<Tag> tags = TagsDAO.selectListByServiceNo(services.get(i).getNo());


    List<String> tagNames = new ArrayList();
    for (Tag tag : tags) {
      tagNames.add("#" + tag.getName());
    }

    Card card = new Card();
    card.setTitle(services.get(i).getTitle());
    card.setArea1(services.get(i).getArea1());
    card.setArea2(services.get(i).getArea2());
    card.setPoom(services.get(i).getPoom());
    card.setTags(String.join(" ", tagNames).replace("[", "").replace("]", ""));
    cards.add(card);
  }


  json = om.writeValueAsString(cards);
%>

<%=json%>