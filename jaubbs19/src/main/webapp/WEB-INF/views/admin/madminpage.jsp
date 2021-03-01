<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<HTML>
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<title>관리자</title>
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
				<a class="navbar-brand" href=""
					style="margin-left: 0px; padding-bottom: 0px; padding-left: 21px; padding-right: 0px; padding-top: 10px;">
					<img src="${pageContext.request.contextPath}/resources/img/key.png"
					class="d-inline-block align-baseline"
					style="width: 28px; height: 28px;">
				</a> <a class="navbar-brand" href="/bbs/admin/m.adminpage.do">관리자모드</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a data-toggle="modal" data-target="#myModal">공지사항 등록</a></li>
					<li><a href="../admin/m.adminlogout.do">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container-fluid" style="background: #FFFFFF">
		<div style="background: #FFFFFF" class="col-sm-12 col-md-12">

			<div class="container" style="margin-top: 40px;">
				<div class="thumbnail"
					style="background: #EAEAEA; padding-bottom: 8px; padding-top: 8px; padding-left: 8px; padding-right: 8px;">
					<div class="caption"
						style="background: #FFFFFF; height: 160px; padding-top: 10px;">
						<iframe name="page" src="/bbs/mobile/m.userlist.do"
							seamless="true" width="330px" height="150px" frameborder="0"
							scrolling="auto"> </iframe>
					</div>
				</div>
			</div>

			<div class="container" style="margin-top: 5px;">
				<div class="thumbnail"
					style="background: #EAEAEA; padding-bottom: 8px; padding-top: 8px; padding-left: 8px; padding-right: 8px;">
					<div class="caption" style="background: #FFFFFF; height: 400px;">
						<iframe name="page" src="/bbs/mobile/m.customer.do" id="page"
							seamless="true" width="100%" height="390px" frameborder="0"
							scrolling="auto"> </iframe>
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


	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header"
					style="padding: 35px 50px; background-color: #58b358; text-align: center; color: white;">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h2>
						<span class="glyphicon glyphicon-info-sign"></span> 공지사항
					</h2>
				</div>
				<form name="form" method="post" action="insertnotice.do">
					<input type=hidden name="action" value="insert">
					<div class="modal-body" style="padding: 20px 20px;">

						<div>
							<table class="table table-hober">
								<div class="form-group">
									<label for="psw" style="color: gray;"><span></span></label>
									<textarea class="form-control" rows="8" id="notice" name="notice"
										placeholder="공지내용" required id="id"></textarea>
								</div>

								</tbody>
							</table>
						</div>

						<div class="modal-footer">

							<button type="button"
								class="btn btn-danger btn-default pull-left"
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



</BODY>
</HTML>