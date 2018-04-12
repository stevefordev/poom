<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="header">
	<div class="logo">
		<a href="intro.jsp"> <img src="img/poom_logo_2.png">
		</a>
	</div>
	<div class="search">
		<form action="search.jsp" method="get" id="searchForm">
			<input type="text" name="query" class="search" placeholder="검색" /><i
				class="fas fa-search fa-2x"></i><input class="submit" type="submit" />
		</form>
	</div>
	<div class="header_links">
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
		<div class="link">
			<a href="#">품 요청/등록</a>
		</div>
		<div class="link">
			<a href="#">내 프로필</a>
		</div>
		<div class="link mypage">
			<img src="img/woosung.png" class="profile" />
			<div>
				<a>닉넴 </a><i class="fas fa-angle-down"></i>
			</div>

		</div>
		<ul class="mypage_drop">
			<li><a href="#">계약</a></li>
			<li><a href="#">코인</a></li>
			<li><a href="#">찜목록</a></li>
			<li><a href="#">차단 목록</a></li>
			<li><a href="#">로그아웃</a></li>
		</ul>
	</div>
</div>
<div id="content">