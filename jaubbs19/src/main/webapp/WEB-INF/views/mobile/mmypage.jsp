<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<HTML>
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<title>내정보</title>
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
body {
	font: 20px Montserrat, sans-serif;
	line-height: 1.8;
	color: #f5f6f7;
}

p {
	font-size: 16px;
}

.margin {
	margin-bottom: 45px;
}

.bg-1 {
	background-color: #1abc9c; /* Green */
	color: #ffffff;
}

.bg-2 {
	background-color: #474e5d; /* Dark Blue */
	color: #ffffff;
}

.bg-3 {
	background-color: #ffffff; /* White */
	color: #555555;
}

.bg-4 {
	background-color: #2f2f2f; /* Black Gray */
	color: #fff;
}

.container-fluid {
	padding-top: 70px;
	padding-bottom: 70px;
}

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

<body data-spy="scroll" data-target=".navbar" data-offset="50">

	<nav class=" navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/bbs/mobile/m.home"
					style="margin-left: 0px; padding-bottom: 0px; padding-left: 21px; padding-right: 0px; padding-top: 10px;">
					<img
					src="${pageContext.request.contextPath}/resources/img/icon.png"
					class="d-inline-block align-baseline"
					style="width: 28px; height: 28px;">
				</a> <a class="navbar-brand" href="/bbs/mobile/m.loginSuccess.do">내정보</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/bbs/mobile/m.updateLoc.do">컴백홈기기등록</a></li>
					<li><a href="/bbs/mboard/listhome">게시판</a></li>
					<li><a href="../mobile/m.logout.do">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<spring:hasBindErrors name="user">
		<c:forEach items="${errors.globalErrors}" var="error">
			<spring:message code="${error.code}" />
		</c:forEach>
		</font>
	</spring:hasBindErrors>

	<section>
		<div class="container" style="margin-top: 55px;">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<form:form modelAttribute="userVO" Name='mmypage' Method='post'
						Action='/bbs/mobile/m.mypage.do'>
						<input type="hidden" name="mno" value="${userVO.mno}" />

						<hr style="border: solid 10% black;">
						<div class="form-group">
							<div class="input-group w-100">
								<label style="margin-bottom: 0px;"><span
									class="glyphicon glyphicon-heart" style="color: #000000;"></span></label>
								<span class="font-weight-bold text-danger"
									style="padding-right: 10px;"><small>&nbsp;</small></span> <label
									style="margin-bottom: -8px;"><form:input type="text"
										class="form-control col-12" id="userId" path="userId"
										name="userId" readonly="readonly" onfocus="this.blur()"
										style="font-size: 22px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; webkit-appearance:none; webkit-border-radius:0; 
										background-color:#FFFFFF; width:150px;heigt:100px;padding-bottom: 10px;padding-top: 10px;padding-left: 0px;padding-right: 0px;" /></label>
							</div>
						</div>

						<hr style="border: solid 1px gray;">
						<div class="form-group">
							<div class="input-group w-100">
								<label style="margin-bottom: 0px;"><span
									class="glyphicon glyphicon-user" style="color: #000000;"></span></label>
								<span class="font-weight-bold text-danger"
									style="padding-right: 10px;"><small>&nbsp;</small></span> <label
									style="margin-bottom: -8px;"><form:input type="text"
										class="form-control col-12" id="name" path="name" name="name"
										readonly="readonly" onfocus="this.blur()"
										style="font-size: 22px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; webkit-appearance:none; webkit-border-radius:0; 
										background-color:#FFFFFF; width:100px;heigt:100px;padding-bottom: 10px;padding-top: 10px;padding-left: 0px;padding-right: 0px;" /></label>
							</div>
						</div>

						<hr style="border: solid 1px gray;">
						<div class="form-group">
							<div class="input-group w-100">
								<label style="margin-bottom: 0px;"><span
									class="glyphicon glyphicon-envelope" style="color: #000000;"></span></label>
								<span class="font-weight-bold text-danger"
									style="padding-right: 10px;"><small>&nbsp;</small></span> <label
									style="margin-bottom: -8px;"><form:input type="text"
										class="form-control col-12" id="email" path="email"
										name="email" readonly="readonly" onfocus="this.blur()"
										style="font-size: 22px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;
										background-color:#FFFFFF; width:250px;heigt:100px;padding-bottom: 10px;padding-top: 10px;padding-left: 0px;padding-right: 0px;" /></label>
							</div>
						</div>

						<hr style="border: solid 1px gray;">
						<div class="form-group">
							<div class="input-group w-100">
								<label style="margin-bottom: 0px;"><span
									class="glyphicon glyphicon-phone" style="color: #000000;"></span></label>
								<span class="font-weight-bold text-danger"
									style="padding-right: 10px;"><small>&nbsp;</small></span> <label
									style="margin-bottom: -8px;"><form:input type="text"
										class="form-control col-12" id="phone" path="phone"
										name="phone" readonly="readonly" onfocus="this.blur()"
										style="font-size: 22px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;
										background-color:#FFFFFF; width:160px;heigt:100px;padding-bottom: 10px;padding-top: 10px;padding-left: 0px;padding-right: 0px;" /></label>
							</div>
						</div>

						<hr
							style="border: solid 1px gray; margin-top: 15px; margin-bottom: 15px;">
						<div class="form-group">
							<div class="input-group w-100">
								<label style="margin-bottom: 0px;"><span
									class="glyphicon glyphicon-pencil" style="color: #000000;"></span></label>
								<span class="font-weight-bold text-danger"
									style="padding-right: 10px;"><small>&nbsp;</small></span> <a
									href="/bbs/mobile/m.edituser.do"><label
									style="margin-bottom: -8px;"><input type="text"
										class="form-control col-12" id="edit" path="edit"
										value="회원정보 수정" name="edit" readonly="readonly"
										onfocus="this.blur()"
										style="font-size: 22px; border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; background-color: #FFFFFF; width: 130px; heigt: 100px; padding-bottom: 10px; padding-top: 10px; padding-left: 0px; padding-right: 0px;" /></label>
									<label style="margin-bottom: 0px;"><span
										class="glyphicon glyphicon-chevron-right"
										style="color: #000000; margin-left: 210px;"></span></label></a>
							</div>
							<div class="input-group">
								<input type="text" class="form-control col-12" id="edit"
									path="edit" value="휴대전화 등 내 정보를 변경하세요."
									style="font-size: 10px; border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; background-color: #FFFFFF; top: -5; width: 165px; heigt: 100px; padding-bottom: 0px; padding-top: 0px; padding-left: 0px; padding-right: 0px; height: 12px; margin-left: 35px;"
									readonly="readonly" onfocus="this.blur()">
							</div>
						</div>

						<hr
							style="border: solid 1px gray; margin-top: 15px; margin-bottom: 15px;">
						<div class="form-group">
							<div class="input-group w-100">
								<label style="margin-bottom: 0px;"><span
									class="glyphicon glyphicon-map-marker" style="color: #000000;"></span></label>
								<span class="font-weight-bold text-danger"
									style="padding-right: 10px; margin-left: 10px;"><small>&nbsp;</small>기기
									코드</span> <label style="margin-bottom: -8px;"><form:input
										type="text" class="form-control col-12" id="dev_no"
										path="dev_no" name="dev_no" readonly="readonly"
										onfocus="this.blur()"
										style="font-size: 22px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;
										background-color:#FFFFFF; width:80px;heigt:100px;padding-bottom: 10px;padding-top: 10px;padding-left: 0px;padding-right: 0px;" /></label>

								<a href="../location/m.location_list.do?dev_no=${dev_no}"><label><img
										src="${pageContext.request.contextPath}/resources/img/map2.png"
										class="d-inline-block align-baseline"
										style="width: 35px; height: 35px; margin-left: 173px;"></label></a>
							</div>
							<div class="input-group">
								<input type="text" class="form-control col-4" id="edit"
									path="edit" value="기기등록페이지는 오른쪽상단바에서 하실 수 있습니다."
									style="font-size: 10px; border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; background-color: #FFFFFF; top: -5; width: 220px; heigt: 200px; padding-bottom: 0px; padding-top: 0px; padding-left: 0px; padding-right: 0px; height: 12px; margin-left: 35px;"
									readonly="readonly" onfocus="this.blur()"> <input
									type="text" class="form-control col-4" id="edit" path="edit"
									value="위치 조회"
									style="font-size: 10px; border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; background-color: #FFFFFF; top: -5; width: 40px; heigt: 200px; padding-bottom: 0px; padding-top: 0px; padding-left: 0px; padding-right: 0px; height: 12px; margin-left: 116px;"
									readonly="readonly" onfocus="this.blur()">
							</div>
						</div>


						<hr
							style="border: solid 1px gray; margin-top: 15px; margin-bottom: 20px;">
						<div class="form-group">
							<div class="input-group w-100">
								<label><img
									src="${pageContext.request.contextPath}/resources/img/baby.png"
									class="d-inline-block align-baseline"
									style="width: 32px; height: 32px; margin-left: -3px;"></label> <span
									class="font-weight-bold text-danger"
									style="padding-right: 0px; margin-left: 0px;"><small>&nbsp;</small>보호대상자
								</span> <label style="margin-bottom: -8px;"><form:input
										type="text" class="form-control col-12" id="missing"
										path="missing" name="missing" readonly="readonly"
										onfocus="this.blur()"
										style="font-size: 22px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;
										background-color:#FFFFFF; width:80px;heigt:100px;padding-bottom: 0px;padding-top: 0px;padding-left: 0px;padding-right: 0px;" /></label>

								
								<a href="/bbs/mobile/m.updateLocUser.do"><label><img
										src="${pageContext.request.contextPath}/resources/img/edit.png"
										class="d-inline-block align-baseline"
										style="width: 35px; height: 35px; margin-left: 164px;"></label></a>
							</div>
							<div class="input-group">
								<input type="text" class="form-control col-4" id="edit"
									path="edit" value="보호대상자 수정"
									style="font-size: 10px; border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; background-color: #FFFFFF; top: -5; width: 70px; heigt: 200px; padding-bottom: 0px; padding-top: 0px; padding-left: 0px; padding-right: 0px; height: 12px; margin-left: 357px;"
									readonly="readonly" onfocus="this.blur()">
							</div>
						</div>

						<hr
							style="border: solid 1px gray; margin-top: 15px; margin-bottom: 15px;">
						<div class="form-group">
							<div class="input-group w-100">
								<label><img
									src="${pageContext.request.contextPath}/resources/img/memo.png"
									class="d-inline-block align-baseline"
									style="width: 32px; height: 32px; margin-left: -3px;"></label> <span
									class="font-weight-bold text-danger"
									style="padding-right: 0px; margin-left: 0px;"><small>&nbsp;</small>발견자 메세지
								</span> <a href="/bbs/member/LocUser.do?dev_no=${dev_no}"><label><img
										src="${pageContext.request.contextPath}/resources/img/qr.png"
										class="d-inline-block align-baseline"
										style="width: 35px; height: 35px; margin-left: 297px;"></label></a>

								<div class="input-group">
									<div class="input-group">
										<input type="text" class="form-control col-4" id="edit"
											path="edit" value="QR조회 페이지"
											style="font-size: 10px; border: none; border-right: 0px; border-top: 0px; boder-left: 0px; boder-bottom: 0px; background-color: #FFFFFF; top: -5; width: 70px; heigt: 200px; padding-bottom: 0px; padding-top: 0px; padding-left: 0px; padding-right: 0px; height: 12px; margin-left: 357px;"
											readonly="readonly" onfocus="this.blur()">
									</div>
									<label style="margin-bottom: -8px;"><form:textarea
											type="text" class="form-control col-12" id="memo" path="memo"
											name="memo" readonly="readonly" onfocus="this.blur()"
											style="font-size: 14px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;
										background-color:#FFFFFF; width:330px;heigt:300px;padding-bottom: 10px;padding-top: 10px;padding-left: 0px;padding-right: 0px;" /></label>
								</div>
							</div>
						</div>




					</form:form>
				</div>
			</div>
		</div>
	</section>
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