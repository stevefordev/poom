<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="com.coddington.poom.dao.TagsDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.coddington.poom.vo.Tag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");
  ObjectMapper om = new ObjectMapper();
  String json = "";

  String isEqual = request.getParameter("isEqual");

  //태그를 검색하고 없으면 insert 후 tagId 리턴
  if (isEqual != null && Integer.parseInt(isEqual) == 1) {
    String name = request.getParameter("name");
    Tag tag = TagsDAO.selectByName(name);

    if (tag == null) {
      tag = new Tag();
      tag.setName(name);
      TagsDAO.insert(tag);
    }
    json = om.writeValueAsString(tag);

  } else {
    // like 검색으로 자동 완성 리스트 리턴
    String name = request.getParameter("term");
    List<Tag> tags = TagsDAO.selectListLikeName(name);
    json = om.writeValueAsString(tags);
  }
%>

<%=json%>