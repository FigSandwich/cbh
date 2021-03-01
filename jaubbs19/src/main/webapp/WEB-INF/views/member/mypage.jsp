<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<HTML>
<HEAD>
<TITLE>내정보</TITLE>

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
				<a class="navbar-brand">컴백홈</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li style="margin-top: 4px;"><a
						href="/bbs/member/loginSuccess.do">내정보</a></li>
					<li style="margin-top: 4px;"><a href="/bbs/board/list.do">게시판</a></li>
					<!--  <li><a href="/bbs/board/list.do">게시판</a></li>-->
					<li style="right: -566px; font-color: #FFFFFF; font-size: 18px;"><a>${userName}님
					</a></li>
					<li
						style="right: -543px; font-size: 13px; padding-top: 1px; margin-top: -4;"><a
						href="/bbs/member/mypage.do?userId=${userId}"><input
							type="button" class="btn btn-outline-primary"
							style="background-color:;" value='내정보'></a></li>
					<li
						style="right: -519px; font-color: skyblue; font-size: 13px; font-color: skyblue; padding-top: 1px; margin-top: -4;"><a
						href="../member/logout.do"><input type="button"
							class="btn btn-outline-primary" style="background-color:;"
							value='로그아웃'></a></li>
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


		<form:form modelAttribute="userVO" Name='mypage' Method='post'
			Action='/bbs/member/mypage.do'>

			<input type="hidden" name="mno" value="${userVO.mno}" />
			<TABLE border='2' width='600' cellSpacing=0 cellPadding=5
				align=center>
				<div class="container"
					style="padding-top: 0px; background: #FFFFFF;">
					<div class="col-md-1" style="background: #FFFFFF; min-height: 1px;">
						<div class="thumbnail"
							style="background: #FFFFFF; min-height: 1px; border: none;">
							<div class="caption"></div>
						</div>
					</div>

					<div class="col-md-5"
						style="background: #FFFFFF; min-height: 250px;">
						<div class="thumbnail"
							style="background: #F6F6F6; min-height: 260px;">
							<h4 style="padding-left: 15px; margin-top: 25px;">프로필</h4>
							<div class="caption">

								<div class="form-group">
									<div class="input-group w-100">
										<label for="name">아이디</label>
									</div>
									<div class="input-group w-100">
										<form:input type="text" class="form-control col-12"
											id="userId" path="userId" name="userId"
											style=" font-weight: 100; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; background-color:#F6F6F6;"
											readonly="readonly" onfocus="this.blur()" />
									</div>
								</div>

								<div class="form-group">
									<div class="input-group w-100">
										<label for="name">이름</label>
									</div>
									<div class="input-group w-100">
										<form:input type="text" class="form-control" id="name"
											path="name" name="name" maxlength="30"
											style="font-weight: 100; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; background-color:#F6F6F6;"
											readonly="readonly" onfocus="this.blur()" />
									</div>
								</div>

							</div>
						</div>
					</div>



					<div class="col-md-5"
						style="background: #FFFFFF; min-height: 250px;">
						<div class="thumbnail"
							style="background: #F6F6F6; min-height: 260px; margin-bottom: 0px;">
							<h4 style="padding-left: 15px; margin-top: 25px;">연락처</h4>
							<div class="caption">
								<div class="form-group">
									<div class="input-group w-100">
										<label for="name">연락처 이메일</label>
									</div>
									<div class="input-group w-100">
										<form:input type="text" class="form-control col-12" id="email"
											path="email" name="email"
											style=" font-weight: 100; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; background-color:#F6F6F6;"
											readonly="readonly" onfocus="this.blur()" />
									</div>
								</div>

								<div class="form-group">
									<div class="input-group w-100">
										<label for="name">휴대전화</label>
									</div>
									<div class="input-group w-100">
										<form:input type="text" class="form-control" id="phone"
											path="phone" name="phone" maxlength="30"
											style="font-weight: 100; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; background-color:#F6F6F6;"
											readonly="readonly" onfocus="this.blur()" />
									</div>
									<label
										style="text-align: right; background-color: #FFFFFF; float: right;">
										<a href="/bbs/member/edituser.do?userId=${userId}"><input
											type='button' style="background-color: #FFFFFF; float: right"
											" value='정보 수정'></a>
									</label>
								</div>
							</div>
						</div>
					</div>


					<div class="col-md-1" style="background: #FFFFFF; min-height: 1px;">
						<div class="thumbnail"
							style="background: #FFFFFF; min-height: 1px; border: none;">
							<div class="caption"></div>
						</div>
					</div>

				</div>
				<div class="container"
					style="padding-top: 0px; background: #FFFFFF;">
					<div class="col-md-1" style="background: #FFFFFF; min-height: 1px;">
						<div class="thumbnail"
							style="background: #FFFFFF; min-height: 1px; border: none; margin-bottom: 0px;">
							<div class="caption"></div>
						</div>
					</div>



					<div class="col-md-5"
						style="background: #FFFFFF; min-height: 357px;">
						<div class="thumbnail"
							style="background: #F6F6F6; min-height: 377px; margin-bottom: 0px;">
							<h4 style="padding-left: 15px; margin-top: 25px;">기기 정보</h4>
							<div class="caption">
								<div class="form-group"
									style="margin-top: 80px; margin-bottom: -50px;">
									<label for="name" style="padding-left: 137px; font-size: 18px;">기기
										코드</label> <label style="margin-bottom: 140px;"><form:input
											type="text" class="form-control" id="dev_no" path="dev_no"
											name="dev_no" placeholder="기기를 등록해주세요" maxlength="20"
											style=" font-weight: 100; font-size:18px; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; background-color:#F6F6F6; padding-top: 6px; width: 199px;"
											readonly="readonly" onfocus="this.blur()" /></label> 
										<label style="text-align: right; background-color: #FFFFFF; float: right;"><iframe src="http://192.168.43.97/gpio/" width="50" height="27"></iframe></label>	
											<label
										style="text-align: right; background-color: #F6F6F6; float: right;">
										<a href="../location/location_list.do?dev_no=${dev_no}"> <input
											type='button' style="background-color: #F6F6F6;"
											value='기기 위치 조회'>
									</a>
									</label> <label
										style="text-align: right; background-color: #FFFFFF; float: right;">
										<a href="/bbs/member/updateLoc.do?userId=${userId}"> <input
											type='button' style="background-color: #FFFFFF;"
											value='기기 등록'></a>
									</label>
								</div>
							</div>
						</div>
					</div>


					<div class="col-md-5"
						style="background: #FFFFFF; min-height: 250px;">
						<div class="thumbnail"
							style="background: #F6F6F6; min-height: 250px;">
							<h4 style="padding-left: 15px; margin-top: 25px;">보호 대상자 조회</h4>
							<div class="caption">


								<div class="form-group">
									<div class="input-group w-100">
										<label for="name">보호자 이름</label>
									</div>
									<div class="input-group w-100">
										<form:input type="text" class="form-control col-12" id="name"
											path="name" name="name"
											style="font-weight: 100;border:none;border-right:0px;border-top:0px;boder-left:0px;boder-bottom:0px;background-color:#F6F6F6;margin-left: 90px;margin-top: -32px;"
											readonly="readonly" onfocus="this.blur()" />
									</div>
								</div>

								<div class="form-group">
									<div class="input-group w-100">
										<label for="name">휴대전화</label>
									</div>
									<div class="input-group w-100">
										<form:input type="text" class="form-control col-12" id="phone"
											path="phone" name="phone"
											style="font-weight: 100;border:none;border-right:0px;border-top:0px;boder-left:0px;boder-bottom:0px;background-color:#F6F6F6;margin-left: 90px;margin-top: -32px;"
											readonly="readonly" onfocus="this.blur()" />
									</div>
								</div>

								<div class="form-group">
									<div class="input-group w-100">
										<label for="name">이메일</label>
									</div>
									<div class="input-group w-100">
										<form:input type="text" class="form-control col-12" id="email"
											path="email" name="email"
											style="font-weight: 100;border:none;border-right:0px;border-top:0px;boder-left:0px;boder-bottom:0px;background-color:#F6F6F6;margin-left: 90px;margin-top: -32px;"
											readonly="readonly" onfocus="this.blur()" />
									</div>
								</div>

								<div class="form-group">
									<div class="input-group w-100">
										<label for="name">보호 대상자</label>
									</div>
									<div class="input-group w-100">
										<form:input type="text" class="form-control col-12"
											id="missing" path="missing" name="missing"
											placeholder="보호 대상자 이름을 입력해주세요"
											style="font-weight: 100;border:none;border-right:0px;border-top:0px;boder-left:0px;boder-bottom:0px;background-color:#F6F6F6;margin-left: 90px;margin-top: -32px;"
											readonly="readonly" onfocus="this.blur()" />
									</div>
								</div>

								<div class="form-group">
									<div class="input-group w-100">
										<label for="name">발견자 메세지</label>
									</div>
									<div class="input-group w-100">
										<form:textarea type="text" class="form-control col-12"
											id="memo" path="memo" name="memo"
											style="resize: none;width:300px;height:80px;margin-left: 87px; margin-top: -32px; border-color:#D5D5D5; background-color:#F6F6F6;"
											readonly="readonly" onfocus="this.blur()" />

										<label
											style="text-align: right; background-color: #FFFFFF; float: right;">
											<a href="/bbs/member/updateLocUser.do?userId=${userId}">
												<input type='button'
												style="background-color: #FFFFFF; margin-top: 5px; padding-top: 3px;"
												value='보호대상자 정보 수정'>
										</a>
										</label>
									</div>
								</div>

							</div>
						</div>
					</div>


					<div class="col-md-1" style="background: #FFFFFF; min-height: 1px;">
						<div class="thumbnail"
							style="background: #FFFFFF; min-height: 1px; border: none;">
							<div class="caption"></div>
						</div>
					</div>
				</div>

			</TABLE>


			<hr size='1' noshade width='600' align="center">

		</form:form>
	</div>





</BODY>
</HTML>