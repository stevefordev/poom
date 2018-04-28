<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>검색페이지</title>
	<%@ include file="/WEB-INF/templates/link.jsp" %>
    <link rel="stylesheet" href="css/paginate.css"/>
    <!--캠퍼스 부분 css -->
    <link rel="stylesheet" href="calendar_css/tui-date-picker.css">
    <link rel="stylesheet" href="calendar_css/tui-time-picker.css"/>
	<link rel="stylesheet" href="css/search_page_taker.css"/>
	<link rel="stylesheet" href="css/taker_card_step1.css"/>
</head>
<body>
<%@ include file="/WEB-INF/templates/header.jsp" %>
    <div id="menuContents">
        <div id="menuFilter">
            <!-- 역할 부분 입니다-->
            <div class="filter_role">
                <h3>역 할</h3>
                <!--기버 테이커 버튼-->
                <button class="btn_role">품을 주고 싶어요</button>
                <button class="btn_role">품을 받고 싶어요</button>
            </div>
            <!--제공분야-->
            <div class="filter_providing">
                <h3>제공분야</h3>
                <!--가사 교육 심부름 버튼 -->
                <button class="btn_providing">가사</button>
                <button class="btn_providing">교육</button>
                <button class="btn_providing">심부름</button>

            </div>
            <!--날짜일정-->
            <div class="filter_schedule">
                <h3>날짜일정</h3>
                <!--강사님이 올려주신거라서 css는 제가 만든거 아니니까 수정하지 마세여 ㅎㅎ-->
                <div class="row">

                    <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                        <input type="text" id="datepicker-input2" aria-label="Date-Time">
                        <span class="tui-ico-date"></span>
                    </div>
                    <div id="wrapper2" style="margin-top: -1px;"></div>
                    <!--여기까지 강사님 캘린더 부분입니다.-->
                </div>

                <button class="btn_date">1주</button>
                <button class="btn_date">2주</button>
                <button class="btn_date">1개월</button>
            </div>
            <!--지역 필터-->
            <div class="filter_area">
                <div class="box_area">
                    <h3>지역</h3>
                    <a href="" class="address1">
                        <strong>시</strong>
                        <i class="fas fa-sort-down"></i>
                        <i class="fas fa-sort-up"></i>
                    </a>
                    <ul class="list_address1">
                        <li class="item_area"><a href="">서울</a></li>
                        <li class="item_area"><a href="">인천</a></li>
                        <li class="item_area"><a href="">부산</a></li>
                        <li class="item_area"><a href="">대구</a></li>
                        <li class="item_area"><a href="">..</a></li>
                        <li class="item_area"><a href="">...</a></li>
                    </ul>
                    <a href="" class="address2">
                        <strong>군/구</strong>
                        <i class="fas fa-sort-down"></i>
                        <i class="fas fa-sort-up"></i>
                    </a>
                    <ul class="list_address2">
                        <li class="item_area"><a href="">구로구</a></li>
                        <li class="item_area"><a href="">관악구</a></li>
                        <li class="item_area"><a href="">서초구</a></li>
                        <li class="item_area"><a href="">노원구</a></li>
                        <li class="item_area"><a href="">..</a></li>
                        <li class="item_area"><a href="">...</a></li>
                    </ul>
                </div>

            </div>
            <!--상세필터-->
            <div class="filter_detail">

                <button class="btn_detail">상세필터
                    <i class="fas fa-minus"></i>
                    <i class="fas fa-plus"></i>
                </button>
                <div class="list_detail">
                    <h3>평점</h3>
                    <div class="item_detail1">
                        <select>
                            <option>90%이상</option>
                            <option>80%이상</option>
                            <option>60%이상</option>
                            <option>50%이상</option>
                            <option>40%이상</option>
                            <option>30%이상</option>
                        </select>
                        <i class="fas fa-sort-down"></i>
                        <i class="fas fa-sort-up"></i>
                    </div>
                    <h3>품</h3>
                    <div class="item_detail2">
                        <select>
                            <option>30품이상</option>
                            <option>20품이상</option>
                        </select>
                         <i class="fas fa-sort-down"></i>
                        <i class="fas fa-sort-up"></i>
                    </div>

                </div>

            </div>


        </div><!--menuFilter -->
        <div id="menucard">
            <div class="box_sort">

                <select>
                    <option>인기도순</option>
                    <option>품높은순</option>
                    <option>품낮은순</option>
                    <option>리뷰순</option>
                </select>
                <i class="fas fa-sort-down"></i>
                <i class="fas fa-sort-up"></i>
            </div><!-- box_select-->
            <div class="box_card">
                <!--1차 박스-->
                
            </div><!-- box_card-->
            <div class='paginate'>
                <span title="이전 페이지 없음"><i class="fas fa-caret-left"></i></span>
                <strong href="" title='현재 1페이지'>1</strong>
                <a href="" title='2'>2</a>
                <a href="" title='3'>3</a>
                <a href="" title='4'>4</a>
                <a href="" title='5'>5</a>
                <a href="" title='다음 페이지로'>
                    <i class='fas fa-caret-right'></i><span class='screen_out'>다음 페이지</span>
                </a>
            </div><!--box_paginate -->


        </div><!--menucard -->
    </div><!--menuContents -->
<%@ include file="/WEB-INF/templates/footer.jsp" %>
<script type="text/template" id="1stepTakerCardTmp">
    <@ _.each(list,function(card){ @>
		<div class="taker_card">
    		<div class="profile_box">
			  <div class="heart">
                <i class="far fa-heart"></i>
                <span class="heart_count">26</span>
              </div>
       		  <img class="profile_pic" src="<@=card.profilePic@>">
      		  <span><@=card.nickname@></span>
    		</div>
    		<div class="taker_content">
     		   <ul>
       		     <li class="title"><@=card.title@></li>
       		     <li class="tag"><@=card.tags@></li>
       		     <li class="score"><span class="icon_small clouds"></span> <@=card.score@></li>
       		     <li class="price"><@=card.price@></li>
      		  </ul>
    		</div>
		</div>
    </div>
    <@ }) @>
</script>
<%@ include file="WEB-INF/templates/js.jsp"%>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="slick/slick.min.js"></script>
<script src="js/taker_card_step1.js"></script>
<script src="js/template.js"></script>
<script src="calendar_js/tui-code-snippet.min.js"></script>
<script src="calendar_js/tui-time-picker.min.js"></script>
<script src="calendar_js/tui-date-picker.min.js"></script>
<script>

    //역할 버튼 제이커리
    $(".filter_role .btn_role:eq(0)").click(function (e) {
        $(".filter_role").removeClass("on");
        e.preventDefault();
    });
    //역할 버튼 제이커리
    $(".filter_role .btn_role:eq(1)").click(function (e) {
        $(".filter_role").addClass("on");
        e.preventDefault();
    });

    //제공분야 버튼 제이커리
    $(".filter_providing  .btn_providing:eq(0)").click(function (e) {
        $(this).toggleClass("on");
        e.preventDefault();
    });
    $(".filter_providing  .btn_providing:eq(1)").click(function (e) {
        $(this).toggleClass("on");
        e.preventDefault();
    });
    $(".filter_providing  .btn_providing:eq(2)").click(function (e) {
        $(this).toggleClass("on");
        e.preventDefault();
    });

    //날짜일정 버튼 제이커리
    $(".filter_schedule>.btn_date").click(function (e) {
        $('.filter_schedule>.btn_date').removeClass('on');
        $(this).addClass("on");
        e.preventDefault();
        e.stopPropagation();
    });


    //상세필터 .item_detail1  select를 클릭했을때 화살표 변화
    $(".item_detail1").click(function (e) {


        $(".item_detail1 .fa-sort-up").toggleClass("on");
        $(".item_detail1 .fa-sort-down").toggleClass("on");

        e.preventDefault();
        e.stopImmediatePropagation();
    });


    //상세필터 .item_detail2  select를 클릭했을때 화살표 변화
    $(".item_detail2 ").click(function (e) {

        $(".item_detail2 .fa-sort-up").toggleClass("on");
        $(".item_detail2 .fa-sort-down").toggleClass("on");
        e.preventDefault();
        e.stopImmediatePropagation();
    });
    //box_sort select를 클릭했으때 화살표 변화
    $(".box_sort select").click(function (e) {

        $(".box_sort .fa-sort-up").toggleClass("on");
        $(".box_sort .fa-sort-down").toggleClass("on");

        e.preventDefault();
        e.stopImmediatePropagation();


    });

    //////////////////////////////////////////////////////
    //지역 부분
    //다른 부분을 클리했을때 이벤트를 종료 시켜서 클릭햇을때 나왔던 리스트가 사라집니다

    $("body").click(function () {

        $(".item_detail2 .fa-sort-up").removeClass("on");
        $(".item_detail2 .fa-sort-down").removeClass("on");
        $(".item_detail1 .fa-sort-up").removeClass("on");
        $(".item_detail1 .fa-sort-down").removeClass("on");
        $(".box_sort .fa-sort-up").removeClass("on");
        $(".box_sort .fa-sort-down").removeClass("on");
        $(".address2").removeClass("on");
        $(".address1").removeClass("on");
        $(".list_address2").removeClass("on");
        $(".list_address1").removeClass("on");
        $('.filter_schedule>.btn_date').removeClass('on');
    });
    //도시 부분 제이커리 입니다
    //city를 클릭했을 때 city에 on이 추가 되면 리스트가 하단에 출현하고 on이 제거 되었을때 리스트가 닫힘니다
    $(".address1").click(function (e) {

        $(".address1").toggleClass("on");
        $(".list_address2").removeClass("on");
        $(".list_address1").toggleClass("on");
        e.preventDefault();
        //이벤트를 막아주는 이벤트입니다 (전체 화면에 어디를 클릭해도 리스트를 사라지게 만들수 있게 해줍니다
        e.stopImmediatePropagation();
    });
    //지역(군/구) 부분 제이커리 입니다
    //address를 클릭했을 때 address에 on이 추가 되면 리스트가 하단에 출현하고 on이 제거 되었을때 리스트가 닫힘니다
    $(".address2").click(function (e) {
        $(".address2").toggleClass("on");
        $(".list_address1").removeClass("on");
        $(".list_address2").toggleClass("on");
        e.preventDefault();
        //이벤트를 막아주는 이벤트입니다 (전체 화면에 어디를 클릭해도 리스트를 사라지게 만들수 있게 해줍니다
        e.stopImmediatePropagation();
    });

    //도시 리스트 div 부분 제이커리입니다
    //list_city를 클릭했을 때 list_city에 on이 추가 되면 리스트가 안에 있는 링크를 클릭했을때 list_address가 실행되어 출현합니다
    $(".list_address1 .item_area a").click(function (e) {
        $(".address1").removeClass("on");
        $(".address1 strong").text($(this).text());
        $(".list_address1").removeClass("on");
        $(".address2").toggleClass("on");
        $(".list_address2").toggleClass("on");
        e.preventDefault();
        //이벤트를 막아주는 이벤트입니다 (전체 화면에 어디를 클릭해도 리스트를 사라지게 만들수 있게 해줍니다
        e.stopImmediatePropagation();

    });
    //군/구 리스트 div 부분 제이커리입니다
    //list_address를 클릭했을 때 list_address에 on이 추가 되면 리스트가 안에 있는 링크를 클릭했을때 list_address가 닫힙니다
    $(".list_address2 .item_area a").click(function (e) {
        $(".address2").removeClass("on");
        $(".address2 strong").text($(this).text());
        $(".list_address2").removeClass("on");
        e.preventDefault();
        //이벤트를 막아주는 이벤트입니다 (전체 화면에 어디를 클릭해도 리스트를 사라지게 만들수 있게 해줍니다
        e.stopImmediatePropagation();

    });

    //캘린더
    var datepicker2 = new tui.DatePicker('#wrapper2', {
        date: new Date(),
        input: {
            element: '#datepicker-input2',
            format: 'yyyy-MM-dd'
        },
        language: 'ko',
        timepicker: true
    });
    //상세필터
    $(".btn_detail").click(function () {
        $(".filter_detail").toggleClass("on");

    });


</script>
</body>
</html>