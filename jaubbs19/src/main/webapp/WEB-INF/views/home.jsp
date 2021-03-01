<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<title>Come Back Home</title>
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

	<!-- Navbar -->
	<nav class=" navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/bbs/">컴백홈</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#section1">메인</a></li>
					<li><a href="#section2">공지사항</a></li>
					<li><a href="board/list.do">게시판</a></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">MORE <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="member/login.do">로그인</a></li>
							<li><a href="member/joinForm.do">회원가입</a></li>
							<li><a href="admin/adminlogin.do">관리자모드</a></li>
							<li><a data-toggle="modal" data-target="#myModal">고객지원</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- First Container -->
	<div class="container-fluid bg-1 text-center" id="section1">
		<br> <br>
		<h3 class="margin">Come back home</h3>
		<img src="http://168.126.146.39/20142461/bootstrap_res/icon.png"
			class="img-responsive img-circle margin" style="display: inline"
			alt="logo" width="350" height="350">
		<h3>업계 1위의 위치 조회 시스템</h3>
	</div>

	<!-- Second Container -->
	<div class="container-fluid bg-2 text-center" id="section2"
		style="padding-top:10px; padding-bottom: 10px; padding-right: 18px;">
		<iframe name="page" src="/bbs/admin/notice.do" id="page" seamless="true" width="100%"
			height="100%" frameborder="0" scrolling="auto"
			style="background-color: "> </iframe>
		<!--
		<h3 class="margin">Come back home...</h3>
		<a href="#moreView" class="btn btn-info" data-toggle="collapse">more view</a>	 
		<br>
		<br>
		<br>
		<div id="moreView" class="collapse">

			<p>is... a part of 2019 jangan capstone project. It will make by
				team Joo+1. A few people know value of this project.</p>
			<br> <br> <a href="addrbook_list.do"
				class="btn btn-default btn-lg"> <span
				class="glyphicon glyphicon-search"></span> Search
			</a>
		</div>
		-->

	</div>


	<!-- Third Container (Grid)
	<div class="container-fluid bg-3 text-center" id="section3">
		<h3 class="margin">How can we find location?</h3>
		<br>
		<div class="row">
			<div class="col-md-4 col-sm-12">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

					
					<div class="carousel-inner">
						<div class="item active">
							<img src="http://168.126.146.39/20142461/bootstrap_res/logo1.jpg"
								alt="Arduino" style="width: 100%;">
						</div>

						<div class="item">
							<img src="http://168.126.146.39/20142461/bootstrap_res/logo1.jpg"
								alt="Arduino" style="width: 100%;">
						</div>

						<div class="item">
							<img src="http://168.126.146.39/20142461/bootstrap_res/logo1.jpg"
								alt="Arduino" style="width: 100%;">
						</div>
					</div>

					
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
				<br>
				<p>Arduino can get location via gps moudle.</p>
				<br>
			</div>
			<div class="col-md-4 col-sm-12">

				<div id="myCarousel1" class="carousel slide" data-ride="carousel">
					
					<ol class="carousel-indicators">
						<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel1" data-slide-to="1"></li>
						<li data-target="#myCarousel1" data-slide-to="2"></li>
					</ol>

					
					<div class="carousel-inner">
						<div class="item active">
							<img src="http://168.126.146.39/20142461/bootstrap_res/logo2.jpg"
								alt="LoRa" style="width: 100%;">
						</div>

						<div class="item">
							<img src="http://168.126.146.39/20142461/bootstrap_res/logo2.jpg"
								alt="LoRa" style="width: 100%;">
						</div>
						<div class="item">
							<img src="http://168.126.146.39/20142461/bootstrap_res/logo2.jpg"
								alt="LoRa" style="width: 100%;">
						</div>
					</div>

					
					<a class="left carousel-control" href="#myCarousel1"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel1"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
				<br>
				<p>Arduino can send location to server using LoRa moulde</p>
				<br>
			</div>
			<div class="col-md-4 col-sm-12">

				<div id="myCarousel2" class="carousel slide" data-ride="carousel">
			
					<ol class="carousel-indicators">
						<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel2" data-slide-to="1"></li>
						<li data-target="#myCarousel2" data-slide-to="2"></li>
					</ol>

					
					<div class="carousel-inner">
						<div class="item active">
							<img src="http://168.126.146.39/20142461/bootstrap_res/logo3.jpg"
								alt="Android" style="width: 100%;">
						</div>

						<div class="item">
							<img src="http://168.126.146.39/20142461/bootstrap_res/logo3.jpg"
								alt="Android" style="width: 100%;">
						</div>

						<div class="item">
							<img src="http://168.126.146.39/20142461/bootstrap_res/logo3.jpg"
								alt="Android" style="width: 100%;">
						</div>
					</div>

					
					<a class="left carousel-control" href="#myCarousel2"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel2"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
				<br>
				<p>I am so hungry</p>
				<br>
			</div>
		</div>
	</div>
-->
	<!-- Footer -->
	<footer class="container-fluid bg-4 text-center">

		<p>20142461 Joohyeong Park</p>
	</footer>




	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
			<div class="modal-header"
						style="padding: 35px 50px; background-color: #58b358; text-align: center; color: white;">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h2>
							<span class="glyphicon glyphicon-info-sign"></span> 고객지원
						</h2>
					</div>
				<form name="form" method="post" action="insertcustomer.do">
				<input type=hidden name="action" value="insert">
					<div class="modal-body" style="padding: 40px 50px;">
					
					<div>
						<table class="table table-hober">
					
					

						<div class="form-group">
							<label for="usrname" style="color: gray;"><span
								class="glyphicon glyphicon-user"></span> E-mail</label> <input type="text"
								class="form-control" id="name" name="name" placeholder="Enter E-mail" required id="id">
						</div>
						<div class="form-group">
							<label for="psw" style="color: gray;"><span
								class="glyphicon glyphicon-eye-open"></span> 내용</label>
							<textarea class="form-control" rows="4" id="memo" name="memo"placeholder="문의내용" required id="id"></textarea>
						</div>
						
						<!--  
						<div class="form-group">
						<button type="button" class="btn btn-danger btn-default pull-left"
							data-dismiss="modal">
							<span class="glyphicon glyphicon-remove"></span> Cancel
						</button></div>

						<div class="form-group">
						<button type="submit"
							class="btn btn-primary btn-default pull-right">
							<span class="glyphicon glyphicon-envelope"></span> Send
						</button></div>-->
					
					</tbody>
						</table>
					</div>
					
					<div class="modal-footer">
					
						<button type="button" class="btn btn-danger btn-default pull-left"
							data-dismiss="modal">
							<span class="glyphicon glyphicon-remove"></span> Cancel
						</button>

						<button type="submit"
							class="btn btn-primary btn-default pull-right">
							<span class="glyphicon glyphicon-envelope"></span> Send
						</button>

					</div>
				</form>
			</div>
		</div>
	</div>






	<!-- google api key AIzaSyDqG8w93S3CsM_n4GE2JrW_1hGt5ChRaXg -->



</body>
</html>