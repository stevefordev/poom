<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>차단 대시보드</title>
<%@ include file="WEB-INF/templates/link.jsp"%>
<link rel="stylesheet" href="css/dashboard_template.css"/>
<link rel="stylesheet" href="css/dashboard_blocklist.css"/>
<style>

</style>
</head>
<body>
<%@ include file="WEB-INF/templates/header.jsp"%>
<%@ include file="WEB-INF/templates/dashboard_template.jsp" %>

<div class="wrap_blocklist">
    <h2 class="screen_out">차단 목록</h2>
    <div class="content_blocklist">
        <ul>

        </ul>
        
    </div><!--//.content_blocklist-->
</div><!--//.wrap_blocklist-->

<%@ include file="WEB-INF/templates/footer.jsp"%>


<!--차단 목록 템플릿-->
<script type="text/template" id="blocklistTmp">
    <li>
        <div class="profile_img"></div>
        <span class="user_nickname">넬준</span>
        <button class="btn_exit">X</button>
    </li>
    <li>
        <div class="profile_img"></div>
        <span class="user_nickname">임윤아</span>
        <button class="btn_exit">X</button>
    </li>
    <li>
       	<div class="profile_img"></div>
        <span class="user_nickname">아이유</span>
        <button class="btn_exit">X</button>
    </li>
    <li>
        <div class="profile_img"></div>
        <span class="user_nickname">넬준</span>
        <button class="btn_exit">X</button>
    </li>
    <li>
        <div class="profile_img"></div>
        <span class="user_nickname">임윤아</span>
        <button class="btn_exit">X</button>
    </li>
    <li>
        <div class="profile_img"></div>
        <span class="user_nickname">아이유</span>
        <button class="btn_exit">X</button>
    </li>
    <li>
        <div class="profile_img"></div>
        <span class="user_nickname">넬준</span>
        <button class="btn_exit">X</button>
    </li>
    <li>
        <div class="profile_img"></div>
        <span class="user_nickname">임윤아</span>
        <button class="btn_exit">X</button>
    </li>
    <li>
        <div class="profile_img"></div>
        <span class="user_nickname">아이유</span>
        <button class="btn_exit">X</button>
    </li>
</script>

<%@ include file="WEB-INF/templates/js.jsp"%>
<script src="js/dashboard_template.js"></script>
<script src="js/dashboard_blocklist.js"></script>
</body>
</html>