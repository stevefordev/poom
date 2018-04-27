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
<link rel="stylesheet" href="css/second_level_giver_card.css?date=201804191" />
<link rel="stylesheet" href="css/second_level_taker_card.css" />
<link rel="stylesheet" type="text/css"
	href="css/slick/slick.css?date=201804191" />
<link rel="stylesheet" type="text/css" href="css/slick/slick-theme.css" />
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

							<div class="profile_card">
								<div class="profileserviceimg_box">
									<div class="box_heart">
										<i class="far fa-heart on"></i> <span class="heart_count">26</span>
									</div>
									<button class="left_cursor cursor">
										<i class="fas fa-angle-left"></i>
									</button>
									<button class="right_cursor cursor">
										<i class="fas fa-angle-right"></i>
									</button>

									<div class="profileserviceimg_wrap">
										<div class="profileservice_img">
											<img src="img/serviceimg/lesson1.png">
										</div>
										<div class="profileservice_img">
											<img src="img/serviceimg/lesson2.png">
										</div>
										<div class="profileservice_img">
											<img src="img/serviceimg/lesson3.jpg">
										</div>
									</div>
								</div>
								<!--//.profileserviceimg_box-->
								<a href="giverdetail.jsp">
									<div class="service_inform">
										<ul>
											<li>코딩 과외! HTML, CSS, Javascript, Java, Spring, SQL</li>
											<li><span class="icon_small sun"></span> 78%(21) | 서울
												마포, 신림, 관악, 강남</li>
											<li>2018-04-28 오후 6-7시 외 5개 일정</li>
											<li>진행 중인 계약 6건 | 완료된 계약 21건</li>
											<li>#코딩 #풀스텍 #코딩이너무좋아요</li>
											<li>1230품</li>
										</ul>
										<div class="profile_img"></div>
										<div class="profile_name" href="">서강준</div>
									</div> <!--//.service_inform-->
								</a>
							</div>
							<!--//.profile_card-->
							<div class="profile_card">
								<div class="profileserviceimg_box">
									<div class="box_heart">
										<i class="far fa-heart on"></i> <span class="heart_count">26</span>
									</div>
									<button class="left_cursor cursor">
										<i class="fas fa-angle-left"></i>
									</button>
									<button class="right_cursor cursor">
										<i class="fas fa-angle-right"></i>
									</button>

									<div class="profileserviceimg_wrap">
										<div class="profileservice_img">
											<img src="img/serviceimg/lesson1.png">
										</div>
										<div class="profileservice_img">
											<img src="img/serviceimg/lesson2.png">
										</div>
										<div class="profileservice_img">
											<img src="img/serviceimg/lesson3.jpg">
										</div>
									</div>
								</div>
								<!--//.profileserviceimg_box-->
								<a href="giverdetail.jsp">
									<div class="service_inform">
										<ul>
											<li>코딩 과외! HTML, CSS, Javascript, Java, Spring, SQL</li>
											<li><span class="icon_small sun"></span> 78%(21) | 서울
												마포, 신림, 관악, 강남</li>
											<li>2018-04-28 오후 6-7시 외 5개 일정</li>
											<li>진행 중인 계약 6건 | 완료된 계약 21건</li>
											<li>#코딩 #풀스텍 #코딩이너무좋아요</li>
											<li>1230품</li>
										</ul>
										<div class="profile_img"></div>
										<div class="profile_name" href="">서강준</div>
									</div> <!--//.service_inform-->
								</a>
							</div>
							<!--//.profile_card-->
						</div>
						<!--pay_contents -->
					</div>
					<!--list_giver_pay -->
					<h4 class="screen_out">내가 받은 품 목록</h4>

					<div class="list_taker_pay">

						<div class="pay_contents">
							<div class="taker_profile_card">
								<div class="taker_box">
									<div class="box_heart">
										<i class="far fa-heart on"></i> <span class="heart_count">26</span>
									</div>
									<div class="taker_img"></div>
									<div class="taker_name">서강준</div>
								</div>
								<!--//.taker_box-->
								<a href="takerdetail.jsp">
									<div class="taker_service_inform">
										<ul>
											<li>주중, 주말 집 청소 해 줄 사람 구합니다. 전문적이고 주기적으로 가능하신 분!</li>
											<li><span class="icon_small sun"></span> 78%(21) | 서울
												마포, 강남, 목동</li>
											<li>2018-04-28 오후 6-7시 외 5개 일정</li>
											<li>진행중인 계약 6건 | 완료된 계약 21건</li>
											<li>#커튼빨래 #집청소 #이불빨래</li>
											<li>30품</li>
										</ul>
									</div> <!--//.taker_service_inform-->
								</a>
							</div>
							<!--//.taker_profile_card-->
							<div class="taker_profile_card">
								<div class="taker_box">
									<div class="box_heart">
										<i class="far fa-heart on"></i> <span class="heart_count">26</span>
									</div>
									<div class="taker_img"></div>
									<div class="taker_name">서강준</div>
								</div>
								<!--//.taker_box-->
								<a href="takerdetail.jsp">
									<div class="taker_service_inform">
										<ul>
											<li>주중, 주말 집 청소 해 줄 사람 구합니다. 전문적이고 주기적으로 가능하신 분!</li>
											<li><span class="icon_small sun"></span> 78%(21) | 서울
												마포, 강남, 목동</li>
											<li>2018-04-28 오후 6-7시 외 5개 일정</li>
											<li>진행중인 계약 6건 | 완료된 계약 21건</li>
											<li>#커튼빨래 #집청소 #이불빨래</li>
											<li>30품</li>
										</ul>
									</div> <!--//.taker_service_inform-->
								</a>
							</div>
							<!--//.taker_profile_card-->
							<div class="taker_profile_card">
								<div class="taker_box">
									<div class="box_heart">
										<i class="far fa-heart on"></i> <span class="heart_count">26</span>
									</div>
									<div class="taker_img"></div>
									<div class="taker_name">서강준</div>
								</div>
								<!--//.taker_box-->
								<a href="takerdetail.jsp">
									<div class="taker_service_inform">
										<ul>
											<li>주중, 주말 집 청소 해 줄 사람 구합니다. 전문적이고 주기적으로 가능하신 분!</li>
											<li><span class="icon_small sun"></span> 78%(21) | 서울
												마포, 강남, 목동</li>
											<li>2018-04-28 오후 6-7시 외 5개 일정</li>
											<li>진행중인 계약 6건 | 완료된 계약 21건</li>
											<li>#커튼빨래 #집청소 #이불빨래</li>
											<li>30품</li>
										</ul>
									</div> <!--//.taker_service_inform-->
								</a>
							</div>
							<!--//.taker_profile_card-->
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
	<%@ include file="WEB-INF/templates/js.jsp"%>
	<script src="js/profile_following.js"></script>
	<script src="js/second_level_giver_card.js"></script>
	<script src="js/second_level_taker_card.js"></script>
	<script src="js/profile.js"></script>
	<script type="text/javascript" src="js/slick/slick.min.js"></script>
	<script src="js/slick/slick_common.js"></script>
	<script>
		slickUtil.createImageCards(
				$('.profileserviceimg_wrap'), 1);
	</script>

</body>
</html>