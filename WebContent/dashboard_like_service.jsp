<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>찜 대시보드</title>
<%@ include file="WEB-INF/templates/link.jsp"%>
<link rel="stylesheet" href="css/dashboard_template.css" />
<link rel="stylesheet" href="css/dashboard_like_service.css" />
<link rel="stylesheet" href="css/slick/slick.css" />
<link rel="stylesheet" href="css/slick/slick-theme.css" />
<link rel="stylesheet" href="css/card_giver_level_second.css" />
<link rel="stylesheet" href="css/card_taker_level_second.css" />
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
	<%@ include file="WEB-INF/templates/card_level_second.jsp"%>
	<%@ include file="WEB-INF/templates/js.jsp"%>	
	<script src="js/dashboard_template.js"></script>
	<script src="js/slick/slick.min.js"></script>
	<script src="js/slick/slick_helper.js?date=201804291"></script>
	<script src="js/card_util.js?date=201804283"></script>	
	<script src="js/dashboard_like_service.js"></script>		
	<script>

  </script>
</body>
</html>