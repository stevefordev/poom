<%@page import="com.coddington.poom.dao.SchedulesDAO"%>
<%@page import="com.coddington.poom.vo.Schedule"%>
<%@page import="com.coddington.poom.vo.Contract"%>
<%@page import="java.util.List"%>
<%@page import="com.coddington.poom.dao.ContractsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Contract contract = new Contract();
	contract.setServiceNo(1);
	contract.setStatus(9);
	List<Contract> contractList = ContractsDAO.selectContractList(contract);
	List<Schedule> scheduleList = SchedulesDAO.selectScheduleList(1);

	for (Contract con : contractList) {
		System.out.println(con.toString());
	}
	
	for (Schedule sc : scheduleList) {
		System.out.println(sc.toString());
	}
%>