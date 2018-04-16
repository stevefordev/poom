<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>원하는 페이지를 찾을 수 없습니다.</title>
<%@ include file="templates/link.jsp"%>
<style>
.aux {
	position: relative;
	width:1200px;
	margin:auto;
}
#content {
	text-align: center;
}

#content a {
	font-size: 22px;
}
</style>
</head>
<body>
	<%@ include file="templates/header.jsp"%>
	<div class="aux">
		<h2>
			죄송합니다.<br /> 요청하신 페이지를 찾을 수 없습니다.
		</h2>
		<a href="index.html">메인 페이지로 이동</a>
	</div>
	</div>
	<div id="footer">
		<div id="policy">
			<h4 class="screen_out">정책 및 약관</h4>
			<ul>
				<li><a href="">회사소개</a></li>
				<!--
	 -->
				<li><a href="">광고</a></li>
				<!--
	 -->
				<li><a href="">검색등록</a></li>
				<!--
	 -->
				<li><a href="">제휴제안</a></li>
				<!--
	 -->
				<li><a href="">이용약관</a></li>
				<!--
	 -->
				<li><a href=""><strong>개인정보이용약관</strong></a></li>
				<!--
	 -->
				<li><a href="">청소년보호정책</a></li>
				<!--
	 -->
				<li><a href="">고객센터</a></li>
			</ul>
		</div>
		<address>
			&copy; 2018 <a href="">coddington.org</a>
		</address>
	</div>
	<!-- footer end -->

</body>
</html>