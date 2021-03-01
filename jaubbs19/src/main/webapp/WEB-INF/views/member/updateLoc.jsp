<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<HTML>
<HEAD>
<TITLE>기기 등록</TITLE>

<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<META http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f3e52b22aa7a2f504ea39f5cb27cf97a"></script>

</HEAD>

<body class="bg-light">
	<nav class="navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="loginSuccess.do">컴백홈</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li style="margin-top: 4px;"><a href="mypage.do">내정보</a></li>
					<li style="right: -638px; font-color: #FFFFFF; font-size: 18px;"><a>${userName}님
					</a></li>
					<li
						style="right: -615px; font-size: 13px; padding-top: 1px; margin-top: -4;"><a
						href="/bbs/member/mypage.do?userId=${userId}"><input
							type='button' class="btn btn-outline-primary"
							style="background-color: #FFFFFF;" value='내정보'></a></li>
					<li
						style="right: -591px; font-size: 13px; padding-top: 1px; margin-top: -4;"><a
						href="../member/logout.do"><input type='button'
							class="btn btn-outline-primary"
							style="background-color: #FFFFFF;" value='로그아웃'></a></li>
					<!--
					<article class="right">
				    <iframe name="page" src="/bbs/member/loginSuccess.do" seamless="true"
				            width="500px" height="50px" frameborder="0" ;>       
				    </iframe>
					</article>
					 -->

				</ul>
			</div>
		</div>
	</nav>



	<header class="mb-2" style="height: 40px; background: #EAEAEA;">
		<div class="container">
			<div class="navbar-header"></div>
			<ul class="nav navbar-nav">
				<li style="right: -115px; padding-top: 1px; margin-top: 7;"><label>회원정보</label></li>
			</ul>
		</div>
	</header>


	<div class="container" style="padding-top: 10px; background: #FFFFFF;">


		<spring:hasBindErrors name="user">
			<c:forEach items="${errors.globalErrors}" var="error">
				<spring:message code="${error.code}" />
			</c:forEach>
			</font>
		</spring:hasBindErrors>

		<br>
		<form:form modelAttribute="userVO" Name='updateLoc' Method='post'
			Action='/bbs/member/updateLoc.do'>
			<input type="hidden" name="mno" value="${userVO.mno}" />
			<TABLE border='2' width='600' cellSpacing=0 cellPadding=5
				align=center>

				<div class="col-md-3"
					style="background: #FFFFFF; min-height: 250px;">
					<div class="thumbnail"
						style="background: #FFFFFF; min-height: 250px; border: none;">
						<div class="caption"></div>
					</div>
				</div>

				<div class="col-md-5"
					style="background: #FFFFFF; min-height: 300px;">
					<div class="thumbnail"
						style="background: #F6F6F6; min-height: 300px;">
						<h4 style="padding-left: 15px; margin-top: 25px;">기기 등록</h4>
						<div class="caption">
							<div class="form-group">
								<!-- <label for="userId">아이디</label>-->
								<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
								<div class="form-inline">
									<form:input type="hidden" class="form-control" id="userId"
										path="userId" name="userId" maxlength="10" />
								</div>
							</div>
							<div class="form-group">
								<label for="passwd">비밀번호</label>
								<div class="form-inline">
									<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
									<form:password class="form-control text-truncate"
										style="width:300px;" id="passwd" path="passwd" name="passwd"
										placeholder="비밀번호를 써주세요" minlength="6" maxlength="16" />
								</div>
							</div>

							<div class="form-group">
								<label for="name">컴백홈 기기등록</label>
								<div class="form-inline">
									<span class="font-weight-bold text-danger"><small>&nbsp;</small></span>
									<form:input type="text" class="form-control"
										style="width:300px;" id="dev_no" path="dev_no" name="dev_no"
										maxlength="30" placeholder="기기코드를 써주세요" />

									<labal style="text-align: right; background-color:#FFFFFF;">
									<input type='submit'
										style="background-color: #FFFFFF; float: right; margin-top: 53px; padding-top: 2px; padding-bottom: 1px; margin-right: 10px;"
										value='등록'></labal>

									<labal style="text-align: right; background-color:#FFFFFF;">
									<a href="mypage.do"> <input type='button'
										style="background-color: #FFFFFF; float: right; margin-top: 19px; margin-bottom: 0px; margin-right: 4px;"
										value="뒤로가기"></a></labal>

								</div>
							</div>

							<TR>
							</TR>
						</div>
					</div>
				</div>


				<div class="col-md-4"
					style="background: #FFFFFF; min-height: 250px;">
					<div class="thumbnail"
						style="background: #FFFFFF; min-height: 250px; border: none;">
						<div class="caption"></div>
					</div>
				</div>





			</TABLE>

		</form:form>

	</div>
</BODY>
</HTML>