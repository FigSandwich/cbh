<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<title>게시판</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
.navbar {
	padding-top: 15px;
	padding-bottom: 15px;
	border: 0;
	border-radius: 0;
	margin-bottom: 0;
	font-size: 12px;
	letter-spacing: 5px;
}

.navbar-nav  li a:hover {
	color: #1abc9c !important;
}
</style>
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50"
	onload="selectedOptionCheck()" style="background: #F6F6F6;">

	<nav class=" navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href=""
				style="margin-left: 0px; padding-bottom: 0px; padding-left: 21px; padding-right: 0px; padding-top: 10px;">
				<img src="${pageContext.request.contextPath}/resources/img/table.png"
				class="d-inline-block align-baseline"
				style="width: 28px; height: 28px;">
			</a> <a class="navbar-brand" href="/bbs/mboard/listhome">게시판</a>
		</div>
	</div>
	</nav>
	<spring:hasBindErrors name="user">
		<c:forEach items="${errors.globalErrors}" var="error">
			<spring:message code="${error.code}" />
		</c:forEach>
	</spring:hasBindErrors>
	<div style="margin-top: 80px;">
		<iframe name="page" src="/bbs/mboard/list.do" id="page" seamless="true" width="100%"
			height="802px" frameborder="0" scrolling="auto" style="background-color:;"> </iframe>
	</div>




</BODY>
</HTML>