<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="js/jquery.js"></script>
<script src="js/underscore-min.js"></script>
<script>
	_.templateSettings = {
		interpolate : /\<\@\=(.+?)\@\>/gim,
		evaluate : /\<\@(.+?)\@\>/gim,
		escape : /\<\@\-(.+?)\@\>/gim
	};
</script>
<script src="js/header.js"></script>