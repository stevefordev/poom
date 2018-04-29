<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
  String userNoStr = request.getParameter("userNo");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>템플릿</title>
<%@ include file="WEB-INF/templates/link.jsp"%>
<link rel="stylesheet" href="css/profile_following.css">
<link rel="stylesheet"
	href="css/card_giver_level_second.css?date=201804191" />
<link rel="stylesheet" href="css/card_taker_level_second.css" />
<link rel="stylesheet" href="css/slick/slick.css?date=201804191" />
<link rel="stylesheet" href="css/slick/slick-theme.css" />
<link rel="stylesheet" href="css/profile.css?data=201804191" />

<style>
</style>
</head>
<body>
	<%@ include file="WEB-INF/templates/header.jsp"%>
	<div id="profilePicBox" class="profile_content">
		<!--프로필상자 전체박스-->
		<div id="profilePic">
			<!--프로필 사진과 수정버튼 닉네임을 감싸는 박스-->
			<div id="pic"></div>
			<label class="fas fa-cog"> <input type="file" id="picEdit"
				name="picEdit"></label>
			<div id="profileNickname" class="on">품생품사</div>
			<input name="nickname" maxlength="4" id="nicknameEditInput" autofocus
				type="text">
			<button id="nicknameEdit" class="edit_btn">
				<i class="fas fa-edit"></i>
			</button>
		</div>
		<!--자기소개 박스-->
		<div id="introduceText" class="on"></div>
		<form method="get" action="">
			<textarea autofocus id="introduceEditInput"></textarea>
		</form>
		<!--자기소개글 수정버튼-->
		<button id="introduceEdit" class="edit_btn">
			<i class="fas fa-edit"></i>
		</button>
		<!--<button id="introduceInput" class="input_btn">수정</button>-->
		<!--차단 or 팔로우버튼 박스-->
		<div id="followBox">
			<button id="follow">팔로우</button>
			<button id="block" class="on">차단</button>
		</div>
	</div>
	<div class="profile_content">
		<div id="profileStatus">
			<!--해당 프로필유저의 계약과 관련한 내용이 들어있는 박스-->
			<ul id="score">
				<li>총 평점</li>
				<li class="emphasisContent">86%(23)</li>
			</ul>
			<ul id="contractNum">
				<li class="emphasisContent">계약 건수 100건</li>
				<li>준 품 60</li>
				<li>받은 품 40</li>
			</ul>
			<ul id="reviewNum">
				<li class="emphasisContent">리뷰 300개</li>
				<li>Giver 200</li>
				<li>Taker 100</li>
			</ul>
		</div>
		<div id="profileContent">
			<div id="profileMenu" class="">
				<ul class="tab_exchange">
					<li><a href="">작성글</a></li>
					<li><a href="">팔로잉</a></li>
				</ul>
				<div id="myWritingBox" class="">
					<ul class="tab_service">
						<li><a href=""> 준 품</a></li>
						<li><a href=""> 받은 품</a></li>
					</ul>
					<h4 class="screen_out">내가 준 품 목록</h4>

					<div class="list_giver_pay">
						<div class="pay_contents">
 							<ul>
 							</ul>
						</div>
						<!--pay_contents -->
					</div>
					<!--list_giver_pay -->
					<h4 class="screen_out">내가 받은 품 목록</h4>

					<div class="list_taker_pay">

						<div class="pay_contents">
							<ul>
 							</ul>							    
						</div>
						<!--pay_contents -->
					</div>
					<!--list_taker_pay -->
				</div>
				<!--myWritingBox  -->
				<div id="followingBox">
					<h4 class="screen_out">팔로우 목록</h4>
					<!--팔로잉 부분 요소입니다-->
					<ul class="list_follow">
						<li class="item_user"><a href=""><img
								src="img/profile/yuna.jpg" /> <span>윤아윤아윤아</span> </a> <i
							class="fas fa-times-circle"></i></li>
						<li class="item_user"><a href=""><img
								src="img/profile/guhyeonbag.jpg" /> <span>박구현</span></a> <i
							class="fas fa-times-circle"></i></li>
						<li class="item_user"><a href=""><img
								src="img/profile/junhyeonggim.jpg" /> <span>김준형</span></a> <i
							class="fas fa-times-circle"></i></li>
						<li class="item_user"><a href=""><img
								src="img/profile/lyundong-an.jpg" /> <span>안륜동</span></a> <i
							class="fas fa-times-circle"></i></li>
						<li class="item_user"><a href=""><img
								src="img/profile/yuna.jpg" /> <span>윤아</span></a> <i
							class="fas fa-times-circle"></i></li>
						<li class="item_user"><a href=""><img
								src="img/profile/guhyeonbag.jpg" /> <span>박구현</span></a> <i
							class="fas fa-times-circle"></i></li>
						<li class="item_user"><a href=""><img
								src="img/profile/junhyeonggim.jpg" /> <span>김준형</span></a> <i
							class="fas fa-times-circle"></i></li>
						<li class="item_user"><a href=""><img
								src="img/profile/lyundong-an.jpg" /> <span>안륜동</span></a> <i
							class="fas fa-times-circle"></i></li>
						<li class="item_user"><a href=""><img
								src="img/profile/lyundong-an.jpg" /> <span>안륜동</span></a> <i
							class="fas fa-times-circle"></i></li>

					</ul>
				</div>
				<!--followingBox -->
			</div>
			<!--profileMenu -->
		</div>
		<!-- profileContent-->
	</div>
	<!--profile_content -->

	<%@ include file="WEB-INF/templates/footer.jsp"%>
	<%@ include file="WEB-INF/templates/card_level_second.jsp"%>
	<%@ include file="WEB-INF/templates/js.jsp"%>
	<script src="js/card_giver_level_second.js"></script>
	<script src="js/card_taker_level_second.js"></script>
	<script src="js/slick/slick.min.js"></script>
	<script src="js/slick/slick_helper.js?date=201804291"></script>
	<script src="js/card_util.js?date=201804283"></script>
	<script src="js/profile.js"></script>
	<script>
    //카드 리스트 호출
    cardUtil.dataset = {
      "level": 2,
      "count": 5,
      "pageNum": 1
    };
    cardUtil.getCardList("ajax/contractCardList.json",
            $(".list_giver_pay ul"), '.profileserviceimg_wrap');
 
  </script>

</body>
</html>