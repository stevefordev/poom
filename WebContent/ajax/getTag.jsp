<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="com.coddington.poom.dao.TagsDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.coddington.poom.vo.Tag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");
  String name = request.getParameter("term");
  System.out.println(name);
  List<Tag> tags = TagsDAO.selectListByName(name);

  ObjectMapper om = new ObjectMapper();

  String json = om.writeValueAsString(tags);
  System.out.println(json);
%>

<%=json%>