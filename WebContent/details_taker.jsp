<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세페이지_taker</title>
<%@ include file="WEB-INF/templates/link.jsp"%>
<link rel="stylesheet" href="css/card_giver_level_first.css" />
<link rel="stylesheet" href="css/details_taker.css" />
<link rel="stylesheet" href="css/popup_details_question.css" />
<link rel="stylesheet" href="css/popup_details_reply.css" />
<link rel="stylesheet" href="css/slick/slick.css" />
<link rel="stylesheet" href="css/slick/slick-theme.css" />

<style>
#cardBox>div {
	float: left;
	margin-right: 10px;
}

#likeBtn .fa-heart {
	font-size: 50px;
}

#detailsContractPopup dl dd.schedule span {
	display: block;
}
</style>
</head>
<body>
	<%@ include file="WEB-INF/templates/header.jsp"%>

	<div id="content">
		<h2 id="detailsTitle">청소를 전문적으로 해주실 분 구합니다. 집이 많이 더럽습니다.</h2>
		<div id="detailsProfileBox">
			<h3 class="screen_out">프로필</h3>
			<div id="userProfile">
				<a href="#">
					<div id=giverProfileImg></div>
					<div id="userNickname">넬준</div>
				</a>
			</div>
		</div>
		<!--//#detailsProfileBox-->
		<div id="detailsInfoBox">
			<h3 class="screen_out">상세정보</h3>
			<div id="detailsInfo">
				<h4 class="screen_out">상세정보내용</h4>
				<ul>
					<li>총 평점 : <span class="icon_big sun"></span> 98%(21)
					</li>
					<li>지역 : 서울 마포구</li>
					<li>진행 중인 계약 4건</li>
					<li>완료된 계약 21건</li>
					<li>#청소 #화장실청소 #욕실청소</li>
					<li>30품</li>
				</ul>
			</div>
			<div id="scheduleBox">
				<h4 class="screen_out">일정</h4>
				<div id="calendarWrap">
					<h5>
						<i class="far fa-calendar-alt"></i> 일정 선택
					</h5>
					<div id="calendarSettingBox">
						<ul>
							<li class="disabled"><button>
									<i class="fas fa-angle-double-left"></i>
								</button></li>
							<li class="disabled"><button>
									<i class="fas fa-angle-left"></i>
								</button></li>
							<li class="disabled"><button>
									<i class="fas fa-square"></i>
								</button></li>
							<li><button>
									<i class="fas fa-angle-right"></i>
								</button></li>
							<li><button>
									<i class="fas fa-angle-double-right"></i>
								</button></li>
						</ul>
					</div>
					<!--#calendarSettingBox-->
				</div>
				<!--#calendarWrap-->
				<div id="selectedScheduleBox">
					<h5 class="screen_out">선택 일정</h5>
					<ul>

					</ul>
				</div>
				<!--//#selectedSchedule-->
			</div>
			<!--//#scheduleBox-->
			<div id="detailsFunction">
				<h4 class="screen_out">상세 기능</h4>
				<ul>
					<li>
						<button id="likeBtn">
							<i class="far fa-heart"></i>
						</button>
					</li>
					<li>
						<button id="sendContractBtn">계약서 보내기</button>
						<div id="detailsContractPopupWrap">
							<div id="detailsContractPopup">
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
									<dd class="schedule">
										<span>2018-04-26 / 17-18시</span> <span>2018-04-26 /
											20-21시</span> <span>2018-04-29 / 16-17시</span> <span>2018-04-29
											/ 17-18시</span> <span>2018-05-02 / 17-18시</span> <span>2018-05-02
											/ 18-19시 </span>
									</dd>
									<dt>가 격</dt>
									<dd>
										<div id="price">
											<input id="poomvalue" type="text" placeholder="품을입력해주세요." />&nbsp;품
										</div>
									</dd>
									<dt>할 말</dt>
									<dd>
										<div id="comment">
											<textarea placeholder="희망사항을 입력해주세요."></textarea>
										</div>
									</dd>
								</dl>
								<button id="detailsSendContractBtn">계약서 보내기</button>
							</div>
							<!--//#detailsContractPopup-->
						</div> <!--//#detailsContractPopupWrap-->
					</li>
				</ul>
			</div>
		</div>
		<!--//#detailsInfo-->
		<div id="detailsBoardWrap">
			<h3 class="screen_out">게시판</h3>
			<div id="detailsBoardGnb">
				<ul>
					<li><a class="board_gnb on gnb_reference" href="#">참고사항</a></li>
					<li><a class="board_gnb gnb_review" href="#">사진(21)</a></li>
					<li><a class="board_gnb gnb_question" href="#">문의(25)</a></li>
				</ul>
			</div>
			<div id="detailsBoardBox">
				<div class="box_board on box_board_reference">
					<div class="contents_board contents_board_reference">안녕하세요
						청소를 자주 했던 사람입니다. 보통은 화장실 청소를 많이 하지만 그 외에도 다양한 곳 전부 청소합니다. 리뷰 보시면
						아시겠지만 대부분의 분들이 만족하셨습니다. 안녕하세요 청소를 자주 했던 사람입니다. 보통은 화장실 청소를 많이 하지만
						그 외에도 다양한 곳 전부 청소합니다. 리뷰 보시면 아시겠지만 대부분의 분들이 만족하셨습니다. 안녕하세요 청소를 자주
						했던 사람입니다. 보통은 화장실 청소를 많이 하지만 그 외에도 다양한 곳 전부 청소합니다. 리뷰 보시면 아시겠지만
						대부분의 분들이 만족하셨습니다. 안녕하세요 청소를 자주 했던 사람입니다. 보통은 화장실 청소를 많이 하지만 그 외에도
						다양한 곳 전부 청소합니다. 리뷰 보시면 아시겠지만 대부분의 분들이 만족하셨습니다.</div>
				</div>
				<div class="box_board box_board_photo">
					<div class="contents_board contents_board_photo"></div>
				</div>
				<div class="box_board box_board_question">
					<div class="contents_board contents_board_question">
						<div class="box_btn_question_popup">
							<button class="btn_question_popup">문의하기</button>
							<div id="detailsQuestionPopupWrap">
								<div id="questionPopup">
									<h5 class="screen_out">문의하기</h5>
									<div id="questionInfoBox">
										<dl>
											<dt>제목</dt>
											<dd>맡긴 짐 가져와주세요...</dd>
											<dt>등록자</dt>
											<dd>
												<i class="fas fa-user-circle"></i> 최선이냐?
											</dd>
											<dt class="question_contents">내용</dt>
											<dd class="question_contents">
												<label> <input type="checkbox" />비밀글
												</label>
												<textarea placeholder="내용을 입력하시오"></textarea>
											</dd>
										</dl>
										<button class="btn_question_register">등록</button>
									</div>
									<!--//#questionInfo-->
								</div>
								<!--//#detailsQuestionPopup-->
							</div>
							<!--//#detailsQuestionPopupWrap-->
						</div>
						<ul>
							<li>

								<div class="question_box">
									<div class="question_mark">Q.</div>
									<div class="question_1">
										<span>청소완전필요합니다...얼마나 잘하시나요? ㅎㅎ청소완전필요합니다...얼마나 잘하시나요?
											청소완전필요합니다...얼마나 잘하시나요? ㅎㅎ청소완전필요합니다...얼마나 잘하시나요? ㅎㅎ
											ㅎㅎ청소완전필요합니다...얼마나 잘하시나요? ㅎㅎ</span>
									</div>
									<button class="btn_reply btn_question_reply">답변하기</button>
								</div>



								<div class="wrap_popup_reply">
									<div class="popup_reply">
										<h5 class="screen_out">답변하기</h5>
										<div class="box_reply_info">
											<dl>
												<dt>등록자</dt>
												<dd>
													<i class="fas fa-user-circle"></i> 최선이냐?
												</dd>
												<dt class="reply_contents">내용</dt>
												<dd class="reply_contents">
													<textarea placeholder="내용을 입력하시오"></textarea>
												</dd>
											</dl>
											<button class="btn_reply_register">답변</button>
										</div>
										<!--//#replyInfoBox-->
									</div>
									<!--//#replyPopup-->
								</div> <!--//.wrap_popup_reply-->
							</li>
							<li>
								<div class="question_box">
									<div class="question_mark">Q.</div>
									<div class="question_1">
										<span>청소완전필요합니다...얼마나 잘하시나요? ㅎㅎ청소완전필요합니다...얼마나 잘하시나요?
											청소완전필요합니다...얼마나 잘하시나요? ㅎㅎ청소완전필요합니다...얼마나 잘하시나요? ㅎㅎ
											ㅎㅎ청소완전필요합니다...얼마나 잘하시나요? ㅎㅎ</span>
									</div>
								</div>
								<div class="question_box2">
									<div class="question_mark">A.</div>
									<div class="question_2">
										<span>청소완전필요합니다...얼마나 잘하시나요? ㅎㅎ청소완전필요합니다...얼마나 잘하시나요?
											청소완전필요합니다...얼마나 잘하시나요? ㅎㅎ청소완전필요합니다...얼마나 잘하시나요? ㅎㅎ
											ㅎㅎ청소완전필요합니다...얼마나 잘하시나요? ㅎㅎ</span>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!--//.box_board_question-->
			</div>
		</div>
		<!--//#detailsBoardBox-->
		<div id="recommendationsBox">
			<h3>추천 서비스</h3>
			<div id="cardBox"></div>
		</div>
		<!--//#recommendationsBox-->
	</div>
	<!--//#content-->
	<%@ include file="WEB-INF/templates/footer.jsp"%>

	<script type="text/template" id="calendarBoxTmp">
   <div class="box_calendar">
        <div class="box_calendar_month">
            <!--첫날과 마지막날의 month 비교해서 같으면 하나만 띄우고 다르면 둘 다 띄움-->
            <@ if(dateObjectArr1[0].month() == dateObjectArr2[6].month()) { @>
            <span class="calendar_month"><@=(dateObjectArr1[0].month()+1)+"월" @></span>
            <@} else {@>
            <span class="calendar_month"><@=(dateObjectArr1[0].month()+1)+"-"+(dateObjectArr2[6].month()+1)+"월" @></span>
            <@}@>
        </div>
        <table class="calendar_schedule">
            <thead>
            <tr>
                <!--요일 구하기-->
                <@$.each(dateObjectArr1, function () {@>
                <th class="day_of_week"><@=this.format('ddd') @></th>
                <@}); @>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <@_.each(dateObjectArr1, function(dateObject) {@>
                    <td>
                        <div class="box_date">
                            <ul>
                                <!--날짜 구하기-->
                                <li class="schedule_date"><@=dateObject.date() @></li>
									<!--DB에 저장된 스케쥴 날짜와 같은 날짜에 해당 일정 li를 붙인다.-->
                                <@_.each(scheduleListFromDB , function(scheduleFromDB) { @>
									<@ if(dateObject.format("YYYY-MM-DD") == scheduleFromDB.schedule.date) { @>
                                <li>
                                    <!--selectedScheduleArr에 있는 모멘트들과 비교해서 같은 일정 있으면
                                        selected 클래스를 줌-->
                                    <a href="#" class="schedule_hour
                                    	<@ for(var i = 0; i < selectedScheduleObjectArr.length; i++) { @>
                                        <@ if(selectedScheduleObjectArr[i].selectedMoment.format('YYYY-MM-DD HH')== scheduleFromDB.schedule.date+' '+scheduleFromDB.schedule.hour) {@>
                                        selected
					                    <@}} @>"

                                       data-schedule="<@=scheduleFromDB.schedule.date+' '+scheduleFromDB.schedule.hour @>">
                                        	<!--화살표 버튼 클릭해서 .box_calendar가 다시 markup되더라도 selected되었던
                                        	.schedule_hour에는 selected클래스를 주어 css효과가 유지되게 함-->
                                        	<@=scheduleFromDB.schedule.expression @>
                                    </a>
                                </li>
                                <@}}); @>
                            </ul>
                        </div>
                    </td>
                    <@}); @>
                </tr>
                <tr>
                    <@_.each(dateObjectArr2, function(dateObject) {@>
                    <td>
                        <div class="box_date">
                            <ul>
                                <li class="schedule_date"><@=dateObject.date() @></li>
                                <@_.each(scheduleListFromDB , function(scheduleFromDB) {@>
                               <@ if(dateObject.format("YYYY-MM-DD") == scheduleFromDB.schedule.date) { @>
                                <li>
                                    <a href="#" class="schedule_hour
                                    <@for(var i = 0; i < selectedScheduleObjectArr.length; i++) {@>
                                       <@ if(selectedScheduleObjectArr[i].selectedMoment.format('YYYY-MM-DD HH')== scheduleFromDB.schedule.date+' '+scheduleFromDB.schedule.hour) {@>
                                        selected
                                    <@}} @>"
                                       data-schedule="<@=scheduleFromDB.schedule.date+' '+scheduleFromDB.schedule.hour @>">
                                        <@=scheduleFromDB.schedule.expression @>
                                    </a>
                                </li>
                                <@}}); @>
                            </ul>
                        </div>
                    </td>
                    <@}); @>
                </tr>
            </tbody>
        </table>
    </div><!--//.box_calendar-->
</script>

	<script type="text/template" id="replyTmp">

    <div class="box_reply">답변</div>

</script>

	<script type="text/template" id="questionTmp">

    <li>
        <div class="box_contents box_contents_question">
            문의
            <button class="btn_reply btn_question_reply">답변하기</button>
            <div class="wrap_popup_reply">
                <div class="popup_reply">
                    <h5 class="screen_out">답변하기</h5>
                    <div class="box_reply_info">
                        <dl>
                            <dt>등록자</dt>
                            <dd>
                                <i class="fas fa-user-circle"></i> 최선이냐?
                            </dd>
                            <dt class="reply_contents">내용</dt>
                            <dd class="reply_contents">
                                <textarea placeholder="내용을 입력하시오"></textarea>
                            </dd>
                        </dl>
                        <button class="btn_reply_register">답변</button>
                    </div><!--//.box_reply_info-->
                </div><!--//.popup_reply-->
            </div><!--//.wrap_popup_reply-->
        </div><!--.box_contents-->
    </li>

</script> 
	<%@ include file="WEB-INF/templates/card_level_first.jsp"%>
	<%@ include file="WEB-INF/templates/js.jsp"%>

	<script src="js/calendar/moment-with-locales.min.js"></script>
	<script src="js/calendar/tui-code-snippet.min.js"></script>
	<script src="js/chart/raphael.min.js"></script>
	<script src="js/chart/tui-chart.js"></script>
	<script src="js/card_util.js?date=201804283"></script>
	<script src="js/slick/slick.min.js"></script>
	<script src="js/slick/slick_helper.js?date=201804283"></script>
	<script src="js/details_taker.js?date=201804192"></script>

	<script>
  
    
    cardUtil.dataset = {
            "level" : 1,
            "count": 3
          };
          cardUtil.getCardList("ajax/recommendCardList.json", $("#cardBox"),
                  ".img_box");
  </script>
</body>
</html>