<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>
<HTML>
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<title>보호대상자 정보 수정</title>
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
	style="background: #FFFFFF;">

	<nav class=" navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/bbs/m.home"
					style="margin-left: 0px; padding-bottom: 0px; padding-left: 21px; padding-right: 0px; padding-top: 10px;">
					<img
					src="${pageContext.request.contextPath}/resources/img/icon.png"
					class="d-inline-block align-baseline"
					style="width: 28px; height: 28px;">
				</a> <a class="navbar-brand" href="/bbs/mobile/m.findId.do">아이디 찾기
					결과</a>
			</div>
		</div>
	</nav>


	<div class="container-fluid" style="background: #FFFFFF">
		<div style="background: #FFFFFF" class="col-sm-12 col-md-12">
			<div class="container" style="margin-top: 150px;">
				<div class="thumbnail"
					style="background: #EAEAEA; padding-bottom: 8px; padding-top: 8px; padding-left: 8px; padding-right: 8px;">
					<div class="caption" style="background: #FFFFFF; height: 300px;">

						<spring:hasBindErrors name="user">
							<c:forEach items="${errors.globalErrors}" var="error">
								<spring:message code="${error.code}" />
							</c:forEach>
							</font>
						</spring:hasBindErrors>

						<form:form modelAttribute="userVO" Name='mfindId' Method='post'
							Action='/bbs/mobile/m.findId.do' style="margin-top: 20px;">
							<TABLE border='2' width='600' cellSpacing=0 cellPadding=5
								align=center>

								<div class="form-group" style="margin-top: 90px; margin-left: 7px;">
									<div class="input-group w-100">
										<label style="margin-bottom: 0px;"><span class=""
											style="color: #000000;"></span></label> <span
											class="font-weight-bold text-dark"
											style="padding-right: 10px; margin-left: 10px; font-size: 22px;"><small>&nbsp;</small>회원님의
											아이디는 </span> <label style="margin-bottom: -8px;"><input
											type="text" class="form-control col-12" readonly="readonly"
											value="${userId}" onfocus="this.blur()"
											style="font-size: 22px; border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; webkit-appearance: none; webkit-border-radius: 0; background-color: #FFFFFF; width: 100px; heigt: 100px; padding-bottom: 0px; padding-top: 0px; padding-left: 0px; padding-right: 0px;" /></label>
									</div>
								</div>

								<div class="form-group"
									style="margin-top: 120px; margin-left: 230px;">
									<div class="form-inline">

										<labal style="text-align: right; background-color:#FFFFFF;">
										<a href="m.login.do"> <input class="btn btn-secondary"
											type="button" float: right;"
											value="로그인하기"></a></labal>


									</div>
								</div>
							</TABLE>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<footer class="footer bg-light mt-5">
		<div class="container p-auto">
			<div class="row sticky-bottom justify-content-center">
				<div>
					<p class="text-muted"></p>
				</div>
			</div>
		</div>
	</footer>



</BODY>
</HTML>