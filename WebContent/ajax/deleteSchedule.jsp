<%@page import="com.fasterxml.jackson.databind.node.ObjectNode"%>
<%@page
	import="com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="com.coddington.poom.dao.ContractSchedulesDAO"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.coddington.poom.dao.SchedulesDAO"%>
<%@page import="com.coddington.poom.vo.Schedule"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
  String serviceNoStr = request.getParameter("serviceNo");
  int serviceNo = Integer.parseInt(serviceNoStr);
  String serviceDay = request.getParameter("serviceDay");
  String serviceDateStr = request.getParameter("serviceDate");

  Timestamp serviceDate = new Timestamp(Long.parseLong(serviceDateStr));

  boolean isHaveContract = false;

  List<Schedule> schedules = SchedulesDAO.selectListByServiceNo(serviceNo);

  for (Schedule schedule : schedules) {
    System.out.println(schedule.toString());
    System.out.println(schedule.getServiceDate());
    System.out.println(serviceDate);

    // 반복일정이든 단일일정이든 해당되는 날짜가 있으면 해당 날짜에 계약서가 존재하는지 확인한다
    if ((!serviceDay.isEmpty() && schedule.getServiceDay().equals(serviceDay))
        || schedule.getServiceDate().compareTo(serviceDate) == 0) {
      System.out.println(serviceNo);
		
      // 받은 계약서가 하나도 없으면 스케줄 삭제
      if (ContractSchedulesDAO.selectCountByServiceNo(serviceNo) > 0) {
        isHaveContract = true;
      } else {
			SchedulesDAO.delete(schedule.getNo());
      }
    }
  }
  ObjectMapper om = new ObjectMapper();

  ObjectNode o = om.createObjectNode();
  o.put("isHaveContract", isHaveContract);
  String json = om.writeValueAsString(o);
%>
<%=json%>