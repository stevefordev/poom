<%@page import="java.util.Map"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="java.io.InputStream"%>
<%@page import="com.coddington.poom.util.DummyUtil"%>
<%@page import="com.coddington.poom.dao.ContractSchedulesDAO"%>
<%@page import="com.coddington.poom.dao.UsersDAO"%>
<%@page import="com.coddington.poom.vo.User"%>
<%@page import="com.coddington.poom.util.ScheduleUtil"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.coddington.poom.dao.SchedulesDAO"%>
<%@page import="com.coddington.poom.vo.Schedule"%>
<%@page import="com.coddington.poom.vo.Contract"%>
<%@page import="java.util.List"%>
<%@page import="com.coddington.poom.dao.ContractsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	InputStream is = getServletContext().getResourceAsStream("/WEB-INF/etc/theLittlePrince.txt");
	InputStream inputSigungu = getServletContext().getResourceAsStream("/WEB-INF/etc/sigungu.json");
	ObjectMapper mapper = new ObjectMapper();
	//Map<String, Object> jsonMap = mapper.readValue(inputSigungu, Map.class);

	//DummyUtil.contractSchedule();
	//DummyUtil.coinTransaction();

	//DummyUtil.review(is);
	//DummyUtil.question(is);

	//DummyUtil.contractForTaker(is, null);

	int[] serviceNoList = { 6, 10, 17, 18 };
	int idx = 266;
	for (int i : serviceNoList) {
		idx = DummyUtil.contractSchedule(i,idx);
	}
%>

