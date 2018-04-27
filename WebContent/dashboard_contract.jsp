<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계약 대시보드</title>
<%@ include file="WEB-INF/templates/link.jsp"%>
<link rel="stylesheet" href="css/dashboard_template.css" />
<link rel="stylesheet" href="css/dashboard_contracts.css" />
<link rel="stylesheet" href="css/slick/slick.css" />
<link rel="stylesheet" href="css/slick/slick-theme.css" />
<link rel="stylesheet" href="css/second_level_giver_card.css" />
<link rel="stylesheet" href="css/second_level_taker_card.css" />
<link rel="stylesheet" href="css/popup_detailcontract.css" />
<link rel="stylesheet" href="css/popup_contract_progressive.css" />
<link rel="stylesheet" href="css/score_taker.css" />
<link rel="stylesheet" href="css/score_giver.css" />
<style>
</style>
</head>
<body>
	<%@ include file="WEB-INF/templates/header.jsp"%>

	<%@ include file="WEB-INF/templates/dashboard_template.jsp"%>
	<div class="popup_bg">
		<div id="detailContractPopup">
			<dl>
				<dt>품 주는사람</dt>
				<dd>
					<div id="detailContractProfileImg"></div>
					<a id="giverName" href="">김 범</a>
				</dd>
				<dt>품 받는사람</dt>
				<dd>
					<div id="detailContractProfileImg2"></div>
					<a id="takerName" href="">오연서</a>
				</dd>
				<dt>지 역</dt>
				<dd>
					<div id="area">
						<span>서울시</span><span> 관악구</span>
					</div>
				</dd>
				<dt>일 정</dt>
				<dd>
					<div id="calendar">
						2018-03-18
						<div>오후 3-4시</div>
					</div>
				</dd>
				<dt>가 격</dt>
				<dd>
					<div id="price">
						<span id="coin">90</span>코인( <span>30품X3시간</span> )
					</div>
				</dd>
				<dt>할 말</dt>
				<dd>
					<div id="comment">
						잘할 수 있습니다.
						<p>꼭 수락해주세요.</p>
					</div>
				</dd>
			</dl>
			<button id="detailokBtn">수락</button>
			<button id="detailnoBtn">거절</button>
		</div>
	</div>
	<div class="popup containerContractProgressive">
		<div id="containerContractProgressive">
			<ul class="progressbar">
				<li class="active"></li>
				<li class="active"></li>
				<li>(2회 / 3회)</li>
			</ul>
			<div style="clear: both"></div>
			<dl>
				<dt class="user giver on">품 준 사람</dt>
				<dd class="user giver">
					<img src="img/woosung.png" class="profile" /> <span>넬준 (나)</span>
				</dd>
				<dt class="user taker on">품 받은 사람</dt>
				<dd class="user taker">
					<img src="img/woosung.png" class="profile" /> <span>쿵쿵</span>
				</dd>
				<dt class="info region">넬준</dt>
				<dd class="info region">
					<div>
						<span>서울시 관악구 봉천동 123-111번지</span>
					</div>
					<div>
						<span>105호</span>
					</div>
				</dd>
				<dt class="info schedule">일정</dt>
				<dd class="info schedule">
					<div>
						<span>2018-03-18 / 16-17시</span>
					</div>
					<div>
						<span>2018-03-18 / 16-17시</span>
					</div>
					<div>
						<span>2018-03-18 / 16-17시</span>
					</div>
				</dd>
				<dt class="info price">가격</dt>
				<dd class="info price">
					<span>90 코인 (30 품 X 3시간)</span>
				</dd>
				<dt class="info msg">할말</dt>
				<dd class="info msg">
					<p>잘할 수 있습니다. 꼭 수락해주세요. 감사합니다</p>
				</dd>
			</dl>
			<div class="btn_group">
				<button>신고하기</button>
				<button>계약 중지</button>
				<button class="score">평점 남기기</button>
			</div>
		</div>
	</div>

	<div class="popup scoreByGiver">
		<div id="scoreByGiver">
			<form action="" id="scoreByGiverRegisterForm">
				<input type="hidden" name="" />

				<div class="score">

					<div>
						<span>평점</span>
					</div>
					<div class="score_good check"></div>
					<div class="score_bad check"></div>
				</div>
				<div class="photo_register">
					<div>
						<label for="servicePhotoInput">사진등록</label> <input
							id="servicePhotoInput" type="file"> <span>사진등록까지
							해야 입금이 완료됩니다.</span>
					</div>
					<div class="photo">
						<canvas id="canvas" width="360" height="360"></canvas>
					</div>
				</div>
				<div class="btn_group">
					<input type="submit" value="등록"> <input type="button"
						class="cancel" value="취소">
				</div>
			</form>
		</div>
	</div>
	<div class="popup scoreByTaker">
		<div id="scoreByTaker">
			<form action="" id="scoreByTakerRegisterForm">
				<input type="hidden" name="" />
				<dl>
					<dt class="score">
						<span>평점</span>
					</dt>
					<dd class="score">
						<div class="price">
							<div>가격</div>
							<label for='scoreGoodPrice' class="good"></label> <input
								id='scoreGoodPrice' data-score='good' type="radio" name="score1"
								checked> <label for='scoreBadPrice' class="bad"></label>
							<input id='scoreBadPrice' data-score='bad' type="radio"
								name="score1">
						</div>
						<div class="kind">
							<div>친절</div>
							<label for='scoreGoodKind' class="good"></label> <input
								id='scoreGoodKind' data-score='good' type="radio" name="score1"
								checked> <label for='scoreBadKind' class="bad"></label>
							<input id='scoreBadKind' data-score='bad' type="radio"
								name="score1">
						</div>
						<div class="know_how">
							<div>숙련</div>
							<label for='scoreGoodKnowHow' class="good"></label> <input
								id='scoreGoodKnowHow' data-score='good' type="radio"
								name="score1" checked> <label for='scoreBadKnowHow'
								class="bad"></label> <input id='scoreBadKnowHow'
								data-score='bad' type="radio" name="score1">
						</div>
						<div class="honest">
							<div>성실</div>
							<label for='scoreGoodHonest' class="good"></label> <input
								id='scoreGoodHonest' data-score='good' type="radio"
								name="score1" checked> <label for='scoreBadHonest'
								class="bad"></label> <input id='scoreBadHonest' data-score='bad'
								type="radio" name="score1">
						</div>
					</dd>
					</dt>
					<div class="review">
						<dt>리뷰</dt>
						<dd>
							<textarea name="" maxlength="100"></textarea>
						</dd>
					</div>
					<div class="btn_group">
						<input type="submit" value="등록"> <input type="button"
							class="cancel" value="취소">
					</div>
				</dl>
			</form>
		</div>
	</div>

	<div class="wrap_dashboard">
		<div class="top_tab">
			<ul>
				<li class="on" data-status="contractWait">대기 중인 계약</li>
				<li data-status="contractProgress">진행 중인 계약</li>
				<li data-status="contractDone">완료된 계약</li>
			</ul>
		</div>
		<div class="box_contract on" id="contractWait">
			<div class="box_content">
				<div class="box_btn_service">
					<button class="btn_service btn_myservice on">등록한 서비스</button>
					<button class="btn_service btn_otherservice">계약서 보낸 서비스</button>
				</div>
				<div class="contract_service">
					<ul class="contract_myservice on">
						<li>
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
								<a href="">
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
										<div class="profile_name">서강준</div>
									</div> <!--//.service_inform-->
								</a>
								<button class="btn_contract_list">계약 목록</button>
							</div> <!--//.profile_card-->
							<ul class="contract_list">

							</ul>
						</li>
						<li>
							<div class="taker_profile_card">
								<div class="taker_box">
									<div class="box_heart">
										<i class="far fa-heart on"></i> <span class="heart_count">26</span>
									</div>
									<div class="taker_img"></div>
									<div class="taker_name">서강준</div>
								</div>
								<!--//.taker_box-->
								<a href="">
									<div class="taker_service_inform">
										<ul>
											<li>주중, 주말 집 청소 해 줄 사람 구합니다. 전문적이고, 주기적으로 가능하신 분!</li>
											<li><span class="icon_small sun"></span> 78%(21) | 서울
												마포, 강남, 목동</li>
											<li>2018-04-28 오후 6-7시 외 5개 일정</li>
											<li>진행중인 계약 6건 | 완료된 계약 21건</li>
											<li>#커튼빨래 #집청소 #이불빨래</li>
											<li>30품</li>
										</ul>
									</div> <!--//.taker_service_inform-->
								</a>
								<button class="btn_contract_list">계약 목록</button>
							</div> <!--//.taker_profile_card-->
							<ul class="contract_list">

							</ul>
						</li>
					</ul>
					<ul class="contract_otherservice">
						<li>
							<div class="taker_profile_card">
								<div class="taker_box">
									<div class="box_heart">
										<i class="far fa-heart on"></i> <span class="heart_count">26</span>
									</div>
									<div class="taker_img"></div>
									<div class="taker_name">서강준</div>
								</div>
								<!--//.taker_box-->
								<a href="">
									<div class="taker_service_inform">
										<ul>
											<li>주중, 주말 집 청소 해 줄 사람 구합니다. 전문적이고, 주기적으로 가능하신 분!</li>
											<li><span class="icon_small sun"></span> 78%(21) | 서울
												마포, 강남, 목동</li>
											<li>2018-04-28 오후 6-7시 외 5개 일정</li>
											<li>진행중인 계약 6건 | 완료된 계약 21건</li>
											<li>#커튼빨래 #집청소 #이불빨래</li>
											<li>30품</li>
										</ul>
									</div> <!--//.taker_service_inform-->
								</a>
								<button class="btn_contract_list">계약 목록</button>
							</div> <!--//.taker_profile_card-->
							<ul class="contract_list">

							</ul>
						</li>
						<li>
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
								<a href="">
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
										<div class="profile_name">서강준</div>
									</div> <!--//.service_inform-->
								</a>
								<button class="btn_contract_list">계약 목록</button>
							</div> <!--//.profile_card-->
							<ul class="contract_list">

							</ul>
						</li>


					</ul>
				</div>
			</div>
			<!-- //.box_content  -->
		</div>
		<!-- //#contractWait  -->
		<div class="box_contract" id="contractProgress">
			<div class="box_content">
				<div class="box_btn_service">
					<button class="btn_service btn_myservice on">등록한 서비스</button>
					<button class="btn_service btn_otherservice">계약서 보낸 서비스</button>
				</div>
				<div class="contract_service">
					<ul class="contract_myservice on">
						<li>
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
								<a href="">
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
										<div class="profile_name">서강준</div>
									</div> <!--//.service_inform-->
								</a>
								<button class="btn_contract_list">계약 목록</button>
							</div> <!--//.profile_card-->
							<ul class="contract_list">

							</ul>
						</li>
						<li>
							<div class="taker_profile_card">
								<div class="taker_box">
									<div class="box_heart">
										<i class="far fa-heart on"></i> <span class="heart_count">26</span>
									</div>
									<div class="taker_img"></div>
									<div class="taker_name">서강준</div>
								</div>
								<!--//.taker_box-->
								<a href="">
									<div class="taker_service_inform">
										<ul>
											<li>주중, 주말 집 청소 해 줄 사람 구합니다. 전문적이고, 주기적으로 가능하신 분!</li>
											<li><span class="icon_small sun"></span> 78%(21) | 서울
												마포, 강남, 목동</li>
											<li>2018-04-28 오후 6-7시 외 5개 일정</li>
											<li>진행중인 계약 6건 | 완료된 계약 21건</li>
											<li>#커튼빨래 #집청소 #이불빨래</li>
											<li>30품</li>
										</ul>
									</div> <!--//.taker_service_inform-->
								</a>
								<button class="btn_contract_list">계약 목록</button>
							</div> <!--//.taker_profile_card-->
							<ul class="contract_list">

							</ul>
						</li>
					</ul>
					<ul class="contract_otherservice">
						<li>
							<div class="taker_profile_card">
								<div class="taker_box">
									<div class="box_heart">
										<i class="far fa-heart on"></i> <span class="heart_count">26</span>
									</div>
									<div class="taker_img"></div>
									<div class="taker_name">서강준</div>
								</div>
								<!--//.taker_box-->
								<a href="">
									<div class="taker_service_inform">
										<ul>
											<li>주중, 주말 집 청소 해 줄 사람 구합니다. 전문적이고, 주기적으로 가능하신 분!</li>
											<li><span class="icon_small sun"></span> 78%(21) | 서울
												마포, 강남, 목동</li>
											<li>2018-04-28 오후 6-7시 외 5개 일정</li>
											<li>진행중인 계약 6건 | 완료된 계약 21건</li>
											<li>#커튼빨래 #집청소 #이불빨래</li>
											<li>30품</li>
										</ul>
									</div> <!--//.taker_service_inform-->
								</a>
								<button class="btn_contract_list">계약 목록</button>
							</div> <!--//.taker_profile_card-->
							<ul class="contract_list">

							</ul>
						</li>
						<li>
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
								<a href="">
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
										<div class="profile_name">서강준</div>
									</div> <!--//.service_inform-->
								</a>
								<button class="btn_contract_list">계약 목록</button>
							</div> <!--//.profile_card-->
							<ul class="contract_list">

							</ul>
						</li>
					</ul>
				</div>
			</div>
			<!-- //.box_content  -->
		</div>
		<!-- //#contractProgress  -->
		<div class="box_contract" id="contractDone">
			<div class="box_content">
				<div class="box_btn_service">
					<button class="btn_service btn_myservice on">등록한 서비스</button>
					<button class="btn_service btn_otherservice">계약서 보낸 서비스</button>
				</div>
				<div class="contract_service">
					<ul class="contract_myservice on">
						<li>
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
								<a href="">
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
										<div class="profile_name">서강준</div>
									</div> <!--//.service_inform-->
								</a>
								<button class="btn_contract_list">계약 목록</button>
							</div> <!--//.profile_card-->
							<ul class="contract_list">

							</ul>
						</li>
						<li>
							<div class="taker_profile_card">
								<div class="taker_box">
									<div class="box_heart">
										<i class="far fa-heart on"></i> <span class="heart_count">26</span>
									</div>
									<div class="taker_img"></div>
									<div class="taker_name">서강준</div>
								</div>
								<!--//.taker_box-->
								<a href="">
									<div class="taker_service_inform">
										<ul>
											<li>주중, 주말 집 청소 해 줄 사람 구합니다. 전문적이고, 주기적으로 가능하신 분!</li>
											<li><span class="icon_small sun"></span> 78%(21) | 서울
												마포, 강남, 목동</li>
											<li>2018-04-28 오후 6-7시 외 5개 일정</li>
											<li>진행중인 계약 6건 | 완료된 계약 21건</li>
											<li>#커튼빨래 #집청소 #이불빨래</li>
											<li>30품</li>
										</ul>
									</div> <!--//.taker_service_inform-->
								</a>
								<button class="btn_contract_list">계약 목록</button>
							</div> <!--//.taker_profile_card-->
							<ul class="contract_list">

							</ul>
						</li>
					</ul>
					<ul class="contract_otherservice">
						<li>
							<div class="taker_profile_card">
								<div class="taker_box">
									<div class="box_heart">
										<i class="far fa-heart on"></i> <span class="heart_count">26</span>
									</div>
									<div class="taker_img"></div>
									<div class="taker_name">서강준</div>
								</div>
								<!--//.taker_box-->
								<a href="">
									<div class="taker_service_inform">
										<ul>
											<li>주중, 주말 집 청소 해 줄 사람 구합니다. 전문적이고, 주기적으로 가능하신 분!</li>
											<li><span class="icon_small sun"></span> 78%(21) | 서울
												마포, 강남, 목동</li>
											<li>2018-04-28 오후 6-7시 외 5개 일정</li>
											<li>진행중인 계약 6건 | 완료된 계약 21건</li>
											<li>#커튼빨래 #집청소 #이불빨래</li>
											<li>30품</li>
										</ul>
									</div> <!--//.taker_service_inform-->
								</a>
								<button class="btn_contract_list">계약 목록</button>
							</div> <!--//.taker_profile_card-->
							<ul class="contract_list">

							</ul>
						</li>
						<li>
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
								<a href="">
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
										<div class="profile_name">서강준</div>
									</div> <!--//.service_inform-->
								</a>
								<button class="btn_contract_list">계약 목록</button>
							</div> <!--//.profile_card-->
							<ul class="contract_list">

							</ul>
						</li>
					</ul>
				</div>
				<!-- //.contract_service -->
			</div>
			<!-- //.box_content  -->
		</div>
		<!-- //#contractDone  -->
	</div>

	<script type="text/template" id="contractListTmpl1">

	<li>
		<div class="contract_img"></div>
		<span>아이유</span>
    	<div class="box_schedule">2018-03-17 <p>오후 5-6시 외 72개</p></div>
	    <strong>30품</strong>
	    <button class="btn_contract btn_contract_accept">수락</button>
        <button class="btn_contract btn_contract_reject">거절</button>
        <button class="btn_contract btn_contract_detail">상세</button>
 	</li>
	<li>
		<div class="contract_img"></div>
		<span>아이유</span>
    	<div class="box_schedule">2018-03-17 <p>오후 5-6시 외 72개</p></div>
	    <strong>30품</strong>
	    <button class="btn_contract btn_contract_accept">수락</button>
        <button class="btn_contract btn_contract_reject">거절</button>
        <button class="btn_contract btn_contract_detail">상세</button>
 	</li>
	<li>
		<div class="contract_img"></div>
		<span>아이유</span>
    	<div class="box_schedule">2018-03-17 <p>오후 5-6시 외 72개</p></div>
	    <strong>30품</strong>
	    <button class="btn_contract btn_contract_accept">수락</button>
        <button class="btn_contract btn_contract_reject">거절</button>
        <button class="btn_contract btn_contract_detail">상세</button>
 	</li>

</script>

	<script type="text/template" id="contractListTmpl2">
	<li>
		<div class="contract_img"></div>
		<span>아이유</span>
    	<div class="box_schedule">2018-03-17 <p>오후 5-6시 외 72개</p></div>
	    <strong>30품</strong>
        <button class="btn_contract btn_contract_cancel">취소</button>
        <button class="btn_contract btn_contract_detail">상세</button>
 	</li>
	<li>
		<div class="contract_img"></div>
		<span>아이유</span>
    	<div class="box_schedule">2018-03-17 <p>오후 5-6시 외 72개</p></div>
	    <strong>30품</strong>
        <button class="btn_contract btn_contract_cancel">취소</button>
        <button class="btn_contract btn_contract_detail">상세</button>
 	</li>
</script>

	<script type="text/template" id="contractListTmpl3">
	<li>
		<div class="contract_img"></div>
		<span>아이유</span>
    	<div class="box_schedule">2018-03-17 <p>오후 5-6시 외 72개</p></div>
	    <strong>30품</strong>
        <button class="btn_contract btn_contract_detail">상세</button>
 	</li>
</script>

	<%@ include file="WEB-INF/templates/footer.jsp"%>
	<%@ include file="WEB-INF/templates/js.jsp"%>
	<script src="js/dashboard_template.js"></script>
	<script src="js/second_level_giver_card.js"></script>
	<script src="js/second_level_taker_card.js"></script>
	<script src="js/popup_contract_progressive.js"></script>
	<script src="js/score_giver.js"></script>
	<script src="js/score_taker.js"></script>
	<script src="js/slick/slick.min.js"></script>
	<script src="js/slick/slick_common.js"></script>
	<script src="js/dashboard_contracts.js?date=201804193"></script>
	<script>
		// 이미지 슬라이드 표현 (slick_common.js)
					// 해당 탭 활성화 시 해당 탭의 giver 카드 slick 작동
			slickUtil.createImageCards(
					$('.box_contract.on .profileserviceimg_wrap'), 1);
	</script>
</body>
</html>