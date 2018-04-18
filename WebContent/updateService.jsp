<%@page import="com.coddington.poom.dao.SchedulesDAO"%>
<%@page import="com.coddington.poom.dao.TagsDAO"%>
<%@page import="com.coddington.poom.dao.ServiceTagsDAO"%>
<%@page import="com.coddington.poom.vo.ServiceTag"%>
<%@page import="com.coddington.poom.vo.Tag"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.fasterxml.jackson.core.type.TypeReference"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="java.util.List"%>
<%@page
	import="com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor"%>
<%@page import="com.coddington.poom.dao.ServicesDAO"%>
<%@page import="com.coddington.poom.vo.User"%>
<%@page import="com.coddington.poom.vo.Service"%>
<%@page import="com.coddington.poom.vo.Schedule"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
  /* 
  area1: 서울
  area2: 관악구
  latitude: 37.48130258426689
  longitude: 126.95285338253898
  scheduleList: [{"type":"single","serviceStartdate":"","serviceDate":"2018-04-17 04:00:00"}]
  photo: edu/1.jpg
  category: edu
  role: g
  title: ssssss
  detailAddress1: 서울 관악구 봉천동 979-1
  detailAddress2: 
  tag: #교육,#수영,#여름
  
  poom: 10
  startDate: 2018-04-17
  contents: <p>asgdfgdfh</p>
  */

  //post방식의 한글처리
  request.setCharacterEncoding("UTF-8");
  String serviceNoStr = request.getParameter("serviceNo");
  String role = request.getParameter("role");
  String title = request.getParameter("title");
  String area1 = request.getParameter("area1");
  String area2 = request.getParameter("area2");
  String detailAddress1 = request.getParameter("detailAddress1");
  String detailAddress2 = request.getParameter("detailAddress2");
  String latitude = request.getParameter("latitude"); // need cut 15
  String longitude = request.getParameter("longitude"); // need cut 15
  String scheduleList = request.getParameter("scheduleList");
  String photo = request.getParameter("photo");
  String category = request.getParameter("category");
  // 
  String[] tags = request.getParameterValues("tags");
  //String tag = request.getParameter("tag"); //remove(#) split (,)
  String poom = request.getParameter("poom");
  String contents = request.getParameter("contents");

  User loginUser = (User) session.getAttribute(User.LOGIN_USER);

  Service service = new Service();
  service.setNo(Integer.parseInt(serviceNoStr));
  service.setUserNo(loginUser.getNo());

  service.setTitle(title);
  service.setRole(role);
  service.setArea1(area1);
  service.setArea2(area2);
  service.setDetailAddress1(detailAddress1);
  service.setDetailAddress2(detailAddress2);
  service.setLatitude(latitude.substring(0, 15));
  service.setLongitude(longitude.substring(0, 15));
  service.setPhotoUrl(photo);
  service.setCategory(category);
  service.setPoom(Integer.parseInt(poom));
  service.setContent(contents);

  System.out.println(service.toString());

  // 서비스 입력
  ServicesDAO.update(service);

  ServiceTagsDAO.deleteByServiceNo(service.getNo());
  // 서비스 태그 입력
  // 태그 입력 당시에 ajax 로  새로 입련된 태그에 대해서 먼저 삽입하고
  // 폼 서브밋 당시에는 태그 no 만 가지고 와서 servicetag 에 정보 삽입
  for (String eachTagId : tags) {

    ServiceTag serviceTag = new ServiceTag();
    serviceTag.setServiceNo(service.getNo());
    serviceTag.setTagNo(Integer.parseInt(eachTagId));
    ServiceTagsDAO.insert(serviceTag);
  }

  // 서비스 일정의 삭제는 수정 페이지에서 실시간 수행
  // 삽입은 ifnotexist 사용
  ObjectMapper mapper = new ObjectMapper();
  List<Schedule> schedules =
      mapper.readValue(scheduleList, new TypeReference<List<Schedule>>() {});

  for (Schedule eachSchedule : schedules) {

    eachSchedule.setServiceNo(service.getNo());
    SchedulesDAO.insertIfNotExists(eachSchedule);
  }

  response.sendRedirect("index.jsp");
%>