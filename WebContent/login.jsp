<%@page import="com.coddington.poom.dao.UsersDAO"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Date"%>
<%@page import="com.coddington.poom.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String url = request.getHeader("referer");
	System.out.println(url);
	
	String email = request.getParameter("email");
	String password = request.getParameter("password");

	User user = new User();
	user.setEmail(email);
	user.setPassword(password);

	System.out.print(user.toString());
	
	User loginUser = UsersDAO.selectLogin(user);

	if (loginUser != null) {
		System.out.println("set attri");
		session.setAttribute(User.LOGIN_USER, loginUser);		
	} else {
		System.out.println("set attri error");
		session.setAttribute(User.LOGIN_ERROR_MESSAGE, "이메일이나 비밀번호가 틀렸습니다.");
	}

	//String redirectPage = "index.jsp";
	response.sendRedirect(url);
%>