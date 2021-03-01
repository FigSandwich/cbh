<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<HTML>
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<title>회원정보 수정</title>
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
				<a class="navbar-brand" href=""
					style="margin-left: 0px; padding-bottom: 0px; padding-left: 21px; padding-right: 0px; padding-top: 10px;">
					<img src="${pageContext.request.contextPath}/resources/img/pen.png"
					class="d-inline-block align-baseline"
					style="width: 28px; height: 28px;">
				</a> <a class="navbar-brand" href="/bbs/mobile/m.medituser.do">회원정보
					수정</a>
			</div>
		</div>
	</nav>


	<div class="container-fluid" style="background: #FFFFFF">
		<div style="background: #FFFFFF" class="col-sm-12 col-md-12">
			<div class="container" style="margin-top: 100px;">
				<div class="thumbnail"
					style="background: #EAEAEA; padding-bottom: 8px; padding-top: 8px; padding-left: 8px; padding-right: 8px;">
					<div class="caption" style="background: #FFFFFF; height: 650px;">

						<spring:hasBindErrors name="user">
							<c:forEach items="${errors.globalErrors}" var="error">
								<spring:message code="${error.code}" />
							</c:forEach>
							</font>
						</spring:hasBindErrors>
						<br>
						<form:form modelAttribute="userVO" Name='editForm' Method='post'
							Action='/bbs/mobile/m.edituser.do' style="margin-top: px;">
							<input type="hidden" name="mno" value="${userVO.mno}" />
							<TABLE border='2' width='600' cellSpacing=0 cellPadding=5
								align=center>
								
								<div class="form-group">
									<label for="userId">아이디</label>
									<div class="form-inline">
										<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
										<form:input type="text" class="form-control text-truncate"
											style="width:300px;" id="userId" path="userId" name="userId"
											placeholder="" minlength="" maxlength="" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="passwd">비밀번호</label>
									<div class="form-inline">
										<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
										<form:password class="form-control text-truncate"
											style="width:300px;" id="passwd" path="passwd" name="passwd"
											placeholder="6~16자의 영문, 숫자, 특수기호를 입력하세요" minlength="6" maxlength="16" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="name">이름</label>
									<div class="form-inline">
										<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
										<form:input type="text" class="form-control text-truncate"
											style="width:300px;" id="name" path="name" name="name"
											placeholder="" minlength="" maxlength="" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="jumin">주민번호</label>
									<div class="form-inline">
										<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
										<form:input type="text" class="form-control text-truncate"
											style="width:300px;" id="jumin" path="jumin" name="jumin"
											placeholder="" minlength="" maxlength="" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="phone">휴대전화</label>
									<div class="form-inline">
										<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
										<form:input type="text" class="form-control text-truncate"
											style="width:300px;" id="phone" path="phone" name="phone"
											placeholder="" minlength="" maxlength="" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="email">E-mail</label>
									<div class="form-inline">
										<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
										<form:input type="text" class="form-control text-truncate"
											style="width:300px;" id="email" path="email" name="email"
											placeholder="이메일을 입력하세요" minlength="" maxlength="" />
									</div>
								</div>
								
								<div class="form-group"
									style="margin-top: 45px; margin-left: 190px;">
									<div class="form-inline">

										<labal style="text-align: right; background-color:#FFFFFF;">
										<a href="m.mypage.do"> <input class="btn btn-secondary"
											type="button" float: right;"
											value="뒤로가기"></a></labal>

										<labal style="text-align: right; background-color:#FFFFFF;">
										<input class="btn btn-secondary" type="submit" float:
											right;"
											value="등록"></labal>

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