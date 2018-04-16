<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>품등록</title>
<%@ include file="WEB-INF/templates/link.jsp"%>
<link rel="stylesheet" href="css/register_service.css" />
<link rel="stylesheet" href="css/jquery.tag-editor.css">
<link rel="stylesheet" href="css/jquery-ui.min.css">
<link rel="stylesheet" href="css/slick/slick.css">
<link rel="stylesheet" href="css/slick/slick-theme.css">
<link rel="stylesheet" href="css/tui-date-picker.css">
<style>
#content {
	font-size: 19px;
}

.section {
	width: 980px;
	min-height: 70px;
}

dl.section {
	margin: auto;
	padding-top: 10px;
}

dl.section dt {
	line-height: 70px;
	height: 70px;
	width: 70px;
	padding: 0 0px 0 0px;
	text-align: center;
	float: left;
	clear: left;
}

dl.section dd {
	/*background: red;*/
	width: 880px;
	margin-left: 20px;
	min-height: 70px;
	position: relative;
	float: left;
}

#registerService input[type=text], input[type=number] {
	padding: 10px 20px;
	margin: 0px 0px;
	font-size: 16px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	height: 50px;
}

#registerService .requiredMsg {
	color: red;
}

#registerService input[type=radio] {
	width: 1.5em;
	height: 1.5em;
}

/******************** start role 역할 ********************/
dl.role dd {
	line-height: 70px;
}

dl.role dd label {
	font-weight: bold;
	font-size: 24px;
	margin-right: 20px;
	cursor: pointer;
}

#registerService dl dd input.error {
	border: 1px solid #f00;
}

/******************** start title 제목 ********************/
#registerService dl.title dd input {
	width: 100%;
	margin-top: 10px;
}

/******************** start region 지역********************/
dl.region {
	height: 490px;
}

dl.region dd {
	
}
/*지역 인풋 박스 그룹*/
dl.region dd>div {
	width: 100%;
	padding-bottom: 10px;
}

dl.region dd>div>input {
	width: 100%;
	margin-top: 10px;
}

dl.region dd>div:nth-child(1)>input {
	width: 780px;
	margin-right: 20px;
	cursor: pointer;
}

dl.region dd>div:nth-child(1)>button {
	width: 80px;
	height: 50px;
	outline: none;
	border: none;
	border-radius: 10px;
	background: #828282;
	color: white;
	font-weight: bold;
	position: absolute;
	right: 0px;
	cursor: pointer;
}

dl.region dd .region_map {
	
}

#map {
	margin-top: 10px;
	width: 880px;
	height: 400px;
	border-radius: 6px;
	box-shadow: 2px 2px 10px 0 rgba(0, 0, 0, 0.3);
}
/*end region*/

/******************** start service 서비스 분야 ********************/
dl.service dd {
	
}

dl.service dd button {
	margin-top: 10px;
	display: inline-block;
	background-color: #828282;
	border: none;
	color: white;
	padding: 14px 30px;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	border-radius: 2px;
	font-weight: bold;
	outline: none;
	cursor: pointer;
}

dl.service dd>button.on {
	background-color: #1f2b43;
}

/******************** section tag 태그********************/
/*마크업 인풋 박스는 삭제하고 tagEditor 를 삽입*/
dl.tag dd>input {
	display: none;
}
/*tagEditor 영역*/
dl.tag dd>ul {
	margin-top: 10px;
	height: 50px;
}

dl.tag dd>ul>li {
	border-radius: 0px 10px 10px 0px;
	margin: 5px 0;
}
/*입력된 태그 개별*/
dl.tag dd>ul>li>div {
	height: 40px;
	font-size: 16px;
	line-height: 40px;
}
/*입력된 태그 개별(x버튼)*/
dl.tag dd>ul>li>div.tag-editor-tag {
	border-radius: 10px 0 0 10px;
}

#registerService dl.tag dd>ul>li input {
	margin: 5px 0;
	height: 40px;
}
/*자동완성 영역*/
.ui-menu.ui-autocomplete {
	border-radius: 10px;
	border: 1px solid rgba(0, 0, 0, 0.2);
	box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.2);
}

.ui-menu .ui-menu-item {
	height: 40px;
	font-size: 20px;
	line-height: 40px;
}

.ui-state-active, .ui-widget-content .ui-state-active, .ui-widget-header .ui-state-active,
	a.ui-button:active, .ui-button:active, .ui-state-active.ui-button:hover
	{
	height: 40px;
	background-color: #828282;
	border: none;
	border-radius: 10px;
}

/******************** section photo 사진********************/
dl.photo {
	height: 350px;
}

dl.photo dd {
	width: 880px;
	height: 330px;
	background: #3f475a;
	position: relative;
	margin-top: 10px;
}

#imageBox {
	width: 720px;
	height: 240px;
	top: 40px;
	position: relative;
	margin: auto;
	visibility: hidden; /*slick 이 로딩 될때까지 보이지 않게 설정*/
}

#imageBox div.slick-slide {
	position: relative;
	margin: 0px 10px;
	cursor: pointer;
}
/*기본 체크박스 마크업은 삭제*/
#imageBox div.slick-slide input[type=checkbox] {
	display: none;
}
/*기본 체크 박스 UI 를 이미지로 대체*/
#imageBox div.slick-slide input[type=checkbox]+label {
	position: absolute;
	top: 12px;
	right: 12px;
	display: inline-block;
	color: #f2f2f2;
	width: 19px;
	height: 19px;
	vertical-align: middle;
	background: url(img/check_radio_sheet.png) left top no-repeat;
	cursor: pointer;
}

#imageBox div.slick-slide input[type=checkbox]:checked+label {
	background: url(img/check_radio_sheet.png) -19px top no-repeat;
}

#imageBox img {
	float: left;
	height: 200px;
	outline: none;
}

/******************** section poom set 품 설정********************/
dl.poom_set dd {
	
}

dl.poom_set dd>input {
	margin-top: 10px;
	font-size: 20px;
	padding-right: 2px;
}

dl.poom_set dd>i {
	padding: 0px 10px;
	cursor: help;
}

.ui-tooltip {
	width: 200px;
	text-align: center;
	box-shadow: none;
	padding: 0;
	background: #828282;
	color: #fff;
	font-weight: bold;
	left: 50px;
}

.ui-tooltip-content {
	position: relative;
	padding: 1em;
}

.ui-tooltip-content::before {
	content: "";
	position: absolute;
	border-style: solid;
	display: block;
	left: 20px;
}

.bottom .ui-tooltip-content::before {
	bottom: -10px;
	border-color: #828282 transparent;
	border-width: 10px 10px 0;
}

/******************** start schedule 일정 ********************/
dl.schedule {
	min-height: 580px;
	overflow: hidden;
}

dl.schedule dd .schedule_set {
	float: left;
}
/*날짜별,요일별 탭*/
dl.schedule dd .schedule_tab {
	margin-top: 10px;
	color: #fff;
	cursor: pointer;
}

dl.schedule dd .schedule_tab>span {
	display: inline-block;
	width: 198px;
	height: 50px;
	line-height: 50px;
	text-align: center;
	border-radius: 25px 25px 0 0;
	font-weight: bold;
}
/*날짜별 탭을 각각 클릭시 배경색변경*/
dl.schedule dd .dates_tab, dl.schedule dd .schedule_set.on .weeks_tab {
	background: #3f475a;
}

dl.schedule dd .schedule_set.on .dates_tab, dl.schedule dd .weeks_tab {
	background: #828282;
}

/*날짜별 내용 박스모델*/
dl.schedule dd .dates {
	width: 400px;
	min-height: 360px;
}

#calendar {
	height: 360px;
}

#calendar .tui-datepicker th, #calendar .tui-datepicker td {
	vertical-align: middle;
}

dl.schedule dd .dates>.time_wrap {
	padding-top: 10px;
	min-height: 100px;
	text-align: center;
	font-size: 14px;
	cursor: pointer;
	border-collapse: collapse;
}

dl.schedule dd .time_wrap>ul {
	
}

/*날짜별 ampm 탭*/
dl.schedule dd .dates .ampm {
	width: 55px;
	height: 84px;
	float: left;
}

dl.schedule dd .dates .ampm>div {
	padding: 1px;
	height: 40px;
	line-height: 40px;
}
/*날짜별 각각의 시간*/
dl.schedule dd .dates div>.time>li {
	width: 55px;
	height: 40px;
	line-height: 40px;
	float: left;
	padding: 1px;
	background: #fff;
	color: #000;
	outline: 1px solid #ccc;
}

/*각각의 시간 호버시*/
dl.schedule dd .schedule_set .time>li:hover {
	background: #edf4fc
}
/*각각 시간 클릭됬을때*/
dl.schedule dd .schedule_set .time>li.on {
	background: #3f475a;
	color: white;
}

dl.schedule dd .dates .ampm {
	outline: 1px solid #aaa;
	color: white;
}
/*am pm 탭 각각 클릭 했을때*/
dl.schedule dd .time_wrap .am, dl.schedule dd .time_wrap.on .pm {
	background: #3f475a;
}

dl.schedule dd .time_wrap .pm, dl.schedule dd .time_wrap.on .am {
	background: #828282;
}

/*날짜별 탭*/
dl.schedule dd .dates, /*요일별 탭 클릭시*/ dl.schedule dd .schedule_set.on .weeks,
	/*날짜별 탭에서 am 시간*/ dl.schedule dd .dates .time_wrap div>.am.time,
	/*날짜별 탭에서 pm 클릭시 */ dl.schedule dd .dates .time_wrap.on div>.pm.time,
	/*요일별 탭에서 am 클릭시*/ dl.schedule dd .weeks .time_wrap div>.am_time,
	/*요일별 탭에서 pm 클릭시*/ dl.schedule dd .weeks .time_wrap.on div>.pm_time {
	display: block;
}

dl.schedule dd .weeks, dl.schedule dd .schedule_set.on .dates, dl.schedule dd .dates .time_wrap div>.pm.time,
	dl.schedule dd .dates .time_wrap.on div>.am.time, /*요일별 탭에서 pm 클릭시 */
	dl.schedule dd .weeks .time_wrap.on div>.am_time, /*요일별 탭에서 am 클릭시 */
	dl.schedule dd .weeks .time_wrap div>.pm_time {
	display: none;
}

#calendar {
	
}
/* 날짜별에 나오는 데이트피커 설정*/
#calendar .tui-datepicker {
	
}

#calendar .tui-datepicker, #calendar .tui-datepicker .tui-calendar {
	width: 398px;
}
/* 요일별에 나오는 데이트피커 설정*/
#scheduleStart .tui-datepicker, #scheduleStart .tui-datepicker .tui-calendar
	{
	width: 400px;
	height: 360px;
	line-height: 40px;
}

#scheduleStart .tui-is-selected, #calendar .tui-is-selected {
	background: #3f475a;
}

/*요일별 시작일*/
dl.schedule dd .schedule_start>div {
	height: 70px;
	line-height: 70px;
	text-align: center;
}

dl.schedule dd .schedule_start>div:nth-child(1) {
	width: 120px;
	float: left;
}

dl.schedule dd .schedule_start input {
	width: 280px;
}
/*요일별 한 주간 시간*/
dl.schedule dd .weeks {
	width: 400px;
	height: 700px;
}

/**/
dl.schedule dd .weeks .time_wrap .ampm>div {
	float: left;
	width: 200px;
	text-align: center;
	height: 30px;
	line-height: 30px;
	border-radius: 4px;
	color: #fff;
	cursor: pointer;
}
/*요일별 시간 영역(월화수목금 + 시간)*/
dl.schedule dd .weeks div>div>ol {
	width: 400px;
	float: left;
}
/*요일별에서 월화수목금토일*/
dl.schedule dd .weeks ol>li.week span {
	display: block;
	width: 55px;
	height: 83px;
	float: left;
	text-align: center;
	line-height: 84px;
	border-right: 1px solid #ccc;
	border-left: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

/*요일별 탭에 나오는 요일, 시간 */
dl.schedule dd .weeks ol li {
	float: left;
}
/*요일별 탭에 나오는 각각 시간 */
dl.schedule dd .weeks ol.time li {
	width: 55px;
	height: 40px;
	padding: 1px 0px 0px 1px;
	line-height: 40px;
	font-size: 14px;
	border-bottom: 1px solid #ccc;
	border-right: 1px solid #ccc;
	text-align: center;
	cursor: pointer;
}

dl.schedule div>button.schedule_add {
	background: #3f475a;
	outline: none;
	border: none;
	color: white;
	width: 400px;
	height: 50px;
	font-size: 20px;
	border-radius: 10px;
	box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.5);
	cursor: pointer;
	clear: both;
}

/*선택된 일정 목록 테이블*/
dl.schedule dd .schedule_view {
	width: 448px;
	min-height: 570px;
	float: left;
	margin-left: 30px;
}

dl.schedule dd .schedule_view>table {
	border-radius: 25px;
	margin-top: 10px;
	width: 450px;
	background: #2e7965;
}

dl.schedule dd .schedule_view>table th {
	color: white;
	font-weight: bold;
}

dl.schedule dd .schedule_view>table, dl.schedule dd .schedule_view>table th,
	dl.schedule dd .schedule_view>table td {
	height: 50px;
	line-height: 50px;
}

dl.schedule dd .schedule_view>table td {
	padding-left: 20px;
	background: #ccc;
	border-top: 1px solid #1f2b43;
	border-bottom: 1px solid #1f2b43;
	position: relative;
}

dl.schedule dd .schedule_view>table td>button {
	display: block;
	width: 30px;
	height: 30px;
	position: absolute;
	right: 10px;
	top: 10px;
	cursor: pointer;
	color: #fff;
	background: rgba(256, 0, 0, 0.5);
	border: none;
	border-radius: 2px;
	outline: none;
	font-weight: bold;
}

dl.schedule dd .schedule_view>table td:hover button {
	background: rgba(256, 0, 0, 1);
}
/******************** start contents ********************/
.section.contents {
	min-height: 280px;
	overflow: hidden;
}

.section.contents>dd {
	margin-top: 10px;
}

.section.contents textarea {
	width: 880px;
	padding: 30px 30px;
	margin: 0px 0px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	height: 280px;
	font-size: 24px;
	background: #ccc;
	outline: none;
	resize: none;
	font-family: "Noto Sans KR", serif;
}
/******************** start submit btn ********************/
.section.submit {
	position: relative;
	margin: auto;
}

.section.submit div {
	padding-top: 10px;
	position: absolute;
	right: 10px;
	display: inline-block;
}

.section.submit input {
	background: #3f475a;
	outline: none;
	border: none;
	color: white;
	width: 80px;
	height: 50px;
	font-size: 20px;
	border-radius: 2px;
	box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.5);
	cursor: pointer;
}

.section.submit input.cancel {
	background: #828282;
}
</style>
</head>
<body>
	<%@ include file="WEB-INF/templates/header.jsp"%>
	<form id="registerService" action="">
		<input type="hidden" name='area1' id='area1'/> 
		<input type="hidden" name='area2' id='area2'/>
		<input type="hidden" name='latitude' id='latitude' /> 
		<input type="hidden" name='longitude' id='longitude' />
		<input type="hidden" name='scheduleList' />			
		<input type="hidden" name='photo'/>
		<input type="hidden" name='category'/>
		
		<dl class="section role">
			<dt class="section_title">역할</dt>
			<dd class="section_detail">
				<input type="radio" id="roleGiver" name="role" value="g" checked>
				<label for="roleGiver">품을 주고 싶어요</label> <input type="radio"
					id="roleTaker" name="role" value="t"> <label
					for="roleTaker">품을 받고 싶어요</label>
			</dd>
		</dl>
		<dl class="section title">
			<dt class="section_title">제목</dt>
			<dd class="section_detail">
				<input class="title" type="text" name="title"
					placeholder="내용을 입력해주세요" required>
			</dd>
		</dl>
		<dl class="section region">
			<dt class="section_title">지역</dt>
			<dd class="section_detail ">
				<div>
					<input id="detailAddress1" type="text" name="detailAddress1"
						placeholder="특별시, 도, 군, 구, 동" readonly>
					<button type="button" class="addr_search">주소검색</button>
				</div>
				<div>
					<input id="detailAddress2" type="text" name="detailAddress2"
						placeholder="상세 주소를 입력하세요. ex) 102동 1135호">
				</div>
				<div class="region_map">
					<div id="map"></div>
				</div>
			</dd>
		</dl>
		<dl class="section service">
			<dt class="section_title">분야</dt>
			<dd class="section_detail">
				<button type="button" data-category='edu' class="on">교육</button>
				<!--
            -->
				<button type="button" data-category='house'>가사</button>
				<!--
            -->
				<button type="button" data-category='delivery'>심부름</button>
			</dd>
		</dl>
		<dl class="section tag">
			<dt class="section_title">태그</dt>
			<dd class="section_detail">
				<input type="text" name='tag' />
			</dd>
		</dl>
		<dl class="section photo">
			<dt class="section_title">사진</dt>
			<dd class="section_detail">
				<div id="imageBox"></div>
				<!--//#imageBox -->
			</dd>
		</dl>
		<dl class="section poom_set">
			<dt class="section_title">품</dt>
			<dd class="section_detail">
				<input type="number" maxlength="5" min="1" max="65535"
					placeholder="10" value="10" name='poom' required> <i
					class="fas fa-question-circle"
					title="품이란 시간당 기본 가중치 입니다. 10품 X 2시간  = 20 코인"></i>
			</dd>
		</dl>
		<dl class="section schedule">
			<dt class="section_title">일정</dt>
			<dd class="section_detail">
				<div class="schedule_set">
					<div class="schedule_tab">
						<span class="dates_tab">날짜별</span>
						<!--
                     -->
						<span class="weeks_tab">요일별</span>
					</div>
					<div class='dates'>
						<div id="calendar"></div>
						<div class="time_wrap">
							<div class="ampm">
								<div class="am">AM</div>
								<div class="pm">PM</div>
							</div>
							<div class="time">
								<ul class="am time">
									<li data-time='0' class="">00-01시</li>
									<li data-time='1' class="">01-02시</li>
									<li data-time='2' class="">02-03시</li>
									<li data-time='3' class="">03-04시</li>
									<li data-time='4' class="">04-05시</li>
									<li data-time='5' class="">05-06시</li>
									<li data-time='6' class="">06-07시</li>
									<li data-time='7' class="">07-08시</li>
									<li data-time='8' class="">08-09시</li>
									<li data-time='9' class="">09-10시</li>
									<li data-time='10' class="">10-11시</li>
									<li data-time='11' class="">11-12시</li>
								</ul>
								<ul class="pm time">
									<li data-time='0' class="">00-01시</li>
									<li data-time='1' class="">01-02시</li>
									<li data-time='2' class="">02-03시</li>
									<li data-time='3' class="">03-04시</li>
									<li data-time='4' class="">04-05시</li>
									<li data-time='5' class="">05-06시</li>
									<li data-time='6' class="">06-07시</li>
									<li data-time='7' class="">07-08시</li>
									<li data-time='8' class="">08-09시</li>
									<li data-time='9' class="">09-10시</li>
									<li data-time='10' class="">10-11시</li>
									<li data-time='11' class="">11-12시</li>
								</ul>
							</div>
						</div>
					</div>
					<div class='weeks'>
						<div class="schedule_start">
							<div>
								<label for="datepickerInput">시작일</label>
							</div>
							<div id="scheduleStart">
								<input id="datepickerInput" name="startDate" type="text">
							</div>
						</div>
						<div class="time_wrap">
							<div class="ampm">
								<div class="am">AM</div>
								<div class="pm">PM</div>
							</div>
							<div>
								<div class="am_time">
									<ol>

									</ol>
								</div>
								<div class="pm_time">
									<ol>

									</ol>
								</div>
							</div>
						</div>
					</div>
					<div>
						<button type="button" class="schedule_add">일정추가</button>
					</div>
				</div>
				<!--//end schedule_set -->
				<div class="schedule_view">
					<table border="1">
						<thead>
							<tr>
								<th>선택된 날짜</th>
							</tr>
						</thead>
						<tbody>

						</tbody>
					</table>
				</div>
				<!--//end schedule_view -->
			</dd>
			<!--//end section.schedule -->
		</dl>
		<dl class="section contents">
			<dt class="section_title">내용</dt>
			<dd class="section_detail">
				<textarea id='contents' name="contents" placeholder="내용을 입력하세요~"
					required></textarea>
			</dd>
		</dl>
		<div class="section submit">
			<div>
				<input type="submit" value="입력" /> <input class="cancel"
					type="reset" value="취소" />
			</div>
		</div>
	</form>
	<%@ include file="WEB-INF/templates/footer.jsp"%>
	<!-- 알림 탬플릿 -->

	<script type="text/template" id="serviceImgTemp">
    <@ _.each(imageInfo.images,function(image, key){ @>
    <div>
        <img src="img/<@=imageInfo.category@>/<@=image@>"/>
        <input type="checkbox" name="images[]" value="<@=image@>" id="image<@=key@>" />
        <label for="image<@=key@>"></label>
    </div>
    <@})@>
</script>
	<!--요일별에서 시간 리스트-->
	<script type="text/template" id="weeksTemp">
    <@ _.each(weeks, function(week){ @>
    <li class="week">
        <span><@=week.ko@></span>
        <ol data-week=<@=week.en@> class="time">
            <li data-time="0">00-01시</li>
            <li data-time="1">01-02시</li>
            <li data-time="2">02-03시</li>
            <li data-time="3">03-04시</li>
            <li data-time="4">04-05시</li>
            <li data-time="5">05-06시</li>
            <li data-time="6">06-07시</li>
            <li data-time="7">07-08시</li>
            <li data-time="8">08-09시</li>
            <li data-time="9">09-10시</li>
            <li data-time="10">10-11시</li>
            <li data-time="11">11-12시</li>
        </ol>
    </li>
    <@})@>
</script>
	<script type="text/template" id="selectedScheduleTemp">
    <@ _.each(scheduleList.repeatDates,function(schedule, key){@> 
    <@ if(schedule.times.length>0) { console.log(schedule.times)@>
    <@ _.each(schedule.times,function(time){ @>
    <tr>
        <td data-type='repeatDates' data-week=<@=key@> data-time=<@=time@>> [반복] 매주 <@=schedule.kor@> / <@=('0' + time).slice(-2)@>-<@=('0' + (time+1)).slice(-2)@> 시<button type="button">X</button></td>
    </tr>
    <@})@>
    <@} }) @>

    <@ _.each(scheduleList.singleDates, function(singleDate){ @>
    <@ _.each(singleDate.times,function(time){ @>
    <tr>
        <td data-type='singleDates' data-date=<@=singleDate.date@> data-time=<@=time@>>[단일] <@=singleDate.date@> / <@=('0' + time).slice(-2)@>-<@=('0' + (time+1)).slice(-2)@> 시<button type="button">X</button></td>
    </tr>
    	<@})@>
    <@})@>
</script>

	<%@ include file="WEB-INF/templates/js.jsp"%>
	<script src="js/moment-with-locales.min.js"></script>
	<script
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=555baa134395660cb83af73dbe87d218&libraries=services,clusterer,drawing"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="js/jquery.caret.min.js"></script>
	<script src="js/jquery.tag-editor.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/slick/slick.min.js"></script>
	<script src="js/tui-code-snippet.min.js"></script>
	<script src="js/tui-date-picker.min.js"></script>
	<script src="js/ckeditor/ckeditor.js?a=3"></script>
	<script src="js/ckeditor/config.js?a=4"></script>
	<script>
		$(function() {
			var $title = $("input[name=title]");
			var $area1 = $("input[name=area1]");
			var $area2 = $("input[name=area2]");
			var $detailAddress1 = $("#detailAddress1");
			var $detailAddress2 = $("#detailAddress2");
			var $latitude = $("input[name=latitude]");
			var $longitude = $("input[name=longitude]");
			var $category = $("input[name=category]");
			var $tag = $("input[name=tag]");			
			var $poom = $("input[name=poom]");			
			var $photo = $("input[name=photo]");
			var $contents = $("input[name=contents]");
			var $scheduleList = $("input[name=scheduleList]");
			/*
			 *  지도 영역
			 *  kakao api
			 *  http://apis.map.daum.net/web/5documentation/
			 * */

			// 카카오 맵이 표시된 요소를 찾는다
			var container = document.getElementById('map');

			// 카카오 맵 표시전 옵션 설정
			var options = {
				center : new daum.maps.LatLng(37.48131159886463,
						126.95286468301894),
				level : 3
			};

			// 카카오 맵 표시
			var map = new daum.maps.Map(container, options);

			// 현재 접속 중인 지역으로 중심 설정
			getMyLocation();

			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new daum.maps.services.Geocoder();

			// 지도를 클릭한 위치에 표출할 마커입니다
			var marker = new daum.maps.Marker({
				// 지도 중심좌표에 마커를 생성합니다
				position : map.getCenter()
			});

			// 지도에 마커를 표시합니다
			marker.setMap(map);

			// 현재 지도 중심좌표로 주소를 검색해서 표시합니다
			searchAddrFromCoords(map.getCenter(), displayAddrInfo);

			// 맵이 움직일때마다 주소 검색
			daum.maps.event.addListener(map, 'idle', function() {
				searchDetailAddrFromCoords(map.getCenter(),
						displayAddrDetailInfo);
			});

			function searchDetailAddrFromCoords(coords, callback) {
				// 좌표로 법정동 상세 주소 정보를 요청합니다
				geocoder.coord2Address(coords.getLng(), coords.getLat(),
						callback);
			}
			function searchAddrFromCoords(coords, callback) {
				// 좌표로 행정동 주소 정보를 요청합니다
				geocoder.coord2RegionCode(coords.getLng(), coords.getLat(),
						callback);
			}

			function setLocationFromAddress(address) {
				geocoder.addressSearch(address, function(result, status) {

					// 정상적으로 검색이 완료됐으면
					if (status === daum.maps.services.Status.OK) {

						var coords = new daum.maps.LatLng(result[0].y,
								result[0].x);

						// 인포윈도우로 장소에 대한 설명을 표시합니다
						/*
						var infowindow = new daum.maps.InfoWindow({
						    content: '<div style="min-width:150px;text-align:center;padding:6px;">'+address+'</div>'
						});
						infowindow.open(map, marker);
						 */
						// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
						map.setCenter(coords);
					}
				});
			}

			function displayAddrInfo(result, status) {
				if (status === daum.maps.services.Status.OK) {
					console.log(result);
					for (var i = 0; i < result.length; i++) {
						// region_type 값은 B or H
						console.log(result);
						if (result[i].region_type === 'B') {
							console.log(result[i].address_name);
							console.log(result[i].region_1depth_name);
							console.log(result[i].region_2depth_name);
							
							$area1.val(result[i].region_1depth_name);
							$area2.val(result[i].region_2depth_name);
							//$detailAddress2.val(result[i].region_2depth_name);
							break;
						}
					}
					var center = map.getCenter();
					$latitude.val(center.getLat());
					$longitude.val(center.getLng()); 
					marker.setPosition(center);
				}
			}//end displayAddrInfo()

			// 지도 상세 주소
			function displayAddrDetailInfo(result, status) {
				if (status === daum.maps.services.Status.OK) {
					console.log(result);
					console.log(result[0].address);
					$detailAddress1.val(result[0].address.address_name);

					console.log(result[0].address.region_1depth_name);
					console.log(result[0].address.region_2depth_name);

					marker.setPosition(map.getCenter());
				}
			}//end displayAddrDetailInfo()

			// pc 에서 접속 중인 현재 위치를 알아낸다
			function getMyLocation() {
				if (navigator.geolocation) {
					navigator.geolocation
							.getCurrentPosition(function(position) {
								console.log(position.coords.latitude);
								console.log(position.coords.longitude);

								// 알아낸 현재 위치로 카카오 맵 중심 설정
								setLocation(position.coords.latitude,
										position.coords.longitude);
							});
				} else {
					console
							.log("Geolocation is not supported by this browser.");
				}
			}

			// 입력 받은 위치로 카카오맵 중심 설정
			function setLocation(lat, lng) {
				map.setCenter(new daum.maps.LatLng(lat, lng));
			}

			
			$("#detailAddress1,.addr_search").click(
					function() {
						new daum.Postcode({
							oncomplete : function(data) {
								// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

								// 각 주소의 노출 규칙에 따라 주소를 조합한다.
								// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
								var fullAddr = ''; // 최종 주소 변수
								var extraAddr = ''; // 조합형 주소 변수

								// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
								if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
									fullAddr = data.roadAddress;

								} else { // 사용자가 지번 주소를 선택했을 경우(J)
									fullAddr = data.jibunAddress;
								}

								// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
								if (data.userSelectedType === 'R') {
									//법정동명이 있을 경우 추가한다.
									if (data.bname !== '') {
										extraAddr += data.bname;
									}
									// 건물명이 있을 경우 추가한다.
									if (data.buildingName !== '') {
										extraAddr += (extraAddr !== '' ? ', '
												+ data.buildingName
												: data.buildingName);
									}
									// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
									fullAddr += (extraAddr !== '' ? ' ('
											+ extraAddr + ')' : '');
								}

								// 우편번호와 주소 정보를 해당 필드에 넣는다.
								//$postcode.val(data.zonecode); //5자리 새우편번호 사용

								//alert(fullAddr);
								$detailAddress1.val(fullAddr);
								setLocationFromAddress(fullAddr);
								// 커서를 상세주소 필드로 이동한다.
								$detailAddress2.focus();
							}
						}).open();
					}); //주소 검색

			// end map *******************************************************************************/

			//
			var $serviceButton = $(".section.service button");
			$category.val('edu');
			/*
			 *service button
			 * */
			$(".section.service button").click(function() {
				//서비스 버튼의 종류에 따라 버튼 색상 변경
				$serviceButton.removeClass("on");
				$(this).addClass("on");

				//서비스 버튼에 따라 태그 인풋 기본 입력 변경
				removeAllTags();
				$tag.tagEditor('addTag', $(this).text());
				serviceImageLoad($(this).data('category'));
				$category.val($(this).data('category'));
			})

			/*
			 * tag input
			 * https://goodies.pixabay.com/jquery/tag-editor/demo.html
			 * http://api.jqueryui.com/autocomplete/#option-source
			 * */
			$tag.tagEditor({
						initialTags : [ '#교육' ], // 초기 입력
						maxTags : 5,
						maxLength : 10,
						delimiter : ', ', /* space and comma */
						placeholder : '서비스 관련 태그를 입력 하세요',
						onChange : function(field, editor, tags) {
							console.log(tags);
						},
						beforeTagSave : function(field, editor, tags, tag, val) {
							//$('#response').prepend('Tag ' + val + ' saved' + (tag ? ' over ' + tag : '') + '.');
							//특수문자를 제외하고 태그를 반환 하도록
							var replace = val.replace(/[^a-z0-9ㄱ-힣]/gi, '');
							if (replace.length > 0) {
								return '#' + replace;
							}
						},
						autocomplete : { //자동 완성
							delay : 500, // show suggestions immediately
							position : {
								collision : 'down'
							}, // automatic menu position up/down / flip
							source : function(request, response) {
								$
										.ajax({
											url : "ajax/hashtag.json",
											dataType : "json",
											data : request,
											success : function(data) {
												// 입력한 태그가 포함된 단어를 검색하여 리턴 받고
												// 자동완성 창에 보여준다
												var matcher = new RegExp(
														"^"
																+ $.ui.autocomplete
																		.escapeRegex(request.term),
														"i");
												response($
														.grep(
																data,
																function(item) {
																	return matcher
																			.test(item);
																}).slice(0, 10));
											},
											error : function(jqXHR, textStatus,
													errorThrown) {
												console.log(textStatus);
											}
										});
							}, //end source
							open : function(event, ui) {
								$(this).autocomplete("widget").width("300px");
								//console.log(event);

							}, //end open
							create : function() {
								//access to jQuery Autocomplete widget differs depending
								//on jQuery UI version - you can also try .data('autocomplete')
							}//end create
						}
					//end autocomplete
					});

			var $sectionTagDetail = $('.section.tag>.section_detail');
			$sectionTagDetail.on('click', function() {
				console.log($tag.tagEditor('getTags')[0].tags.length);
				if ($tag.tagEditor('getTags')[0].tags.length == 5) {
					alert("태그는 최대 5개까지 입력 가능합니다.");
				}
			})
			// 태그 전체 삭제
			function removeAllTags() {
				var tags = $tag.tagEditor('getTags')[0].tags;
				for (i = 0; i < tags.length; i++) {
					$tag.tagEditor('removeTag', tags[i]);
				}
			}//end removeAllTags

			/*
			 * photo section
			 * use slick lib
			 * 참고 http://kenwheeler.github.io/slick/
			 * */

			var $imageBox = $("#imageBox");

			function serviceImageLoad(category) {
				$imageBox.css({
					visibility : 'hidden'
				});
				$imageBox.attr('class', '');
				var imageInfo = {
					'category' : category,
					'images' : [ '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg' ]
				};
				var serviceImgTemp = _.template($("#serviceImgTemp").html());
				var weeksMarkup = serviceImgTemp({
					"imageInfo" : imageInfo
				});
				$imageBox.html(weeksMarkup);
				// slick 이 준비되면 이미지 박스를 보여준다
				// $imageBox.on('init', function () {
				//     $imageBox.css({visibility: 'visible'});
				// });

				// slick 을 바로 실행할 경우 이미지가 밀림 현상이 있음
				setTimeout(function() {
					$imageBox.on('init', function() {
						$imageBox.css({
							visibility : 'visible'
						});
					});
					$imageBox.slick({
						dots : true,
						infinite : true,
						speed : 300,
						slidesToShow : 1,
						centerMode : true,
						variableWidth : true,
						draggable : false
					});
				}, 300);
			}
			var category = 'edu';
			serviceImageLoad(category);
			imageBoxAddListener();
			function imageBoxAddListener() {
				console.log('a');
				// 각 이미지 클릭시 체크 박스가 체크 되도록
				$imageBox
						.on(
								'click',
								'div.slick-list>div.slick-track>div.slick-slide',
								function() {
									var $inputCheckboxImges = $('input:checkbox[name="images[]"]');
									var $thisInput = $(this).children('input');
									console.log($thisInput.val());

									// 현재 누른 이미지가 이미 체크 되었는지 확인
									var isAlreadyChecked = $thisInput
											.prop("checked");

									// 입력된 모든 이미지 요소를 검사하여 체크를 토글 한다
									// slick 에서 무한 반복을 사용하기 위해 같은 이미지를 두번씩 사용하기때문에
									// 이 작업이 필요
									$inputCheckboxImges.map(function() {

										if ($thisInput.val() == this.value) {
											$(this).prop("checked",
													!isAlreadyChecked);
										} 
										/*
										else {
											$(this).prop("checked", false);
										}
										*/
									})

									// 체크된 이미지를 전부 검색하여 json 형태로 보관 (여러장 선택 가능할때 더 의미가 있다)
									var vals = $inputCheckboxImges.filter(
											':checked').map(function() {
										if (this.id.length > 0) {
											return this.value;
										}
									}).get();

									_.uniq(vals);
									$photo.val(vals);
									console.log(JSON.stringify(vals));
								});
			} //end imageBoxAddListener

			// 이미지 스크롤이 움직일때 실행된다
			$imageBox.on('beforeChange', function(event, slick, currentSlide,
					nextSlide) {

			});

			/*********** start poom ************************************/
			$(".section.poom_set .fas.fa-question-circle").tooltip({
				// 참조 https://api.jqueryui.com/position/
				position : {
					my : "left-30 bottom",
					at : "center top-10",
					collision : "flip",
					using : function(position, feedback) {
						$(this).addClass(feedback.vertical).css(position);
					}
				}
			});

			/******************** schedule ********************/

			// 요일별에서 datepicker
			var startDatepicker = new tui.DatePicker('#scheduleStart', {
				date : new Date(),
				language : 'ko',
				input : {
					element : '#datepickerInput',
					format : 'yyyy-MM-dd'
				}
			});

			// 날짜별에서 datepicker
			var datepicker = new tui.DatePicker('#calendar', {
				date : new Date(),
				language : 'ko',
				showToday : true,
				showAlways : true,
				format : 'yyyy-MM-dd'
			});

			datepicker.on('change', function() {
				var selectedDate = datepicker.getDate();

				console.log(selectedDate);
			});

			var $schedule_tab = $(".schedule_tab");
			$schedule_tab.click(function() {
				$('html, body').animate({
					scrollTop : $(".schedule_tab").offset().top
				}, 500);
			});

			var $schedule_set = $('.schedule_set');
			var $dl_schedule = $('dl.schedule');
			//날짜 클릭시
			$(".schedule_tab span.dates_tab").click(function() {
				$schedule_set.removeClass("on");
			});
			//요일별 클릭시
			$(".schedule_tab span.weeks_tab").click(function() {
				$schedule_set.addClass("on");
			});

			//날짜 별에서 am pm 버튼을 누를때
			var $time_wrap = $('dl.schedule .time_wrap');
			$('dl.schedule .dates .pm').click(function() {
				$time_wrap.addClass("on");
			});
			$('dl.schedule .dates .am').click(function() {
				$time_wrap.removeClass("on");
			});
			//요일 별에서 am pm 버튼을 누를때
			$('dl.schedule .weeks .pm').click(function() {
				$time_wrap.addClass("on");
			});
			$('dl.schedule .weeks .am').click(function() {
				$time_wrap.removeClass("on");
			});

			//각각 시간을 클릭할때
			$('dl.schedule .time_wrap').on('click', '.time>li', function() {
				$(this).toggleClass("on");
			});

			var weeks = [ {
				'ko' : '월',
				'en' : 'mon'
			}, {
				'ko' : '화',
				'en' : 'tue'
			}, {
				'ko' : '수',
				'en' : 'wed'
			}, {
				'ko' : '목',
				'en' : 'thu'
			}, {
				'ko' : '금',
				'en' : 'fri'
			}, {
				'ko' : '토',
				'en' : 'sat'
			}, {
				'ko' : '일',
				'en' : 'sun'
			} ];
			var weeksTemp = _.template($("#weeksTemp").html());
			var weeksMarkup = weeksTemp({
				"weeks" : weeks
			});
			$(".am_time ol:hidden").append(weeksMarkup);
			$(".pm_time ol:hidden").append(weeksMarkup);

			/*
			 * 고려해야 할 사항
			 * 1. 날짜별탭에서 현재 선택된 날짜
			 * 2. 날짜별탭에서 am pm 에서 각각 선택된(class='on') 시간
			 * 3. 요일별탭에서 시작 날짜
			 * 4. 요일별탭에서 am pm 에서 각각 선택된(class='on') 시간
			 * sample
			 * {
			       'repeatDate' :  [
			                   { 'week' : 'mon', 'times' : ['2:00','3:00'] },
			                   { 'week' : 'tue', 'times' : ['2:00','3:00','4:00','5:00'] },
			                   { 'week' : 'wed', 'times' : ['2:00','3:00'] },
			                   { 'week' : 'thu', 'times' : ['1:00'] },
			                   { 'week' : 'fri', 'times' : ['10:00'] },
			                   { 'week' : 'sat', 'times' : ['12:00'] },
			                   { 'week' : 'sun', 'times' : ['2:00','3:00'] }
			       ],
			       'singleDate' :  [
			                   { 'date' : '2018-01-01', 'times' : ['2:00','3:00']},
			                   { 'date' : '2018-02-09', 'times' : ['2:00','3:00'] },
			                   { 'date' : '2018-07-20', 'times' : ['2:00'] },
			                   { 'date' : '2018-08-01', 'times' : ['2:00','3:00','4:00','5:00'] }
			       ]
			   }
			 * */

			var scheduleLists = [ 1, 2, 3, 4, 5, 6 ];
			var scheduleList = {
				'repeatDates' : {
					'mon' : {
						'kor' : '월요일',
						'times' : []
					},
					'tue' : {
						'kor' : '화요일',
						'times' : []
					},
					'wed' : {
						'kor' : '수요일',
						'times' : []
					},
					'thu' : {
						'kor' : '목요일',
						'times' : []
					},
					'fri' : {
						'kor' : '금요일',
						'times' : []
					},
					'sat' : {
						'kor' : '토요일',
						'times' : []
					},
					'sun' : {
						'kor' : '일요일',
						'times' : []
					}
				},
				'singleDates' : []
			};

			// 일정 추가 버튼을 눌렀을때
			$('.schedule_add')
					.click(
							function() {
								// 날짜별 탭에서 선택된 date
								var selectedSingleDate = datepicker.getDate();
								var singleDate = moment(
										[ selectedSingleDate.getFullYear(),
												selectedSingleDate.getMonth(),
												selectedSingleDate.getDate() ])
										.format('YYYY-MM-DD');

								// 요일별 탭에서 선택된 시작일
								var selectedStartDatepicker = startDatepicker
										.getDate();
								console.log(selectedSingleDate);

								// 날짜별에서 선택된 시간
								var timeArray = {};
								$
										.each(
												$('.dates .time li.on'),
												function(index, value) {
													var $value = $(value);
													var time = $value
															.data('time');
													// 오전 오후인지 판단
													if ($value
															.parent('ul.time')
															.hasClass('pm')) {
														time += 12;
													}
													var singleDateObject = {
														'date' : singleDate,
														'times' : [ time ]
													};

													// 이미 입력된 날짜인지 확인
													var filterSingleDate = scheduleList.singleDates
															.filter(function(
																	each) {
																return each.date === singleDate;
															});

													if (filterSingleDate.length > 0) {
														console
																.log('filterSingleDate.length > 0:'
																		+ filterSingleDate.length);
														//이미 입력된 날짜일 경우 시간만 업데이트
														filterSingleDate[0].times
																.push(time);
														//시간의 중복 제거, 오름차순 정렬
														filterSingleDate[0].times = _
																.uniq(filterSingleDate[0].times);
														filterSingleDate[0].times
																.sort(function(
																		a, b) {
																	return a
																			- b;
																});
														// 새로 받은 일정으로 배열 수정
														$
																.each(
																		scheduleList.singleDates,
																		function(
																				index,
																				each) {
																			if (each.date === filterSingleDate.date) {
																				each.times = filterSingleDate[0].times;
																			}
																		});
													} else {
														//한번도 입력되지 않는 날짜 인경우
														scheduleList.singleDates
																.push(singleDateObject);
													}

													//날짜별로 오름차순 정렬
													scheduleList.singleDates
															.sort(function(a, b) {
																var result = a.date < b.date ? -1
																		: a.date > b.date ? 1
																				: 0;
																console
																		.log(result);
																return result;
															});
												});

								// 요일별에서 선택된 시간
								$
										.each(
												$('.weeks .time li.on'),
												function(index, value) {
													var $value = $(value);
													var time = $value
															.data('time');
													// 오전 오후인지 판단
													if ($value
															.parents('div')
															.hasClass('pm_time')) {
														time += 12;
													}

													var week = $value.parents(
															'ol').data('week');

													var startDatepicker = moment(
															[
																	selectedStartDatepicker
																			.getFullYear(),
																	selectedStartDatepicker
																			.getMonth(),
																	selectedStartDatepicker
																			.getDate() ])
															.format(
																	'YYYY-MM-DD');

													scheduleList.repeatDates[week].times
															.push(time);
													scheduleList.repeatDates[week].times = _
															.uniq(scheduleList.repeatDates[week].times);
													scheduleList.repeatDates[week].times
															.sort(function(a, b) {
																//console.log(a);
																//console.log(b);
																return a - b;
															});
												});

								console.log(scheduleList);
								var selectedScheduleTemp = _.template($(
										"#selectedScheduleTemp").html());
								var markup = selectedScheduleTemp({
									"scheduleList" : scheduleList
								});
								$(".schedule_view tbody").html(markup);
							})//end schedule_add btn

			// 선택된 날짜 삭제
			$('dl.schedule dd .schedule_view> table').on(
					'click',
					'button',
					function() {
						//단일 일정 관련
						var $td = $(this).parent('td');
						console.log($td.data('type'));
						if ($td.data('type') == 'singleDates') {
							$.each(scheduleList.singleDates, function(index,
									each) {
								if (each.date == $td.data('date')) {
									//해당 시간을 삭제
									console.log(each.times);
									each.times = $.grep(each.times,
											function(v) {
												return v != $td.data('time');
											});
									console.log(each.times);
								}
								;
							});
						} else {
							// 반복 일정 관련
							$.each(scheduleList.repeatDates,
									function(key, each) {
										if (key == $td.data('week')) {
											//해당 시간을 삭제
											each.times = $.grep(each.times,
													function(v) {
														return v != $td
																.data('time');
													});
											console.log(each.times);
										}
										;
									});
						}
						$td.remove();
						console.log(scheduleList);
					}); // end delete btn

			/*textarea 에디터 입력*/
			CKEDITOR.replace('contents', {});
/*
 			var $title = $("input[name=title]");
			var $area1 = $("input[name=area1]");
			var $area2 = $("input[name=area2]");
			var $detailAddress1 = $("#detailAddress1");
			var $detailAddress2 = $("#detailAddress2");
			var $latitude = $("input[name=latitude]");
			var $longitude = $("input[name=longitude]");
			var $category = $("#category");
			var $tag = $("input[name=tag]");			
			var $poom = $("input[name=poom]");			
			var $photo = $("input[name=photo]");
			var $contents = $("input[name=contents]");
			var $scheduleList = $("input[name=scheduleList]");
 */
			/*유효성 검사*/
			$("#registerService").submit(function() { 				
				console.log($title.val());
				console.log($area1.val());
				console.log($area2.val());
				console.log($detailAddress1.val());
				console.log($detailAddress2.val());
				console.log($latitude.val());
				console.log($longitude.val());				
				console.log($category.val());
				console.log($tag.val());
				console.log($poom.val());
				console.log($photo.val());
				console.log($contents.val());
				console.log($scheduleList.val());
 
				
				return false;
			});
			
			function checkTitle() {
				if ($title.val() == undefined || $title.val().length > 0) {
					$title.focus();
					return true
				} 
			}
			

		}); //end $(function())
	</script>
</body>
</html>
