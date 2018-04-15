<%@page import="com.coddington.poom.dao.UsersDAO"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Date"%>
<%@page import="com.coddington.poom.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String phoneNum = request.getParameter("phoneNum");
	String nickname = request.getParameter("nickname");
	String email = request.getParameter("email");
	String password = request.getParameter("password");

	User user = new User(email, password, name, nickname, phoneNum, "", "", 0,
			new Date(Calendar.getInstance().getTime().getTime()));

	UsersDAO.insert(user);

	String redirectPage = "index.jsp";
	response.sendRedirect(redirectPage);
%>