<%@page import="com.coddington.poom.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	User loginUser = (User) session.getAttribute(User.LOGIN_USER);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>품</title>
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/alert.css" />
<link rel="stylesheet" href="css/fontawesome-all.css" />
<link rel="stylesheet" href="css/notosanskr.css" />
<link rel="stylesheet" href="css/giver_card_step1.css">
<link rel="stylesheet" href="css/login_join_popup.css?a=201804161">
<!--slick 이미지슬라이드 css-->
<link rel="stylesheet" type="text/css" href="css/slick/slick.css" />
<!--Add the new slick-theme.css if you want the default styling-->
<link rel="stylesheet" type="text/css" href="css/slick/slick-theme.css" />
<link rel="stylesheet" href="css/hero_page_footer.css">
<style>
body {
	font-family: "Noto Sans KR", sans-serif;
	background-color: #eef0f3;
}

#heroImage {
	width: 100%;
	height: 600px;
	background-image: url("../img/heroimage/heroImage.jpg");
	background-position: center;
	display: inline-block;
	position: relative;
}

#color {
	position: absolute;
	top: 0px;
	width: 100%;
	height: 600px;
	background-color: rgba(0, 0, 0, 0.5);
}

#heroImageBox #header {
	min-width: 1200px;
	height: 100px;
	background-color: transparent;
	position: relative;
}
/*히어로이미지에 불투명한 어두운 필터를 넣어서 글씨들 잘보일수있게 하려고 박스모델 넣음*/
#logoBox {
	position: relative;
	height: 100px;
}
/*웹사이트 로고와 검색버튼 검색창박스모델*/
#logo {
	color: #FBC02D;
	font-size: 60px;
	font-weight: bolder;
	text-decoration: none;
	position: absolute;
	top: 12px;
	left: 40px;
	display: block;
	width: 80px;
	height: 80px;
}

#logo img {
	width: 80px;
	height: 80px;
}

#searchBtn {
	width: 90px;
	height: 40px;
	background-color: crimson;
	font-weight: bold;
	border-radius: 5px;
	color: white;
	border: none;
	line-height: 40px;
	position: absolute;
	left: 190px;
	top: 45px;
	text-decoration: none;
	font-size: 13px;
	text-align: center;
}

#logoBox input {
	position: absolute;
	width: 300px;
	height: 35px;
	border-radius: 5px 0px 0px 5px;
	/*background-color: darkcyan;*/
	left: 300px;
	top: 45px;
	border: none;
	padding-left: 10px;
}

#logoBox button {
	position: absolute;
	top: 45px;
	left: 610px;
	float: left;
	width: 37px;
	height: 37px;
	line-height: 37px;
	background-color: #d6d6d6;
	color: #595959;
	border: none;
	font-size: 20px;
	border-radius: 0px 5px 5px 0px;
	cursor: pointer;
}

#heroImageBox {
	width: 100%;
	height: 600px;
	position: absolute;
	z-index: 100;
}
/*회원가입 로그인을 묶은 div css*/
#linkBox {
	width: 400px;
	height: 60px;
	position: absolute;
	right: 20px;
	top: 20px;
	background: red;
}

#linkBox>a {
	color: white;
	text-decoration: none;
	width: 60px;
	position: absolute;
}

#linkBox>a:nth-child(1) {
	margin-right: 10px;
	bottom: 8px;
	right: 120px;
}

#linkBox>a:nth-child(2) {
	right: 50px;
	bottom: 8px;
}
/*히어로페이지 문구*/
#heroImageBox p#text {
	position: absolute;
	left: 50px;
	top: 250px;
	color: white;
	font-size: 30px;
	line-height: 40px;
	min-width: 1200px;
}

.emphasis {
	color: #349581;
	font-weight: bold;
}

#header .bell {
	width: 24px;
	color: #f2c641;
	font-size: 20px;
	cursor: pointer;
}

#header .bell>i {
	position: absolute;
	left: 0px;
	bottom: 4px;
}
/*로그인했을시 내프로필과 프로필사진 닉네임이 있는 div*/
#loginBox {
	width: 360px;
	height: 60px;
	height: 60px;
	position: absolute;
	right: 20px;
	top: 20px;
	background: pink;
	position: absolute;
	right: 20px;
	top: 20px;
	background: pink;
}

#loginBox>a {
	display: inline-block;
	color: white;
	text-decoration: none;
	margin-right: 10px;
	height: 22px;
}

#loginBox>a:nth-child(1), #loginBox>a:nth-child(2) {
	margin-top: 40px;
}

#loginBox a div {
	background-image: url("../img/profile/profile_img.png");
	width: 60px;
	height: 61px;
	background-size: contain;
}

#loginBox div {
	display: inline-block;
}

#loginBox>a, #loginBox div, #loginBox span {
	vertical-align: bottom;
}

#loginBox .mypage {
	position: absolute;
	height: 60px;
	width: 156px;
}

#loginBox .mypage .profile {
	width: 60px;
	height: 60px;
	border-radius: 50%;
	position: absolute;
	left: 0px;
	bottom: 0px;
	cursor: pointer;
}

#loginBox .mypage span {
	position: absolute;
	bottom: 0px;
	left: 66px;
	width: 90px;
	height: 22px;
}

/* 마이페이지 드랍 다운 */
#loginBox .mypage_drop:after {
	content: "";
	display: block;
	position: absolute;
	width: 0;
	height: 0;
	top: -12px;
	left: 30px;
	border-color: transparent transparent #424242;
	border-style: solid;
	border-width: 0 12px 12px;
}

#loginBox .mypage_drop {
	position: absolute;
	width: 140px;
	top: 72px;
	left: 240px;
	border-radius: 10px;
	background: #424242;
	text-align: center;
	line-height: 40px;
	font-size: 20px;
	display: none;
	z-index: 999;
}

#loginBox .mypage_drop li {
	color: #fff;
	height: 30px;
	width: 140px;
	cursor: pointer;
	font-size: 16px;
	line-height: 30px;
}

#loginBox .mypage_drop li a {
	text-decoration: none;
	color: white;
	font-weight: normal;
}

#loginBox .mypage_drop li:last-child {
	border-top: 1px solid #5d5d5d;
}

#loginBox .mypage_drop.show {
	display: block;
}

#recomendService {
	width: 100%;
	min-height: 800px;
	/*background-color: #acacac;*/
	margin: auto;
	position: relative;
}

#recomendText {
	width: 1130px;
	height: 60px;
	/*background-color: #2ecc71;*/
	margin: auto;
	line-height: 90px;
	color: #7d7d7d;
	font-size: 20px;
}
/*1단카드들이 들어가는 div*/
#cardBox {
	width: 1200px;
	min-height: 800px;
	margin: auto;
	/*background-color: #4b96e6;*/
	padding: 20px;
}
/*1단카드들이 수평정렬이 되도록 float:left*/
#cardBox .card {
	float: left;
	margin-left: 35px;
	margin-bottom: 35px;
}
</style>
</head>
<body>
	<div id="">
		<div id="heroImage">
			<div id="color"></div>
			<!--히어로이미지에 불투명한 어두운 필터를 넣어서 글씨들 잘보일수있게 하려고 박스모델 넣음-->
			<div id="heroImageBox">
				<div id="header">
					<div id="logoBox">
						<a id="logo" href=""><img src="/img/poom_logo.png"></a> <a
							id="searchBtn" href="">서비스 검색</a>
						<!--목록페이지로 넘어가는 링크-->
						<form method="get" action="main.jsp">
							<input type="text" name="search">
							<button>
								<i class="fas fa-search"></i>
							</button>
							<!--태그검색으로 관련 서비스를 찾을수있게 만든 검색창-->
						</form>
					</div>
					<%
						if (loginUser == null) {
					%>
					<div id="linkBox" class="on">

						<!--giver와 taker들이 서비스 등록, 요청페이지로 넘어갈수있는 링크-->
						<a id="heroJoinBtn" href="">회원가입</a> <a id="heroLoginBtn" href="">로그인</a>
						<!--회원가입 로그인 팝업링크-->
						<div id="popupBackground">
							<!--팝업창 뒷배경-->
							<div id="loginJoinWrap">
								<div id="tabWrap">
									<!--회원가입 로그인 팝업창 2개 탭 div-->
									<div class="tab" id="joinTab">
										<h1>회원가입</h1>
									</div>
									<!-- -->
									<div class="tab on" id="loginTab">
										<!--디스플레이 인라인플록으로 수평정렬을 해서 주석처리로 탭사이 간격을 줄임-->
										<h1>로그인</h1>
									</div>
									<div style="clear: both"></div>
								</div>

								<!--회원가입 입력폼 시작-->
								<div id="joinInput">
									<div id="joinText">
										<h1>"품"에 오신것을 환영해요!</h1>
										<h2>
											회원으로 가입하시면</br> 품의 모든 서비스를 이용하실 수 있습니다
										</h2>
									</div>
									<form id="joinContent" method="post" action="signup.jsp">
										<div class="input_box" id="nameBox">
											<label for="name">이름</label>
											<div class="icon_box">
												<i class="fas fa-user-circle"></i>
											</div>
											<!--인풋박스 옆에 아이콘이 들어가는 박스-->
											<input id="name" autofocus required type="text" name="name"
												placeholder="이름입력" title="이름을 입력해주세요">
											<div class="alert_box" id="nameAlert">
												<span class="msg good">완벽한 이름이네요!</span> <span
													class="msg bad">한글과 영문 대 소문자를 2~15글자 이내로 사용하세요.</span>
											</div>
											<!--유효성검사할때 옳거나 잘못된입력을 했을때 해당하는 문구가 나오는 박스-->
										</div>
										<div class="input_box" id="phoneNumBox">
											<label for="phoneNum">전화번호</label>
											<div class="icon_box">
												<i class="fas fa-phone"></i>
											</div>
											<input id="phoneNum" required type="text" name="phoneNum"
												placeholder="-을 제외한 전화번호를 입력하세요">
											<button id="phoneBtn" type="button" class="formBtn">전송</button>
											<div class="alert_box" id="phoneNumAlert">
												<span class="msg good">전화번호 입력완료</span> <span
													class="msg bad">정확한 전화번호를 입력하세요</span>
											</div>
										</div>
										<div class="input_box" id="certificateBox">
											<input id="certificate" disabled required type="text"
												name="certificate">
											<button id="certificateBtn" type="button" class="formBtn">인증</button>
											<div class="alert_box" id="certificateAlert">
												<span class="msg good">입력완료</span> <span class="msg bad">4개의
													숫자를 입력하세요</span>
											</div>
										</div>
										<div class="input_box" id="nicknameBox">
											<label for="nickname">닉네임</label>
											<div class="icon_box">
												<i class="fas fa-user-circle"></i>
											</div>
											<input id="nickname" type="text" name="nickname" disabled
												required placeholder="닉네임 입력" title="별명을 입력해주세요">
											<div class="alert_box" id="nicknameAlert">
												<span class="msg good">별명 입력완료</span> <span class="msg bad">한글과
													영문 대 소문자를 사용해서 1~4글자를 입력해주세요.</span>
											</div>
										</div>
										<div class="input_box" id="mailBox">
											<label for="mail">E-mail</label>
											<div class="icon_box">
												<i class="fas fa-envelope"></i>
											</div>
											<input id="mail" required disabled type="text" name="email"
												placeholder="이메일">
											<div class="alert_box" id="mailAlert">
												<span class="msg good">이메일 입력완료</span> <span class="msg bad">정확한
													이메일을 기입해주세요</span>
											</div>
										</div>
										<div class="input_box" id="passwordBox">
											<label for="password">Password</label>
											<div class="icon_box">
												<i class="fas fa-key"></i>
											</div>
											<input id="password" required disabled type="password"
												name="password" placeholder="비밀번호">
											<div class="alert_box" id="passwordAlert">
												<span class="msg good">좋은 비밀번호입니다.</span> <span
													class="msg bad">영문,숫자,특수문자를 혼용하여 8~16자를 입력해주세요.</span>
											</div>
										</div>
										<div class="input_box" id="recapchaBox">

											<div class="g-recaptcha"
												data-sitekey="6Lc0h1AUAAAAAHKNXTbxaJIhhnJb8YDjbNhwSPDR"
												data-callback="verifyCallback"></div>

										</div>
										<button id="joinBtn">회원가입</button>
									</form>
								</div>
								<!--회원가입 입력폼 끝-->
								<!--로그인 입력폼 시작-->
								<div id="loginInput" class="on">
									<form action="login.jsp" method="post">
										<div id="loginText">
											<h1>"품"에 오신것을 환영해요!</h1>
											<h2>
												"품"은 서로 간 시간을 거래할 수 있도록 하여</br> 모두의 경쟁력을 높이는 플랫폼 서비스입니다.
											</h2>
										</div>
										<div id="logininput_box">
											<div class="input_box" id="loginEmailBox">
												<label for="mail">E-mail</label>
												<div class="icon_box">
													<i class="fas fa-envelope"></i>
												</div>
												<input id="loginMail" autofocus required type="text"
													name="email" placeholder="이메일">
											</div>
											<div class="input_box" id="loginPasswordBox">
												<label for="password">Password</label>
												<div class="icon_box">
													<i class="fas fa-key"></i>
												</div>
												<input id="loginPassword" required type="password"
													name="password" placeholder="비밀번호">
											</div>
										</div>
										<button id="loginBtn">로그인</button>
									</form>
								</div>
							</div>
						</div>
					</div>
					<%
						} else {
					%>
					<!--로그인했을때 히어로페이지 상단 링크에 회원가입 로그인 대신 내프로필과 프로필사진 닉네임이 나오도록 on클래스-->
					<div id="loginBox" class="on">
						<div class="bell link">
							<i class="fas fa-bell fa-1x"></i>
							<article class="cRecentList news"> <header>
							<h1>새소식</h1>
							</header>
							<div class="main _newsRegion">
								<ul data-viewname="DNewsListView" class="news_list">

								</ul>
							</div>
							</article>
						</div>
						<a href="registerForm.jsp">품 요청/등록</a> <a href="">내프로필</a> <a
							href="" class="mypage"> <img
							src="<%=loginUser.getPhotoUrl()%>" class="profile"
							onerror="this.src='img/profile/profile_img.png'" /> <span><%=loginUser.getNickName()%>
								<i class="fas fa-angle-down"></i></span>
						</a>

						<ul class="mypage_drop">
							<li><a href="#">계약</a></li>
							<li><a href="#">코인</a></li>
							<li><a href="#">찜목록</a></li>
							<li><a href="#">차단 목록</a></li>
							<li><a href="logout.jsp">로그아웃</a></li>
						</ul>
					</div>

					<%
						}
					%>
				</div>
				<p id="text">
					여러분의 남는 시간을 시간이 부족한 다른사람에게 제공해보세요<br /> 저희 웹서비스 <span
						class="emphasis">"폼"</span>은 여러분들의 시간을 서로 <span class="emphasis">공유</span>할
					수 있도록 도와주는<br /> <span class="emphasis">공유경제 플렛폼 서비스</span>입니다
				</p>
			</div>
		</div>
		<div id="recomendService">
			<div id="recomendText">
				<span>추천</span>
			</div>
			<div id="cardBox"></div>
		</div>
		<div id="footer">
			<div id="footerContent">
				<div id="footerContentBox">
					<ul id="introduce">
						<li>소개</li>
						<li>????</li>
					</ul>
					<ul id="policy">
						<li>정책</li>
						<li>?????</li>
						<li>?????</li>
					</ul>
					<ul id="serviceCenter">
						<li>고객센터</li>
						<li>?????</li>
						<li>?????</li>
					</ul>
				</div>
			</div>
			<div id="footerLogo">
				<span>품</span>
			</div>
			<div class="sns">
				<a href="" class="facebook" target="_blank"> 페이스북 </a> <span>·</span>

				<a href="" class="instagram" target="_blank"> 인스타그램 </a> <span>·</span>

				<a href="" class="naver" target="_blank"> 블로그 </a> <span>·</span> <a
					href="" class="kakaostory" target="_blank"> 카카오스토리 </a>
			</div>
		</div>
	</div>

	<script type="text/template" id="step1CardTmp">
    <@ _.each(list,function(card){ @>
    <div class="card">
        <div class="img_view">
            <div class="heart">
                <i class="far fa-heart"></i>
                <span class="heart_count">26</span>
            </div>
            <div class="cursor">
                <button class="left_cursor"><i class="fas fa-angle-left"></i></button>
                <button class="right_cursor"><i class="fas fa-angle-right"></i></button>
            </div>
            <div class="img_box">
                <img src="<@=card.img1@>">
                <img src="<@=card.img2@>">
                <img src="<@=card.img3@>">
            </div>
        </div>
        <div class="profile_pic_box">
            <img src="<@=card.profilePic@>">
            <span><@=card.nickname@></span>
        </div>
        <div class="content">
            <ul>
                <li class="title"><@=card.title@></li>
                <li class="tag"><@=card.tag@></li>
                <li class="score"><span class="icon_small sun"></span> <@=card.score@></li>
                <li class="price"><@=card.price@></li>
            </ul>
        </div>
    </div>
    <@ }) @>
</script>
	<script src="js/jquery.js"></script>
	<script src="js/underscore-min.js"></script>
	<script>
		_.templateSettings = {
			interpolate : /\<\@\=(.+?)\@\>/gim,
			evaluate : /\<\@(.+?)\@\>/gim,
			escape : /\<\@\-(.+?)\@\>/gim
		};
	</script>
	<script type="text/javascript" src="js/slick/slick.min.js"></script>
	<script
		src='https://www.google.com/recaptcha/api.js?onload=onloadCallback'></script>
	<script src="js/login_join_popup.js?a=201804162"></script>
	<script src="js/giver_card_step1.js"></script>
	<script>
		var $mypage_drop = $(".mypage_drop");
		var $mypage = $(".mypage");
		$mypage.on('click', function(e) {
			e.preventDefault();
			$mypage_drop.toggleClass("show");
		})
	</script>
</body>
</html>