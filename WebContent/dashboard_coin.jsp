<%@page import="com.coddington.poom.dao.TagsDAO"%>
<%@page import="com.coddington.poom.vo.Tag"%>
<%@page import="com.coddington.poom.vo.CoinTransaction"%>
<%@page import="java.util.List"%>
<%@page import="com.coddington.poom.dao.CoinTransactionsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<CoinTransaction> list = CoinTransactionsDAO.selectList();
	List<CoinTransaction> outcomeList = CoinTransactionsDAO.selectListOutcome();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>템플릿</title>
<%@ include file="WEB-INF/templates/link.jsp"%>
<link rel="stylesheet" href="css/chart/billboard.css" />
<link rel="stylesheet" href="css/popup_coin_exchange.css" />
<link rel="stylesheet" href="css/popup_coin_charge.css" />
<link rel="stylesheet" href="css/dashboard_coin.css" />
<link rel="stylesheet" href="css/dashboard_template.css" />
<style>
</style>
</head>
<body>
	<%@ include file="WEB-INF/templates/header.jsp"%>	
		<%@ include file="/WEB-INF/templates/dashboard_template.jsp"%>
		<div id="coinWrap">
			<h2 class="screen_out">코인페이지</h2>
			<div id="holdingCoinWrap">
				<h3 class="screen_out">보유 코인</h3>
				<div id="holdingCoinBox">
					보유 <span id="currentHoldingCoinAmount">10</span> 코인
				</div>
				<button class="btn exchange">환전하기</button>
				<div id="coinExchangePopupWrap">
					<div id="coinExchangePopup">
						<h4>코인 환전 신청</h4>
						<div id="holdingCoin">
							보유 코인 l <span id="holdingCoinAmount">999,000</span> 코인
						</div>
						<div id="notes">최초 신청 시 원천징수 세금 신고를 위한 예금주와 동일한 신분증 사본을 메일
							또는 팩스로 발송 후 신청하시기 바랍니다. 신분증 미도착 시 신청 취소조치 됩니다.</div>
						<div id="contact">E-mail: poom@coddington.com l Fax :
							02-0000-0000</div>
						<form id="coinExchangeForm" action="" method="post">
							<fieldset>
								<legend class="screen_out">입력폼</legend>
								<div>
									<div>
										<label for="exchangingCoinAmount">신청 코인</label> <input
											id="exchangingCoinAmount" placeholder="환전할 코인 금액을 입력하시오" />

									</div>
									<div>
										<label for="accountHolder">예금주</label> <input
											id="accountHolder" placeholder="예금주를 입력하시오" />

									</div>
									<div>
										<label for="bank">은행명</label> <select id="bank">
											<option>우리</option>
											<option>신한</option>
											<option>농협</option>
											<option>국민</option>
										</select>
									</div>
									<div>
										<label for="accountNumber">계좌번호</label> <input
											id="accountNumber" placeholder="계좌번호를 입력하시오" />
									</div>
								</div>
								<button type="submit" id="coinExchangeBtn">신청 완료</button>
							</fieldset>
						</form>
						<!--<button id="popupExitBtn"><i class="fas fa-times"></i></button>-->
					</div>
					<!--//#cointExchangePopup-->
				</div>
				<!--//#cointExchangePopupWrap-->
				<button class="btn charge">충전하기</button>
				<div id="coinChargePopupWrap">
					<div id="coinChargePopup">
						<h4>코인 충전 신청</h4>
						<ul>
							<li>
								<div class="moneyAmount">5,000원</div>
								<div class="coinAmount">5,000 코인</div>
								<button class="btn purchase">충전</button>
							</li>
							<li>
								<div class="moneyAmount">
									<span class="originalAmount">10,000원</span> <span
										class="discountAmount">9,000원</span> <span
										class="discountPercent">10&percnt; <i
										class="fas fa-long-arrow-alt-down"></i>
									</span>
								</div>
								<div class="coinAmount">10,000 코인</div>
								<button class="btn purchase">충전</button>
							</li>
							<li>
								<div class="moneyAmount">
									<span class="originalAmount">50,000원</span> <span
										class="discountAmount">40,000원</span> <span
										class="discountPercent">20&percnt; <i
										class="fas fa-long-arrow-alt-down"></i>
									</span>
								</div>
								<div class="coinAmount">50,000 코인</div>
								<button class="btn purchase">충전</button>
							</li>
							<li>
								<div class="moneyAmount">
									<span class="originalAmount">100,000원</span> <span
										class="discountAmount">70,000원</span> <span
										class="discountPercent">30&percnt; <i
										class="fas fa-long-arrow-alt-down"></i>
									</span>
								</div>
								<div class="coinAmount">100,000 코인</div>
								<button class="btn purchase">충전</button>
							</li>
							<li>
								<div class="moneyAmount">
									<span class="originalAmount">200,000원</span> <span
										class="discountAmount">120,000원</span> <span
										class="discountPercent">40&percnt; <i
										class="fas fa-long-arrow-alt-down"></i>
									</span>
								</div>
								<div class="coinAmount">200,000 코인</div>
								<button class="btn purchase">충전</button>
							</li>
						</ul>
					</div>
					<!--//#coinChargePopup-->
				</div>
				<!--//#coinChargePopupWrap-->
			</div>
			<div id="coinGraphWrap">
				<h3 class="screen_out">코인 그래프</h3>
				<div class="coin_graph" id="MultipleXYLineChart"></div>
			</div>
			<!--#coinGraphWrap-->
			<div id="coinHistoryWrap">
				<h3 class="screen_out">코인 내역</h3>
				<ul id="coinHistoryGnb">
					<li><a class="history_gnb on" id="coinIncomeHistoryGnb"
						href="#">수익 내역</a></li>
					<li><a class="history_gnb" id="coinOutcomeHistoryGnb" href="#">지출
							내역</a></li>
					<li><a class="history_gnb" id="coinTransferHistoryGnb"
						href="#">충전/환전 내역</a></li>
				</ul>
				<div id="coinHistoryTableBox">
					<table class="history_table on coin_income">
						<thead>
							<tr>
								<th class="row_coin">코인</th>
								<th class="row_nickname">닉네임</th>
								<th class="row_service">준 품</th>
								<th class="row_date">날짜</th>
							</tr>
						</thead>
						<tbody>
							<%
								for (int transactionIdx = 0;transactionIdx < 6; transactionIdx ++) {
									List<Tag> tags = TagsDAO.selectListByServiceNo(list.get(transactionIdx).getServiceNo());
							%>
							<tr>
								<td><%=list.get(transactionIdx).getCoin()%></td>
								<td><%=list.get(transactionIdx).getNickname()%></td>
								<td>
									<%
									for (int i = 0; i < 3; i++) {
										out.print("#" + tags.get(i).getName() + " ");
									}
									%>
								</td>
								<td><%=list.get(transactionIdx).getRegDate()%></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
					<table class="history_table coin_outcome">
						<thead>
							<tr>
								<th class="row_coin">코인</th>
								<th class="row_nickname">닉네임</th>
								<th class="row_service">받은 품</th>
								<th class="row_date">날짜</th>
							</tr>
						</thead>
						<tbody>
							<%
								for (CoinTransaction coinTransaction : outcomeList) {
									List<Tag> tags = TagsDAO.selectListByServiceNo(coinTransaction.getServiceNo());
							%>
							<tr>
								<td><%=coinTransaction.getCoin()%></td>
								<td><%=coinTransaction.getNickname()%></td>
								<td>
									<%
										for (int i = 0; i < 3; i++) {
												out.print("#" + tags.get(i).getName() + " ");
											}
									%>
								</td>
								<td><%=coinTransaction.getRegDate()%></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
					<table class="history_table coin_transfer">
						<thead>
							<tr>
								<th class="row_kind">종류</th>
								<th class="row_coin">코인</th>
								<th class="row_money">돈</th>
								<th class="row_date">날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>충전</td>
								<td>5,000코인</td>
								<td>5,000원</td>
								<td>2018-03-26 14:20:30</td>
							</tr>
							<tr>
								<td>환전</td>
								<td>5,000코인</td>
								<td>5,000원</td>
								<td>2018-03-26 14:20:30</td>
							</tr>
							<tr>
								<td>충전</td>
								<td>5,000코인</td>
								<td>5,000원</td>
								<td>2018-03-26 14:20:30</td>
							</tr>
							<tr>
								<td>충전</td>
								<td>5,000코인</td>
								<td>5,000원</td>
								<td>2018-03-26 14:20:30</td>
							</tr>
							<tr>
								<td>충전</td>
								<td>5,000코인</td>
								<td>5,000원</td>
								<td>2018-03-26 14:20:30</td>
						</tbody>
					</table>
				</div>
		
			<!--#coinHistoryhWrap-->
		</div>
		<!--#coinWrap-->
		<%@ include file="WEB-INF/templates/footer.jsp"%>
		<%@ include file="WEB-INF/templates/js.jsp"%>
		<script src="js/dashboard_template.js"></script>
		<script src="https://d3js.org/d3.v4.min.js"></script>
		<script src="js/chart/billboard.js"></script>
		<script src="js/dashboard_coin.js"></script>
</body>
</html>