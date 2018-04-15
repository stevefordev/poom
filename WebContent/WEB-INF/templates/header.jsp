<%@page import="com.coddington.poom.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	User loginUser = (User) session.getAttribute(User.LOGIN_USER);
%>
<div id="header">
	<div class="logo">
		<a href="intro.jsp"> <img src="img/poom_logo.png">
		</a>
	</div>
	<div class="search">
		<form action="search.jsp" method="get" id="searchForm">
			<input type="text" name="query" class="search" placeholder="검색" /><i
				class="fas fa-search fa-2x"></i><input class="submit" type="submit" />
		</form>
	</div>
	<div id="loginBox" class="on">
		<div class="bell link">
			<i class="fas fa-bell fa-1x"></i>
			<article class="cRecentList news">
				<header>
					<h1>새소식</h1>
				</header>
				<div class="main _newsRegion">
					<ul data-viewname="DNewsListView" class="news_list">

					</ul>
				</div>
			</article>
		</div>
		<a href="registerForm.jsp">품 요청/등록</a> <a href="">내프로필</a> <a href=""
			class="mypage"> <img src="<%=loginUser.getPhotoUrl()%>"
			class="profile" onerror="this.src='img/profile/profile_img.png'" />
			<span><%=loginUser.getNickName()%><i class="fas fa-angle-down"></i></span>
		</a>

		<ul class="mypage_drop">
			<li><a href="#">계약</a></li>
			<li><a href="#">코인</a></li>
			<li><a href="#">찜목록</a></li>
			<li><a href="#">차단 목록</a></li>
			<li><a href="logout.jsp">로그아웃</a></li>
		</ul>
	</div>
</div>
<div id="content">