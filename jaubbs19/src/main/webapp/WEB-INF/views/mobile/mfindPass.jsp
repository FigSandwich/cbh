<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<img src="${pageContext.request.contextPath}/resources/img/icon.png"
					class="d-inline-block align-baseline"
					style="width: 28px; height: 28px;">
				</a> <a class="navbar-brand" href="/bbs/mobile/m.findId.do">패스워드 찾기</a>
			</div>
		</div>
	</nav>


	<div class="container-fluid" style="background: #FFFFFF">
		<div style="background: #FFFFFF" class="col-sm-12 col-md-12">
			<div class="container" style="margin-top: 150px;">
				<div class="thumbnail"
					style="background: #EAEAEA; padding-bottom: 8px; padding-top: 8px; padding-left: 8px; padding-right: 8px;">
					<div class="caption" style="background: #FFFFFF; height: 390px;">

						<spring:hasBindErrors name="user">
							<c:forEach items="${errors.globalErrors}" var="error">
								<spring:message code="${error.code}" />
							</c:forEach>
							</font>
						</spring:hasBindErrors>

						<form:form modelAttribute="userVO" Name='mfindPass' Method='post'
							Action='/bbs/mobile/m.editPass.do' style="margin-top: 20px;">
							<TABLE border='2' width='600' cellSpacing=0 cellPadding=5
								align=center>
								
								<div class="form-group">
									<label for="name">아이디</label>
									<div class="form-inline">
										<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
										<input type="text" class="form-control" id="name"
											path="name" name="name" value="${name}"
											style="width:300px;" placeholder="아이디를 적어주세요" />
									</div>
								</div>

								<div class="form-group">
									<label for="email">E-mail</label>
									<div class="form-inline">
										<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
										<input type="text" class="form-control" id="email"
											path="email" name="email" value="${email}"
											style="width:300px;" placeholder="이메일을 적어주세요" />
									</div>
								</div>

								<div class="form-group">
									<label for="name">성명</label>
									<div class="form-inline">
										<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
										<input type="text" class="form-control" id="name"
											path="name" name="name" value="${name}" style="width:300px;"
											placeholder="이름을 적어주세요" />
									</div>
								</div>

								<div class="form-group"
									style="margin-top: 45px; margin-left: 190px;">
									<div class="form-inline">

										<labal style="text-align: right; background-color:#FFFFFF;">
										<a href="m.login.do"> <input class="btn btn-secondary"
											type="button" float: right;"
											value="뒤로가기"></a></labal>

										<labal style="text-align: right; background-color:#FFFFFF;">
										<input class="btn btn-secondary" type="submit" float:
											right;"
											value="확인"></labal>

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