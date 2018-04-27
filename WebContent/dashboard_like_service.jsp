<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>찜 대시보드</title>
<%@ include file="WEB-INF/templates/link.jsp"%>
<link rel="stylesheet" href="css/dashboard_template.css" />
<link rel="stylesheet" href="css/dashboard_like_service.css" />
<link rel="stylesheet" href="css/slick/slick.css" />
<link rel="stylesheet" href="css/slick/slick-theme.css" />
<link rel="stylesheet" href="css/second_level_giver_card.css" />
<link rel="stylesheet" href="css/second_level_taker_card.css" />
<style>
</style>
</head>
<body>
	<%@ include file="WEB-INF/templates/header.jsp"%>
	<%@ include file="WEB-INF/templates/dashboard_template.jsp"%>
	<div class="wrap_likelist">
		<h2 class="screen_out">찜 목록</h2>
		<div class="content_likelist">
			<ul>

			</ul>

		</div>
		<!--//.content_likelist-->
	</div>
	<!--//.wrap_likelist-->
	<%@ include file="WEB-INF/templates/footer.jsp"%>


	<!--2단 giver카드 템플릿-->
	<script type="text/template" id="secondLevelGiverCardTmp">
<li>
<div class="profile_card">
    <div class="profileserviceimg_box">
        <div class="box_heart">
            <i class="far fa-heart on"></i>
            <span class="heart_count">26</span>
        </div>

        <button class="left_cursor cursor"><i class="fas fa-angle-left"></i></button>
        <button class="right_cursor cursor"><i class="fas fa-angle-right"></i></button>

        <div class="profileserviceimg_wrap">
            <div class="profileservice_img"><img src="img/serviceimg/lesson1.png"></div>
            <div class="profileservice_img"><img src="img/serviceimg/lesson2.png"></div>
            <div class="profileservice_img"><img src="img/serviceimg/lesson3.jpg"></div>
        </div>
    </div><!--//.profileserviceimg_box-->
    <a href="">
        <div class="service_inform">
            <ul>
                <li>코딩 과외! HTML, CSS, Javascript, Java, Spring, SQL</li>
                <li><span class="icon_small sun"></span> 78%(21)
                    | 서울 마포, 신림, 관악, 강남 </li>
                <li>2018-04-28 오후 6-7시 외 5개 일정</li>
                <li>진행 중인 계약 6건 | 완료된 계약 21건</li>
                <li>#코딩 #풀스텍 #코딩이너무좋아요</li>
                <li>1230품</li>
            </ul>
            <div class="profile_img"></div>
            <div class="profile_name" href="">서강준</div>
        </div><!--//.service_inform-->
    </a>
</div><!--//.profile_card-->
</li>
<li>
<div class="profile_card">
    <div class="profileserviceimg_box">
        <div class="box_heart">
            <i class="far fa-heart on"></i>
            <span class="heart_count">26</span>
        </div>

        <button class="left_cursor cursor"><i class="fas fa-angle-left"></i></button>
        <button class="right_cursor cursor"><i class="fas fa-angle-right"></i></button>

        <div class="profileserviceimg_wrap">
            <div class="profileservice_img"><img src="img/serviceimg/lesson1.png"></div>
            <div class="profileservice_img"><img src="img/serviceimg/lesson2.png"></div>
            <div class="profileservice_img"><img src="img/serviceimg/lesson3.jpg"></div>
        </div>
    </div><!--//.profileserviceimg_box-->
    <a href="">
        <div class="service_inform">
            <ul>
                <li>코딩 과외! HTML, CSS, Javascript, Java, Spring, SQL</li>
                <li><span class="icon_small sun"></span> 78%(21)
                    | 서울 마포, 신림, 관악, 강남 </li>
                <li>2018-04-28 오후 6-7시 외 5개 일정</li>
                <li>진행 중인 계약 6건 | 완료된 계약 21건</li>
                <li>#코딩 #풀스텍 #코딩이너무좋아요</li>
                <li>1230품</li>
            </ul>
            <div class="profile_img"></div>
            <div class="profile_name" href="">서강준</div>
        </div><!--//.service_inform-->
    </a>
</div><!--//.profile_card-->
</li>
<li>
<div class="taker_profile_card">
    <div class="taker_box">
        <div class="box_heart">
            <i class="far fa-heart on"></i>
            <span class="heart_count">26</span>
        </div>
        <div class="taker_img"></div>
        <div class="taker_name">서강준</div>
    </div><!--//.taker_box-->
    <a href="">
        <div class="taker_service_inform">
            <ul>
                <li>주중, 주말 집 청소 해 줄 사람 구합니다. 전문적이고, 주기적으로 가능하신 분!</li>
                <li><span class="icon_small sun"></span>
                    78%(21) | 서울 마포, 강남, 목동</li>
                <li>2018-04-28 오후 6-7시 외 5개 일정</li>
                <li>진행중인 계약 6건 | 완료된 계약 21건</li>
                <li>#커튼빨래 #집청소 #이불빨래</li>
                <li>30품</li>
            </ul>
        </div><!--//.taker_service_inform-->
    </a>
</div><!--//.taker_profile_card-->
</li>
<li>
<div class="taker_profile_card">
    <div class="taker_box">
        <div class="box_heart">
            <i class="far fa-heart on"></i>
            <span class="heart_count">26</span>
        </div>
        <div class="taker_img"></div>
        <div class="taker_name">서강준</div>
    </div><!--//.taker_box-->
    <a href="">
        <div class="taker_service_inform">
            <ul>
                <li>주중, 주말 집 청소 해 줄 사람 구합니다. 전문적이고, 주기적으로 가능하신 분!</li>
                <li><span class="icon_small sun"></span>
                    78%(21) | 서울 마포, 강남, 목동</li>
                <li>2018-04-28 오후 6-7시 외 5개 일정</li>
                <li>진행중인 계약 6건 | 완료된 계약 21건</li>
                <li>#커튼빨래 #집청소 #이불빨래</li>
                <li>30품</li>
            </ul>
        </div><!--//.taker_service_inform-->
    </a>
</div><!--//.taker_profile_card-->
</li>
</script>
	<%@ include file="WEB-INF/templates/js.jsp"%>
	<script src="js/slick/slick.min.js"></script>
	<script src="js/dashboard_template.js"></script>
	<script src="js/dashboard_like_service.js"></script>
	<script src="js/slick/slick_common.js"></script>
	<script>
		// 이미지 슬라이드 표현 (slick_common.js)
		slickUtil.createImageCards($('.profileserviceimg_wrap'), 1);
	</script>
</body>
</html>