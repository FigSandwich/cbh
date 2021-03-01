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
				<a class="navbar-brand" href="adminpage.do">컴백홈위치추적</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a>관리자모드</a></li>
					<li style="right: -566px; font-color: #FFFFFF; font-size: 18px;"><a>${adminName}님
					</a></li>
					<li
						style="right: -543px; font-size: 13px; padding-top: 1px; margin-top: -4;"><a
						href="/bbs/admin/adminpage.do"><input
							type='button' class="btn btn-outline-primary" style="background-color: #FFFFFF;" value='관리자모드'></a></li>
					<li
						style="right: -519px; font-size: 13px; padding-top: 1px; margin-top: -4;"><a
						href="../admin/adminlogout.do"><input type='button' class="btn btn-outline-primary"
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
				<li style="right: -115px; padding-top: 1px; margin-top: 7;"><label>회원관리&고객문의</label></li>
			</ul>
		</div>
	</header>


	<div class="container" style="padding-top: 10px; background: #FFFFFF;">


		<spring:hasBindErrors name="admin">
			<c:forEach items="${errors.globalErrors}" var="error">
				<spring:message code="${error.code}" />
			</c:forEach>
			</font>
		</spring:hasBindErrors>

		<br>
		<form:form modelAttribute="AdminVO" Name='adminpage' Method='post'
			Action='/bbs/admin/adminpage.do'>

			<TABLE border='2' width='600' cellSpacing=0 cellPadding=5
				align=center>
				
			<div class="col-md-12"
					style="background: #FFFFFF; min-height: 290px;">
					<div class="thumbnail"
						style="background: #EAEAEA; min-height: 290px; border: none; overflow-x:hidden;">
						
			<iframe name="page" src="/bbs/member/userlist.do" seamless="true"
            width="1120px" height="290px" frameborder="0" scrolling="auto">       
 			 </iframe>					
					</div>
				</div>	
				
				
			<div class="col-md-12"
					style="background: #FFFFFF; min-height: 210px;">
					<div class="thumbnail"
						style="background: #EAEAEA; min-height: 210px; border: none; overflow-x:hidden;">
						
			<iframe name="page" src="/bbs/customer.do" seamless="true"
            width="1120px" height="200px" frameborder="0" scrolling="auto">       
 			 </iframe>					
					</div>
				</div>


			</TABLE>


			<hr size='1' noshade width='600' align="center">

		</form:form>





	</div>
</BODY>
</HTML>